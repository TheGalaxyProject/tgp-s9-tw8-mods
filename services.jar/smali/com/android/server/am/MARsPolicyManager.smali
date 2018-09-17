.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;,
        Lcom/android/server/am/MARsPolicyManager$BigData;,
        Lcom/android/server/am/MARsPolicyManager$MARsPackageStat;,
        Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;,
        Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;,
        Lcom/android/server/am/MARsPolicyManager$Policy;,
        Lcom/android/server/am/MARsPolicyManager$PolicyException;,
        Lcom/android/server/am/MARsPolicyManager$TrafficStat;
    }
.end annotation


# static fields
.field public static final APPLOCKER_KILL_TYPE:I = 0xc

.field public static final ARES_KILL_TYPE:I = 0x2

.field public static final AUTORUN_KILL_TYPE:I = 0xa

.field static App_StartUp_History:Z = false

.field static DEBUG_ENG:Z = false

.field static DEBUG_MARs:Z = false

.field public static final DEFAULT_KILL_TYPE:I = 0x9

.field private static final DEV_PATH_FREEZE:Ljava/lang/String; = "/dev/freezer/frozen/cgroup.procs"

.field private static final DEV_PATH_UNFREEZE:Ljava/lang/String; = "/dev/freezer/thaw/cgroup.procs"

.field public static final FREECESS_KILL_TYPE:I = 0x1a

.field private static final FREECESS_SINGAL_FREEZE:I = 0x1

.field private static final FREECESS_SINGAL_UNFREEZE:I = 0x2

.field private static final FREEZED_PACKAGES_LIMIT:I

.field static GlobalModelWithChinaSIM:Z = false

.field static GraceUI_Enable:Z = false

.field private static HQM_ENABLE:Z = false

.field private static final IMPORTANT_PKG_BIGDATA_FLAG:I = 0x4f1b

.field private static final IMPORTANT_PKG_DUMP_FLAG:I = 0x3fff

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x476c

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_ARES:I = 0xffff

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_AUTORUN:I = 0xfff9

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FORCE:I = 0x1f40

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_FREECESS:I = 0xfff9

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_SBIKE:I = 0x476c

.field public static final IMPORTANT_PKG_TYPES_COLLECTION_FOR_UDS:I = 0x476c

.field private static final IMPORTANT_PKG_TYPE_ACTIVE_MUSIC_RECORD:I = 0x40

.field private static final IMPORTANT_PKG_TYPE_ACTIVE_TRAFFIC:I = 0x80

.field private static final IMPORTANT_PKG_TYPE_DEFAULT_APP:I = 0x400

.field private static final IMPORTANT_PKG_TYPE_DEVICE_ADMIN:I = 0x100

.field private static final IMPORTANT_PKG_TYPE_HOME:I = 0x800

.field private static final IMPORTANT_PKG_TYPE_LATEST_PROTECTED:I = 0x2

.field private static final IMPORTANT_PKG_TYPE_LOCK_SCREEN:I = 0x2000

.field private static final IMPORTANT_PKG_TYPE_MAX:I = 0x8000

.field private static final IMPORTANT_PKG_TYPE_NO_APP_ICON:I = 0x10

.field private static final IMPORTANT_PKG_TYPE_ONGOING_NOTIFICATION:I = 0x4

.field private static final IMPORTANT_PKG_TYPE_RECENTLY_USED:I = 0x1

.field private static final IMPORTANT_PKG_TYPE_RUNNING_LOCATION:I = 0x8000

.field private static final IMPORTANT_PKG_TYPE_SYSTEM:I = 0x4000

.field private static final IMPORTANT_PKG_TYPE_TOP:I = 0x1000

.field private static final IMPORTANT_PKG_TYPE_VPN_SERVICE:I = 0x20

.field private static final IMPORTANT_PKG_TYPE_WALLPAPER:I = 0x200

.field private static final IMPORTANT_PKG_TYPE_WIDGET:I = 0x8

.field private static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static IsChinaModel:Z = false

.field public static final KILL_TYPE_DEFAULT:I = 0x1

.field public static final KILL_TYPE_MAX:I = 0x10

.field public static final KILL_TYPE_PKG_FREEZE:I = 0x10

.field public static final KILL_TYPE_PKG_RESTART:I = 0x8

.field public static final KILL_TYPE_SKIP_ADJ_NONE:I = 0x2

.field public static final KILL_TYPE_SKIP_ADJ_UNDER_SERVICE:I = 0x4

.field static MARs_DEBUG_ENABLE:Z = false

.field static MARs_ENABLE:Z = false

.field public static final POLICY_NUM_APPLOCKER:I = 0x1

.field public static final POLICY_NUM_ARES:I = 0x3

.field public static final POLICY_NUM_AUTORUN:I = 0x2

.field public static final POLICY_NUM_BIGDATA:I = 0x7

.field public static final POLICY_NUM_FORCE:I = 0x0

.field public static final POLICY_NUM_FREECESS:I = 0x4

.field public static final POLICY_NUM_SBIKE:I = 0x6

.field public static final POLICY_NUM_UDS:I = 0x5

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING:I = 0xc

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING_AND_NOTUSEDRECENTLY:I = 0xd

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_AUTO_OPTIMIZING:I = 0xa

.field public static final POLICY_TARGET_CATEGORY_FREECESS:I = 0x19

.field public static final POLICY_TARGET_CATEGORY_GLOBAL_AUTORUN_OFF:I = 0x18

.field public static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field public static final POLICY_TARGET_CATEGORY_TURNED_OFF:I = 0xb

.field public static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field private static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static RESPRELOAD_ENABLE:Z = false

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x15158110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_ARES:I = 0x101c0888

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_AUTORUN:I = 0x101c0888

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_FREECESS:I = 0x101c0880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SBIKE:I = 0x1000112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_UDS:I = 0x1000220

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_AUTORUNBLOCK:I = 0x8

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_ESSENTIAL_INTENT:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x20000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SELF_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SPECIALINTENTS_FOR_SKT:I = 0x10000

.field public static final RESTRICTION_TYPE_EXCEPT_CARMODE_OFF:I = 0x8000000

.field public static final RESTRICTION_TYPE_EXCEPT_CARMODE_ON:I = 0x10000000

.field public static final RESTRICTION_TYPE_EXCEPT_LCD_OFF:I = 0x2000000

.field public static final RESTRICTION_TYPE_EXCEPT_LCD_ON:I = 0x4000000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_APPLOCKERBLOCK:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_APPLOCKERBLOCK:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field static final SMART_MANAGER_PKG_NAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field private static nonStickyKillAdj:I


# instance fields
.field private KILL_THRESHOLD:I

.field private MARSDB_VERSION:Ljava/lang/String;

.field private MARS_VERSION:Ljava/lang/String;

.field private RESTRICTION_THRESHOLD:I

.field private RESTRICTION_TYPES_BIGDATA_FLAG_APPLOCKER:I

.field private RESTRICTION_TYPES_BIGDATA_FLAG_ARES:I

.field private RESTRICTION_TYPES_BIGDATA_FLAG_AUTORUN:I

.field private RESTRICTION_TYPES_BIGDATA_FLAG_FILTER:I

.field private RESTRICTION_TYPES_BIGDATA_FLAG_FREECESS:I

.field private SKIP_RATIO:I

.field private final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

.field private UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

.field private final UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

.field private appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field mAccessibilityContentObserver:Landroid/database/ContentObserver;

.field private mActiveAdmins:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActiveAdminsUpdated:Z

.field mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppUsedRecently:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mCalibrationResetTime:J

.field private mCarModeOn:Z

.field private mCocktailBarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

.field mComponentTracker:Lcom/android/server/am/MARsComponentTracker;

.field mContext:Landroid/content/Context;

.field mContextPackageName:Ljava/lang/String;

.field private mCurrentHomePackage:Ljava/lang/String;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field mDLManager:Lcom/android/server/am/MARsDLManager;

.field private mDefaultDialerPackage:Ljava/lang/String;

.field mDefaultDialerSettingsObserver:Landroid/database/ContentObserver;

.field private mDefaultIMEList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultSmsPackage:Ljava/lang/String;

.field mDefaultSmsSettingsObserver:Landroid/database/ContentObserver;

.field private mDualAppEnabled:Z

.field private mDualAppUserId:I

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyTime:J

.field private mEnabledAccessibilityPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFakeTopActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFirstTimeExcutingPolicy:Z

.field private mFirstTimeUpdatePackages:Z

.field private mFreezeTargetPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mInputMethodObserver:Landroid/database/ContentObserver;

.field private mIsEmergencyKillEnabled:Z

.field private mIsFreecessSkipTimeEnabled:Z

.field private mIsImmediateKillEnabled:Z

.field private mIsLCDonKillEnabled:Z

.field private mIsManualMode:Z

.field private mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

.field private mKeyguardPkg:Ljava/lang/String;

.field private mKeyguardPkgUid:I

.field private mLastScreenOffTime:J

.field private mLastTriggerTime:J

.field private mLatestProtectedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLockingTimeChanged:Z

.field private final mMARsLock:Ljava/lang/Object;

.field public mMainHandler:Lcom/android/server/am/MARsHandler;

.field private mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxForceKillTime:J

.field private mMinForceKillTime:J

.field mNotificationManager:Landroid/app/INotificationManager;

.field private mPolicyExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation
.end field

.field private mProtectedTargetMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisteredAccessibilityContentObserver:Z

.field private mRegisteredCocktailBarSettingsObserver:Z

.field private mRegisteredDefaultDialerSettingsObserver:Z

.field private mRegisteredDefaultSmsSettingsObserver:Z

.field private mRegisteredInputMethodObserver:Z

.field private mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionCnt:I

.field private mRunningLocationPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSecureFolderEnabled:Z

.field private mSecureFolderUserId:I

.field mSpecialChinaAppList:[Ljava/lang/String;

.field private mSpecialSKTPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalMemMb:J

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field private mUnusedAREsTime:J

.field private mUnusedAREsTimeForAging:J

.field public mUnusedAutoFreezeTime:J

.field private mUnusedLockingTime:J

.field mVersionManager:Lcom/android/server/am/MARsVersionManager;

.field private mWallpaperPackage:Ljava/lang/String;

.field private mWhiteListIntentsForSKT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MARsPolicyManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MARsPolicyManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getCocktailBarPackage()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/MARsPolicyManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getDefaultDialerPackage(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/MARsPolicyManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/MARsPolicyManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getDefaultSmsPackage(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    const-string/jumbo v0, "false"

    const-string/jumbo v3, "ro.product_ship"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    const-string/jumbo v0, "sys.config.mars"

    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    :goto_2b
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const-string/jumbo v0, "sys.config.mars.debug"

    const-string/jumbo v3, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    move v0, v1

    :goto_41
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_DEBUG_ENABLE:Z

    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    const/16 v0, 0x1f4

    sput v0, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v4, "com.samsung.android.sm"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.dha_cached_min"

    const/4 v3, 0x6

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/MARsPolicyManager;->FREEZED_PACKAGES_LIMIT:I

    sput-boolean v2, Lcom/android/server/am/MARsPolicyManager;->RESPRELOAD_ENABLE:Z

    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    return-void

    :cond_6e
    move v0, v2

    goto :goto_2b

    :cond_70
    move v0, v2

    goto :goto_41
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 13

    const-wide/16 v4, 0x0

    const v9, 0x101c0880

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mComponentTracker:Lcom/android/server/am/MARsComponentTracker;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerSettingsObserver:Landroid/database/ContentObserver;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsSettingsObserver:Landroid/database/ContentObserver;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredInputMethodObserver:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredAccessibilityContentObserver:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredCocktailBarSettingsObserver:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultDialerSettingsObserver:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultSmsSettingsObserver:Z

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastScreenOffTime:J

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mTotalMemMb:J

    const-wide/32 v4, 0x927c0

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

    const-wide/32 v4, 0x240c8400

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    iput v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    const-wide/32 v4, 0x1b7740

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    const-wide/32 v4, 0xdbba0

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFreecessSkipTimeEnabled:Z

    const-wide/32 v4, 0x1b7740

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMinForceKillTime:J

    const-wide/32 v4, 0x2932e0

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMaxForceKillTime:J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    const-wide/32 v4, 0xdbba0

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mEmergencyTime:J

    const-wide/32 v4, 0x2932e00

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTime:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTimeForAging:J

    const-string/jumbo v0, "sys.config.mars_immediate_kill"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    move v0, v1

    :goto_e0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsImmediateKillEnabled:Z

    const-string/jumbo v0, "sys.config.ares_lcdon_kill"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    move v0, v1

    :goto_f6
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLCDonKillEnabled:Z

    const-string/jumbo v0, "sys.config.ares_emergency_kill"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    move v0, v1

    :goto_10c
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsEmergencyKillEnabled:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mProtectedTargetMap:Landroid/util/ArrayMap;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->MARS_VERSION:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->MARSDB_VERSION:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictionCnt:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->KILL_THRESHOLD:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FILTER:I

    const v0, 0x14140110    # 7.4723E-27f

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_APPLOCKER:I

    iput v9, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_AUTORUN:I

    iput v9, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_ARES:I

    iput v9, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FREECESS:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mm"

    aput-object v3, v0, v1

    const-string/jumbo v3, "com.tencent.mobileqq"

    aput-object v3, v0, v2

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialChinaAppList:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFakeTopActivityList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerPackage:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsPackage:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkg:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkgUid:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/MARsHandler;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsHandler;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    new-instance v0, Lcom/android/server/am/MARsDLManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDLManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    new-instance v0, Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsHandler;Lcom/android/server/am/MARsDLManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    new-instance v0, Lcom/android/server/am/MARsVersionManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsVersionManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsTrigger;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    new-instance v0, Lcom/android/server/am/MARsDBManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsDBManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsVersionManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    new-instance v0, Lcom/android/server/am/MARsComponentTracker;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/MARsComponentTracker;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsDBManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mComponentTracker:Lcom/android/server/am/MARsComponentTracker;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    return-void

    :cond_1d5
    move v0, v2

    goto/16 :goto_e0

    :cond_1d8
    move v0, v2

    goto/16 :goto_f6

    :cond_1db
    move v0, v2

    goto/16 :goto_10c
.end method

.method private checkCarModeState()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_45

    const/4 v0, 0x1

    :goto_13
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eq v2, v0, :cond_44

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_42

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Change the car mode state from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    :cond_44
    return-void

    :cond_45
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private convertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x2

    const-string/jumbo v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_14
    :goto_14
    return v0

    :cond_15
    const-string/jumbo v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v0, 0x10

    goto :goto_14

    :cond_2a
    const-string/jumbo v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v0, 0x2

    goto :goto_14

    :cond_35
    const-string/jumbo v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v0, 0x8

    goto :goto_14

    :cond_41
    const-string/jumbo v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x4

    goto :goto_14
.end method

.method private convertStateToAutorun(I)I
    .registers 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_8

    return v0

    :sswitch_5
    return v0

    :sswitch_6
    const/4 v0, 0x1

    return v0

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_5
    .end sparse-switch
.end method

.method private convertStateToDBExtrasValue(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_1c

    const-string/jumbo v0, "0"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "0"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "9"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "1"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "2"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "9"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_7
        0x4 -> :sswitch_13
        0x8 -> :sswitch_f
        0x10 -> :sswitch_17
    .end sparse-switch
.end method

.method private excludeTargetPackage(Lcom/android/server/am/MARsPackageStatus;I)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v6, v6, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5b

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v6, v6, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget v3, v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v6, v6, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget v0, v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v6, v6, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v5, v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v6, v6, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v4, v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    packed-switch v3, :pswitch_data_5e

    :cond_3f
    :goto_3f
    :pswitch_3f
    if-eqz v2, :cond_58

    const/4 v6, 0x1

    return v6

    :pswitch_43
    iget-object v6, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_3f

    :pswitch_4a
    const/4 v6, 0x2

    if-ne p2, v6, :cond_3f

    iget v6, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v0, v6, :cond_3f

    iget-object v6, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_3f

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5b
    const/4 v6, 0x0

    return v6

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3f
        :pswitch_4a
    .end packed-switch
.end method

.method private forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;I)Z
    .registers 16

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MARs #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    :goto_1c
    const/16 v0, 0x10

    if-gt v10, v0, :cond_34

    iget v0, p2, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    and-int/2addr v0, v10

    packed-switch v0, :pswitch_data_a0

    :goto_26
    :pswitch_26
    shl-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :pswitch_29
    const/4 v7, 0x1

    goto :goto_26

    :pswitch_2b
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_26

    :pswitch_2e
    const/4 v3, 0x1

    sget v4, Lcom/android/server/am/MARsPolicyManager;->nonStickyKillAdj:I

    goto :goto_26

    :pswitch_32
    const/4 v5, 0x1

    goto :goto_26

    :cond_34
    const/4 v8, 0x1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v0, :cond_53

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceKillPackage......pkgName: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    if-eqz v7, :cond_5b

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    :goto_5a
    return v8

    :cond_5b
    iget-object v11, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_5e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZI)Z

    move-result v8

    if-nez v8, :cond_94

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_94

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceKillPackage: don\'t force stop package = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", userId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_5e .. :try_end_94} :catchall_99

    :cond_94
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5a

    :catchall_99
    move-exception v0

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2b
        :pswitch_26
        :pswitch_2e
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_32
    .end packed-switch
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "%21s"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "null"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const-string/jumbo v0, "%21s"

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const v4, 0x20015

    invoke-static {v3, p1, p2, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private freezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x1

    iget-object v2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->setProcessFreezedFlag(Ljava/lang/String;IZ)Z

    move-result v1

    if-nez v1, :cond_c

    return v1

    :cond_c
    iget-object v2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->sendFreecessSingal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    iput-object p2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    iput-boolean v4, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FZ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return v0

    :cond_55
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FZ error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method private generateTargetPackages(Lcom/android/server/am/MARsPolicyManager$Policy;)Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ")",
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x1

    new-instance v4, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    const/4 v1, 0x0

    :goto_d
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_106

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_26
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_102

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    const/16 v6, 0x19

    if-ne v0, v6, :cond_43

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isFreezeTargetPackage(Lcom/android/server/am/MARsPackageStatus;)Z

    move-result v6

    if-eqz v6, :cond_43

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_43
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_5a

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_5a

    iget-boolean v6, v3, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-nez v6, :cond_57

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->isFreezeTargetPackage(Lcom/android/server/am/MARsPackageStatus;)Z

    move-result v6

    if-eqz v6, :cond_5a

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_5a
    if-ne v0, v8, :cond_73

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_63
    :goto_63
    iget v6, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v6, v8, :cond_57

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v6, v8, :cond_57

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_57

    :cond_73
    const/16 v6, 0xa

    if-ne v0, v6, :cond_84

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_84

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_84
    const/16 v6, 0xb

    if-ne v0, v6, :cond_94

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v6, v8, :cond_94

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_94
    const/16 v6, 0xc

    if-ne v0, v6, :cond_a4

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v6, v10, :cond_a4

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_a4
    const/16 v6, 0xd

    if-ne v0, v6, :cond_b8

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v6, v10, :cond_b0

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v6, v9, :cond_b8

    :cond_b0
    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_b8
    const/16 v6, 0x14

    if-ne v0, v6, :cond_c8

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v6, :cond_c8

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_c8
    const/16 v6, 0x15

    if-ne v0, v6, :cond_e0

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v6, :cond_d8

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v6, v8, :cond_e0

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v6, v9, :cond_e0

    :cond_d8
    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    :cond_e0
    const/16 v6, 0x16

    if-ne v0, v6, :cond_f1

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->uds:I

    if-ne v6, v8, :cond_f1

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_63

    :cond_f1
    const/16 v6, 0x17

    if-ne v0, v6, :cond_63

    iget v6, v3, Lcom/android/server/am/MARsPackageStatus;->sbike:I

    if-ne v6, v8, :cond_63

    iget-object v6, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v4, v6, v7, v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_63

    :cond_102
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    :cond_106
    return-object v4
.end method

.method private getActiveAdminsPackages(I)V
    .registers 10

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_58
    return-void
.end method

.method private getActiveNotifications()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationManager:Landroid/app/INotificationManager;

    if-eqz v1, :cond_1a

    :try_start_10
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "getActiveNotifications() "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private getAllRunningPackagePids(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/acct/uid_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_29
    array-length v6, v2

    if-ge v3, v6, :cond_65

    aget-object v6, v2, v3

    const-string/jumbo v7, "pid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_62

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "cgroup.procs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_65
    return-object v5
.end method

.method private getBoundAppWidgetPackages()V
    .registers 11

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v0, 0x0

    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_3e

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2c
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v8, v3, v7}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v6

    if-eqz v6, :cond_37

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/MARsPackageStatus;->isBoundAppWidget:Z
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    :cond_37
    monitor-exit v9

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :catchall_3b
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_3e
    return-void
.end method

.method private getCocktailBarPackage()V
    .registers 12

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "cocktail_bar_enabled_cocktails"

    iget-object v10, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_72

    const-string/jumbo v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_72

    const-string/jumbo v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2e
    :goto_2e
    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v2, 0x0

    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_89

    const/4 v3, 0x0

    :goto_39
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v3, v8, :cond_86

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    const/4 v4, 0x0

    :goto_52
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_6f

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageStatus;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_83

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z
    :try_end_6f
    .catchall {:try_start_32 .. :try_end_6f} :catchall_8b

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_72
    if-eqz v6, :cond_2e

    const-string/jumbo v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2e

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_89
    monitor-exit v9

    return-void

    :catchall_8b
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private getDefaultDialerPackage(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dialer_default_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerPackage:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method private getDefaultIMEPackage(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    aget-object v1, v2, v5

    :cond_2b
    if-eqz v1, :cond_77

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_30
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_78

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_83

    :cond_51
    :goto_51
    monitor-exit v4

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDefaultIMEPackage userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | pkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void

    :cond_78
    move-object v0, v1

    :try_start_79
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_83

    goto :goto_51

    :catchall_83
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getDefaultSmsPackage(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sms_default_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsPackage:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method private getEnabledAccessibilityPackage()V
    .registers 12

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_d
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "enabled_accessibility_services"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    move v5, v6

    :goto_2e
    if-ge v5, v7, :cond_c6

    aget-object v0, v1, v5

    if-eqz v0, :cond_75

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_75

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_75

    aget-object v2, v4, v6

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_75

    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_78
    if-eqz v3, :cond_c6

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c6

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c6

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c6

    aget-object v2, v4, v6

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c6

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    return-void
.end method

.method private getEnabledCocktailBarList()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "cocktail_bar_enabled_cocktails"

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_3d

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_30
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_4e

    :cond_3b
    monitor-exit v4

    return-void

    :cond_3d
    if-eqz v2, :cond_2d

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :catchall_4e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getFreecessEnabledState()Z
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mTotalMemMb:J

    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mTotalMemMb:J

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-gez v3, :cond_28

    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_3f

    :try_start_1e
    const-string/jumbo v3, "sys.config.freecess_monitor"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_27} :catch_49

    :goto_27
    return v1

    :cond_28
    const-string/jumbo v3, "sys.config.mars_freecess"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v1, 0x1

    goto :goto_1c

    :cond_3d
    const/4 v1, 0x0

    goto :goto_1c

    :cond_3f
    :try_start_3f
    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "init(): FZ disabled, don\'t set prop"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_27

    :catch_49
    move-exception v0

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "init(), we cannot set FZ prop"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v6, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_38

    :cond_25
    const-string/jumbo v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v6, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    :cond_38
    if-eqz v3, :cond_40

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_41

    :cond_40
    return-object v5

    :cond_41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getLaunchedAppBeforeInit(Ljava/lang/String;I)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_26

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->userId:I

    if-ne p2, v2, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    return-object v3
.end method

.method private getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/am/MARsPackageStatus;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageStatus;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    return-object v2
.end method

.method private getRunningPackage()Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {v3, p0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    if-eqz v3, :cond_39

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v7

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_39
    return-object v3
.end method

.method private hasOngoingNotification(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_2e

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

    array-length v4, v3

    move v1, v2

    :goto_a
    if-ge v1, v4, :cond_2e

    aget-object v0, v3, v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    iget v6, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    if-ne v5, v6, :cond_36

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x22

    if-eqz v1, :cond_33

    iput-boolean v7, p1, Lcom/android/server/am/MARsPackageStatus;->isOngoingNotification:Z

    :cond_2e
    :goto_2e
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageStatus;->isOngoingNotification:Z

    if-eqz v1, :cond_39

    return v7

    :cond_33
    iput-boolean v2, p1, Lcom/android/server/am/MARsPackageStatus;->isOngoingNotification:Z

    goto :goto_2e

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_39
    if-eqz p2, :cond_3e

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageStatus;->isNotificationListener:Z

    return v1

    :cond_3e
    return v2
.end method

.method private hasRunningForegroundProcess(Ljava/lang/String;I)Z
    .registers 13

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_63

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_13

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, p2, :cond_13

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v6, :cond_13

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_13

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-boolean v6, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_61

    iget v6, v4, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v6, :cond_4d

    :cond_61
    const/4 v6, 0x1

    return v6

    :cond_63
    return v9
.end method

.method private increaseRestrictionCnt(Lcom/android/server/am/MARsPackageStatus;Ljava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_78

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    return v0

    :cond_18
    const-string/jumbo v0, "provider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_78

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    return v0

    :cond_30
    const-string/jumbo v0, "broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_78

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    return v0

    :cond_48
    const-string/jumbo v0, "startService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_5a
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_78

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    return v0

    :cond_69
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_78

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    return v0

    :cond_78
    const/4 v0, 0x0

    return v0
.end method

.method private increaseRestrictionSkipCnt(Lcom/android/server/am/MARsPackageStatus;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    :goto_15
    return-void

    :cond_16
    const-string/jumbo v0, "provider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    goto :goto_15

    :cond_26
    const-string/jumbo v0, "broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    goto :goto_15

    :cond_36
    const-string/jumbo v0, "startService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_48
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    goto :goto_15

    :cond_4f
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    goto :goto_15
.end method

.method private initBigdataPackage(Lcom/android/server/am/MARsPackageStatus;)V
    .registers 9

    const/4 v4, 0x0

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iput v4, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyTrigger:Z

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    :try_start_1f
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->versionName:Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NameNotFoundException occurred for package :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private initRestrictionCnt(Lcom/android/server/am/MARsPackageStatus;)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_b

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    :cond_b
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_15

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    :cond_15
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_1f

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    :cond_1f
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_29

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    :cond_29
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v0, v1, :cond_33

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    :cond_33
    return-void
.end method

.method private isActiveTrafficPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDLManager;->isActiveTrafficExisting(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-nez p2, :cond_38

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_33

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isActiveTrafficExisting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const-string/jumbo v0, "ActiveTrafficExisting"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_38
    const/4 v0, 0x1

    return v0

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_5

    return v8

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz p1, :cond_26

    if-eqz v0, :cond_26

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_62

    move-result v4

    if-eqz v4, :cond_26

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_26
    :try_start_26
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const v6, 0x7fffffff

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_34

    if-eqz p1, :cond_34

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v4, :cond_34

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_26 .. :try_end_55} :catchall_62

    move-result v4

    if-eqz v4, :cond_34

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_5d
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v8

    :catchall_62
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method private isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;I)Z
    .registers 11

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-eqz v2, :cond_4e

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v2, p2, v4, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_4e

    const-string/jumbo v4, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4e

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v0, 0x1

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return v0

    :catch_4f
    move-exception v1

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBindNotificationListenerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private isChinaPolicy(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    goto :goto_7
.end method

.method private isCocktailBarEnabledPackage(Ljava/lang/String;I)Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_27

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    if-eqz p1, :cond_32

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 9

    const/4 v5, 0x1

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-ne v1, v2, :cond_a7

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerPackage:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    if-nez p2, :cond_58

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_53

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")-default dialer package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const-string/jumbo v1, "DefaultDialer"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_58
    return v5

    :cond_59
    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsPackage:Ljava/lang/String;

    if-eqz v1, :cond_a7

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    if-nez p2, :cond_a6

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_a1

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "(userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")-default sms package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    const-string/jumbo v1, "DefaultSMS"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_a6
    return v5

    :cond_a7
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_aa
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_103

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    if-nez p2, :cond_101

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_fc

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")-default inputMethod package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fc
    const-string/jumbo v1, "DefaultIME"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_aa .. :try_end_101} :catchall_106

    :cond_101
    monitor-exit v2

    return v5

    :cond_103
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_106
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isDependsOnSystemPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 6

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_36

    if-nez p2, :cond_34

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -dependsOnSystem package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string/jumbo v0, "DependsOnSystem"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_34
    const/4 v0, 0x1

    return v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method private isDeviceAdminPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 7

    const/4 v3, 0x1

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    if-nez p2, :cond_39

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -isForceStopDisabled package from EDM!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-string/jumbo v0, "EDMForceStopDisabled"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_39
    return v3

    :cond_3a
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v0, :cond_6d

    if-nez p2, :cond_6c

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_67

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -is active device admin package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    const-string/jumbo v0, "ActiveDeviceAdmin"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_6c
    return v3

    :cond_6d
    const/4 v0, 0x0

    return v0
.end method

.method private isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isForegroundPackage(Ljava/lang/String;I)Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isTop:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_12
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isFreezeTargetPackage(Lcom/android/server/am/MARsPackageStatus;)Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_25

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_22
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isFreezeTargetPackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v1, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_25

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_22
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isFreezedPackage(Lcom/android/server/am/MARsPackageStatus;)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_16
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isGraceUIAvailable()Z
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_SLEEP_UNUSED_APPS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    return v4

    :cond_2a
    return v5
.end method

.method private isHomePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 6

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_4c

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    if-nez p2, :cond_4a

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_45

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -current home package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-string/jumbo v0, "CurrentHome"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_4a
    const/4 v0, 0x1

    return v0

    :cond_4c
    const/4 v0, 0x0

    return v0
.end method

.method private isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z
    .registers 8

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->excludeTargetPackage(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInPolicyExceptionList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is exclude target package."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return v4

    :cond_2f
    const/4 v1, 0x2

    if-eq p2, v1, :cond_34

    if-ne p2, v4, :cond_64

    :cond_34
    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isProtectedTargetPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v1, :cond_63

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInPolicyExceptionList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is preloaded package, shouldn\'t be killed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return v4

    :cond_64
    const/4 v1, 0x0

    return v1
.end method

.method private isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;I)Z
    .registers 11

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-eqz v2, :cond_4e

    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v2, p2, v4, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_4e

    const-string/jumbo v4, "android.permission.BIND_JOB_SERVICE"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4e

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const/4 v1, 0x1

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return v1

    :catch_4f
    move-exception v0

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isJobSchedulerPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private isLatestProtectedPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_50

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    if-nez p2, :cond_4d

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_48

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -is Latest Protected Package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const-string/jumbo v1, "LatestProtected"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_53

    :cond_4d
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_50
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isLauncherableApp(Ljava/lang/String;I)Z
    .registers 11

    const/4 v7, 0x1

    const-string/jumbo v3, "com.baidu.searchbox_samsung"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "com.bst.floatingmsgproxy"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    return v7

    :cond_14
    :try_start_14
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_84

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_69

    :try_start_1d
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    if-nez v2, :cond_46

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_43

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_66

    :cond_43
    const/4 v3, 0x0

    :try_start_44
    monitor-exit v4
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_69

    return v3

    :cond_46
    :try_start_46
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_64

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_46 .. :try_end_64} :catchall_66

    :cond_64
    :try_start_64
    monitor-exit v4

    return v7

    :catchall_66
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_69} :catch_69

    :catch_69
    move-exception v0

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLaucherableApp exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return v7
.end method

.method private isLockScreenPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 6

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkg:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkgUid:I

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    if-ne v0, v1, :cond_48

    if-nez p2, :cond_46

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_41

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -Lockscreen package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-string/jumbo v0, "Lockscreen"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_46
    const/4 v0, 0x1

    return v0

    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method private isMusicOrRecordActive(Lcom/android/server/am/MARsPackageStatus;)Z
    .registers 8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_12
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v1

    if-eqz v0, :cond_31

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_31
    if-eqz v1, :cond_4b

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_3f
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v2

    if-nez v2, :cond_49

    iget-boolean v2, p1, Lcom/android/server/am/MARsPackageStatus;->isForegroundService:Z

    if-eqz v2, :cond_4b

    :cond_49
    const/4 v2, 0x1

    return v2

    :cond_4b
    return v5
.end method

.method private isMusicOrRecordActivePackage(Lcom/android/server/am/MARsPackageStatus;ZZ)Z
    .registers 7

    if-nez p2, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3e

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActive(Lcom/android/server/am/MARsPackageStatus;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-nez p3, :cond_3c

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_37

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isMusicOrRecordActive!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    const-string/jumbo v0, "MusicOrRecordActive"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_3c
    const/4 v0, 0x1

    return v0

    :cond_3e
    const/4 v0, 0x0

    return v0
.end method

.method private isNoAppIconPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 7

    const/4 v3, 0x1

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v0, v3, :cond_3a

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    if-nez p2, :cond_39

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - has No Icon!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const-string/jumbo v0, "hasNoIcon"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_39
    return v3

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private isOngoingNotificationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 7

    const/4 v3, 0x1

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_50

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v0

    if-eqz v0, :cond_50

    if-nez p2, :cond_4f

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -hasOngoingNotification!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const-string/jumbo v0, "hasOngoingNotification"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_4f
    return v3

    :cond_50
    const/4 v0, 0x0

    return v0
.end method

.method private isPolicyBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .registers 16

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eqz p1, :cond_1c

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v8

    :cond_1c
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "Blocked by AutoRun policy !! -- Caller is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v7

    :cond_2a
    invoke-virtual {p0, v3, p5}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    return v8

    :cond_31
    const-string/jumbo v0, "startService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_43
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object v0, p0

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsPolicyManager;->isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    return v8

    :cond_4f
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isSamsungService(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_73

    invoke-direct {p0, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isLauncherableApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_72

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "Blocked by AutoRun policy !!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    return v7

    :cond_73
    invoke-direct {p0, v1, v3, p4, p6}, Lcom/android/server/am/MARsPolicyManager;->isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_87

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_86

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "Blocked by AutoRun policy -- shouldBlock cases!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return v7

    :cond_87
    invoke-direct {p0, p6}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_db

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/MARsPolicyManager;->isJobSchedulerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_b3

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_a9

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "Blocked by AutoRun policy -- JobSchedulerPackage!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/MARsHandler;->sendCancelJobPkgMsgToMainHandler(Ljava/lang/String;I)V

    return v7

    :cond_b3
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/am/MARsPolicyManager;->isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c7

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_c6

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "Blocked by AutoRun policy -- SyncManagerPackage!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    return v7

    :cond_c7
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/MARsPolicyManager;->isBindNotificationListenerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_db

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_da

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v2, "Blocked by AutoRun policy -- isBindNotificationListenerPackage!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    return v7

    :cond_db
    const/4 v0, 0x2

    return v0
.end method

.method private isProtectedTargetPackage(ILjava/lang/String;)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mProtectedTargetMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mProtectedTargetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_1e
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isRecentlyUsedPackage(Lcom/android/server/am/MARsPackageStatus;ZIZ)Z
    .registers 15

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFreecessSkipTimeEnabled:Z

    if-eqz v1, :cond_7

    return v8

    :cond_7
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    const/4 v1, 0x3

    if-ne p3, v1, :cond_18

    if-eqz p4, :cond_7e

    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTimeForAging:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_7b

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTimeForAging:J

    :cond_18
    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v6, p1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_81

    const/4 v0, 0x1

    :goto_24
    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v1, :cond_36

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v1, :cond_83

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v1, v9, :cond_83

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_83

    :cond_36
    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_83

    iput-boolean v9, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    if-nez p2, :cond_7a

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_75

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CurrentImportantPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Used in last "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v6, 0xea60

    div-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mins!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    const-string/jumbo v1, "UsedRecently"

    iput-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_7a
    return v9

    :cond_7b
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEmergencyTime:J

    goto :goto_18

    :cond_7e
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTime:J

    goto :goto_18

    :cond_81
    const/4 v0, 0x0

    goto :goto_24

    :cond_83
    return v8
.end method

.method private isRunningLocationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const-string/jumbo v0, "com.baidu.BaiduMap"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.autonavi.minimap"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.autonavi.xmgd.navigator"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.tencent.map"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.sogou.map.android.maps"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.baidu.navi"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.mapbar.android.mapbarmap"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string/jumbo v0, "com.uu.uunavi"

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    :cond_66
    if-nez p2, :cond_94

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_8f

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - isRunningLocationPackages!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    const-string/jumbo v0, "RunningLocation"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_94
    const/4 v0, 0x1

    return v0

    :cond_96
    const/4 v0, 0x0

    return v0
.end method

.method private isRunningPackage(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    return v1
.end method

.method private isSamsungService(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "com.sec."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "com.samsung."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_1d
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AutoRun Policy isSamsungService -- SamsungService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return v3

    :cond_3c
    const-string/jumbo v0, "com.baidu.BaiduMap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string/jumbo v0, "com.baidu.searchbox_samsung"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string/jumbo v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_57
    return v1

    :cond_58
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_7c

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AutoRun Policy isSamsungService -- SystemPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return v3

    :cond_7d
    return v1
.end method

.method private isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_28

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSelfIntent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 10

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_10
    const-string/jumbo v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "binderCallingUid"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_35

    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "isShouldBlockCase: block AccountAuthenticator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_35
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "isShouldBlockCase: not block AccountAuthenticator"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    invoke-direct {p0, p4}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2, p1, v0}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    return v4

    :cond_4e
    const/4 v2, 0x0

    return v2
.end method

.method private isShouldSkipCaseForPolicy(Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_e

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_e
    const-string/jumbo v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    if-nez v0, :cond_40

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_40
    invoke-direct {p0, p5}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v1, v4, p3, p1, v0}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    return v4

    :cond_4f
    invoke-direct {p0, p5}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p3, p1, v0}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7f
    const/4 v1, 0x0

    return v1
.end method

.method private isSkipRestriction(Lcom/android/server/am/MARsPackageStatus;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const-string/jumbo v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    if-lez v0, :cond_26

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    :cond_26
    :goto_26
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    return v0

    :cond_29
    const-string/jumbo v0, "provider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    if-lez v0, :cond_26

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    goto :goto_26

    :cond_4c
    const-string/jumbo v0, "broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    if-lez v0, :cond_26

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    goto :goto_26

    :cond_6f
    const-string/jumbo v0, "startService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_81
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    if-lez v0, :cond_26

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    goto :goto_26

    :cond_9b
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    if-lez v0, :cond_26

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iput v2, p1, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    iput-boolean v4, p1, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    goto/16 :goto_26
.end method

.method private isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_e

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_4b

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Specila Intent for speical SKT package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/4 v2, 0x1

    return v2

    :cond_4d
    const/4 v2, 0x0

    return v2
.end method

.method private isSyncManagerPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .registers 9

    if-eqz p1, :cond_4

    if-nez p3, :cond_6

    :cond_4
    const/4 v2, 0x0

    return v2

    :cond_6
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.content.SyncAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4a

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v1, 0x1

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AutoRun Policy isSyncManagerPackage -- package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    return v1

    :catch_4b
    move-exception v0

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSyncManagerPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_13

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_25

    if-gtz v3, :cond_20

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_13
    if-eqz p3, :cond_19

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_1e

    :cond_19
    :goto_19
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_1e
    move v0, v1

    goto :goto_19

    :cond_20
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_25
    move-exception v0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private isSystemPackage(Ljava/lang/String;I)Z
    .registers 11

    const/4 v7, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_f

    return v7

    :cond_f
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_16

    return v7

    :cond_16
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android"

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_22} :catch_28

    move-result v2

    if-ltz v2, :cond_27

    const/4 v4, 0x1

    return v4

    :cond_27
    return v7

    :catch_28
    move-exception v1

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSystemPackage exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "equals"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_e
    :goto_e
    return v0

    :cond_f
    const-string/jumbo v1, "contains"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_e

    :cond_1d
    const-string/jumbo v1, "startsWith"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e

    :cond_2b
    const-string/jumbo v1, "endsWith"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e

    :cond_39
    const-string/jumbo v1, "equalsIgnoreCase"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method private isTopPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 7

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isInBlackListTopActivity:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentPackage is in black list for TOP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -Skip it!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_29
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isTop:Z

    if-eqz v0, :cond_5d

    if-nez p2, :cond_5b

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_56

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -Top package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    const-string/jumbo v0, "Top"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_5b
    const/4 v0, 0x1

    return v0

    :cond_5d
    return v3
.end method

.method private isVpnServicePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isVpn:Z

    if-eqz v0, :cond_45

    if-nez p2, :cond_42

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CurrentImportantPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -vpnService package!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const-string/jumbo v0, "VpnService"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_48

    :cond_42
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_45
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isWallPaperPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z
    .registers 6

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    if-nez p2, :cond_46

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_41

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -wallpaper package!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-string/jumbo v0, "Wallpaper"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_46
    const/4 v0, 0x1

    return v0

    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method private isWidgetPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z
    .registers 9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v0, v1, :cond_e

    return v2

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    if-eqz v0, :cond_47

    if-ne p2, v4, :cond_47

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isBoundAppWidget:Z

    if-eqz v0, :cond_47

    if-nez p3, :cond_46

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_41

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -first time excuting policy for Widget!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-string/jumbo v0, "FirstTimeExcutingPolicy-Widget"

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_46
    return v3

    :cond_47
    if-eq p2, v4, :cond_95

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v0, :cond_95

    if-nez p3, :cond_94

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_7c

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrentImportantPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -has running widgets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runningWidgets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    :cond_94
    return v3

    :cond_95
    return v2
.end method

.method private killAutoRunOnPackage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V

    return-void
.end method

.method private makeKeyValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private policyStateToExtraValue(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "(extras 0)"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "(extras 9)"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "(extras 1)"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "(extras 2)"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "(extras 9)"

    return-object v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_5
        0x4 -> :sswitch_11
        0x8 -> :sswitch_d
        0x10 -> :sswitch_15
    .end sparse-switch
.end method

.method private policyStateToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_1a

    const/4 v0, 0x0

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "AUTO"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "ALWAYS"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "NO"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "AUTO_EXPIRED"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "WILLBESET_AUTO"

    return-object v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_5
        0x4 -> :sswitch_15
        0x8 -> :sswitch_11
        0x10 -> :sswitch_9
    .end sparse-switch
.end method

.method private readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_36
    .catchall {:try_start_4 .. :try_end_e} :catchall_64

    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_12
    if-eqz v3, :cond_2a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_28} :catch_73
    .catchall {:try_start_e .. :try_end_28} :catchall_70

    move-result-object v3

    goto :goto_12

    :cond_2a
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_31

    :cond_2f
    :goto_2f
    move-object v1, v2

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_64

    if-eqz v1, :cond_30

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_30

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catchall_64
    move-exception v4

    :goto_65
    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    throw v4

    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    :catchall_70
    move-exception v4

    move-object v1, v2

    goto :goto_65

    :catch_73
    move-exception v0

    move-object v1, v2

    goto :goto_37
.end method

.method private registerDefaultDialerSettingsChanged()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultDialerSettingsObserver:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dialer_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerSettingsObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultDialerSettingsObserver:Z

    :cond_2c
    return-void
.end method

.method private registerDefaultInputMethodChanged()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredInputMethodObserver:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$3;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredInputMethodObserver:Z

    :cond_2c
    return-void
.end method

.method private registerDefaultSmsSettingsChanged()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultSmsSettingsObserver:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$2;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsSettingsObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultSmsSettingsObserver:Z

    :cond_2c
    return-void
.end method

.method private registerEnabledAccessibilityServicesChanged()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredAccessibilityContentObserver:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$4;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredAccessibilityContentObserver:Z

    :cond_2c
    return-void
.end method

.method private registerEnabledCocktailBarChanged()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredCocktailBarSettingsObserver:Z

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$5;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cocktail_bar_enabled_cocktails"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredCocktailBarSettingsObserver:Z

    :cond_2c
    return-void
.end method

.method private removePreloadPackageFromRestrictedList(ILjava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendFreecessSingal(Ljava/lang/String;II)Z
    .registers 6

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_16

    :goto_4
    return v0

    :pswitch_5
    const-string/jumbo v1, "/dev/freezer/thaw/cgroup.procs"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->writeDevFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_4

    :pswitch_d
    const-string/jumbo v1, "/dev/freezer/frozen/cgroup.procs"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->writeDevFile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_4

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private sendPackageRestartedIntent(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->finishForceStopPackageForMARsLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private setProcessFreezedFlag(Ljava/lang/String;IZ)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_14

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p2, :cond_14

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_14

    if-eqz p3, :cond_47

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_47

    return v7

    :cond_47
    iput-boolean p3, v2, Lcom/android/server/am/ProcessRecord;->freezed:Z

    goto :goto_14

    :cond_4a
    return v8
.end method

.method private switchPolicies(IZ)V
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v1, 0x15

    iput v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    :cond_e
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_26
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_66

    :cond_2f
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDLManager;->init()V

    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v0, v0, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    if-eqz v0, :cond_a2

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_41
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_9f

    :cond_4a
    monitor-exit v1

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_58

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "switchPolicies---Clear mRestrictedPackages list"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_65

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()V

    :cond_65
    return-void

    :catchall_66
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_6c
    if-ne p1, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_71
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_7d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_86
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_8f
    .catchall {:try_start_71 .. :try_end_8f} :catchall_99

    :cond_8f
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDLManager;->clear()V

    goto :goto_38

    :catchall_99
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_a2
    if-nez p2, :cond_bf

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a7
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V

    :cond_b0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V
    :try_end_b9
    .catchall {:try_start_a7 .. :try_end_b9} :catchall_cd

    :cond_b9
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    :cond_bf
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_58

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "switchPolicies---mDBCreate is false, and call initManagedPackages"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :catchall_cd
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private turnOffPolicies()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    :goto_13
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_1c
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_34

    :cond_29
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2e
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_30
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_13

    :catchall_34
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private turnOnPolicies()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    :cond_f
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private unFreezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->sendFreecessSingal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v1, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/am/MARsPolicyManager;->setProcessFreezedFlag(Ljava/lang/String;IZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    iput-object p2, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    iput-boolean v4, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UFZ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void

    :cond_53
    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UFZ error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method private updateActiveAdminsToManaged(I)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v1, :cond_33

    const/4 v0, 0x0

    :goto_16
    :try_start_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v4, v2, p1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_35

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_33
    monitor-exit v5

    :cond_34
    return-void

    :catchall_35
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private updateChinaSpecialList(Lcom/android/server/am/MARsPackageStatus;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialChinaAppList:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_17

    aget-object v0, v2, v1

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaApp:Z

    return-void

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    return-void
.end method

.method private updateFromMARsMainThread()V
    .registers 25

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "updateFromMARsThread"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    const/16 v16, 0x0

    :goto_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3a6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    const/16 v18, 0x0

    :goto_43
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3a2

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/MARsPackageStatus;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-nez v3, :cond_86

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_6f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    :cond_6f
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->isVpn:Z

    if-nez v3, :cond_86

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->isDefaultPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v3

    if-nez v3, :cond_86

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v3, :cond_d0

    :cond_86
    :goto_86
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_e0

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b0
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    :cond_b9
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c8

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_14d

    :cond_c8
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_113

    :cond_cc
    :goto_cc
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_43

    :cond_d0
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    if-eqz v3, :cond_b9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->hasOngoingNotification(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v3

    if-eqz v3, :cond_b9

    goto :goto_86

    :cond_e0
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :cond_113
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_149
    .catchall {:try_start_21 .. :try_end_149} :catchall_14a

    goto :goto_cc

    :catchall_14a
    move-exception v3

    monitor-exit v23

    throw v3

    :cond_14d
    :try_start_14d
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_15e

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c9

    :cond_15e
    move-object/from16 v0, v20

    iput-wide v14, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const/4 v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_192

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18b
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cc

    :cond_192
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18b

    :cond_1c9
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    if-nez v3, :cond_297

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_297

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    if-eqz v3, :cond_297

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-gez v3, :cond_cc

    const/4 v3, 0x2

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_25c

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_216
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_237

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_237

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    :cond_237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_cc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_cc

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_cc

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    goto/16 :goto_cc

    :cond_25c
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_216

    :cond_297
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_313

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    if-eqz v3, :cond_313

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_2d8

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2cc
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto/16 :goto_cc

    :cond_2d8
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "0"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2cc

    :cond_313
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_cc

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v4, v14, v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_cc

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_cc

    const/16 v3, 0x8

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_367

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35e
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x0

    goto/16 :goto_cc

    :cond_367
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1"

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a1
    .catchall {:try_start_14d .. :try_end_3a1} :catchall_14a

    goto :goto_35e

    :cond_3a2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_21

    :cond_3a6
    monitor-exit v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_3e1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_3e1

    if-eqz v19, :cond_3e1

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    return-void
.end method

.method private updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageStatus;)V
    .registers 5

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    iput v0, p2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    iput v0, p2, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAREsTriggeredReason:I

    iput v0, p2, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    iput v0, p2, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    iget-wide v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    iput-wide v0, p2, Lcom/android/server/am/MARsPackageStatus;->freezedTime:J

    iget-wide v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    iput-wide v0, p2, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iget-wide v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    iput-wide v0, p2, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    iget-object v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/am/MARsPackageStatus;->freezedReason:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    iput-boolean v0, p2, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    return-void
.end method

.method private updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .registers 5

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    iput v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    iput v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAREsTriggeredReason:I

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    iput v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopReason:I

    iget-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->freezedTime:J

    iput-wide v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedTime:J

    iget-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iput-wide v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedTime:J

    iget-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    iput-wide v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->unfreezedReason:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->freezedReason:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->freezedReason:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    iput-boolean v0, p2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    return-void
.end method

.method private updateLaunchedBeforeInitToManaged()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v3, :cond_33

    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->userId:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2e
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    :cond_33
    monitor-exit v4

    return-void

    :catchall_35
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private writeDevFile(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 16

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_20

    :cond_15
    const-string/jumbo v8, "MARsPolicyManager"

    const-string/jumbo v9, "writeDevFile error: file doesn\'t exist or can\'t write"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    return v8

    :cond_20
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getAllRunningPackagePids(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v7

    :try_start_24
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v5, p3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_150
    .catchall {:try_start_24 .. :try_end_2a} :catchall_12a

    const/4 v2, 0x0

    :goto_2b
    :try_start_2b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_eb

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v8, "/dev/freezer/thaw/cgroup.procs"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UFZ : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_84
    const-string/jumbo v8, "/dev/freezer/frozen/cgroup.procs"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FZ : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_b9} :catch_ba
    .catchall {:try_start_2b .. :try_end_b9} :catchall_14d

    goto :goto_70

    :catch_ba
    move-exception v0

    move-object v4, v5

    :goto_bc
    const/4 v3, 0x0

    :try_start_bd
    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeDevFile: Fail to write "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_bd .. :try_end_e5} :catchall_12a

    if-eqz v4, :cond_ea

    :try_start_e7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_10e

    :cond_ea
    :goto_ea
    return v3

    :cond_eb
    if-eqz v5, :cond_f0

    :try_start_ed
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f2

    :cond_f0
    :goto_f0
    move-object v4, v5

    goto :goto_ea

    :catch_f2
    move-exception v0

    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeDevFile: IO exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    :catch_10e
    move-exception v0

    const-string/jumbo v8, "MARsPolicyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeDevFile: IO exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    :catchall_12a
    move-exception v8

    :goto_12b
    if-eqz v4, :cond_130

    :try_start_12d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_131

    :cond_130
    :goto_130
    throw v8

    :catch_131
    move-exception v0

    const-string/jumbo v9, "MARsPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeDevFile: IO exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    :catchall_14d
    move-exception v8

    move-object v4, v5

    goto :goto_12b

    :catch_150
    move-exception v0

    goto/16 :goto_bc
.end method


# virtual methods
.method public ConvertSkipReason(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "UsedRecently"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :cond_c
    const-string/jumbo v1, "LatestProtected"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x2

    goto :goto_b

    :cond_17
    const-string/jumbo v1, "hasOngoingNotification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x4

    goto :goto_b

    :cond_22
    const-string/jumbo v1, "runningWidgets"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string/jumbo v1, "FirstTimeExcutingPolicy-Widget"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_34
    const/16 v0, 0x8

    goto :goto_b

    :cond_37
    const-string/jumbo v1, "hasNoIcon"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/16 v0, 0x10

    goto :goto_b

    :cond_43
    const-string/jumbo v1, "VpnService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/16 v0, 0x20

    goto :goto_b

    :cond_4f
    const-string/jumbo v1, "MusicOrRecordActive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/16 v0, 0x40

    goto :goto_b

    :cond_5b
    const-string/jumbo v1, "ActiveTrafficExisting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const/16 v0, 0x80

    goto :goto_b

    :cond_67
    const-string/jumbo v1, "ActiveDeviceAdmin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    const-string/jumbo v1, "EDMForceStopDisabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    :cond_79
    const/16 v0, 0x100

    goto :goto_b

    :cond_7c
    const-string/jumbo v1, "Wallpaper"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    const/16 v0, 0x200

    goto :goto_b

    :cond_88
    const-string/jumbo v1, "DefaultIME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    const-string/jumbo v1, "DefaultDialer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    const-string/jumbo v1, "DefaultSMS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    :cond_a3
    const/16 v0, 0x400

    goto/16 :goto_b

    :cond_a7
    const-string/jumbo v1, "CurrentHome"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    const/16 v0, 0x800

    goto/16 :goto_b

    :cond_b4
    const-string/jumbo v1, "Top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const/16 v0, 0x1000

    goto/16 :goto_b

    :cond_c1
    const-string/jumbo v1, "DependsOnSystem"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    const/16 v0, 0x4000

    goto/16 :goto_b

    :cond_ce
    const-string/jumbo v1, "RunningLocation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x8000

    goto/16 :goto_b
.end method

.method cancelAllPolicy()V
    .registers 7

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3b

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    iget-object v4, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v4, :cond_38

    iget-object v4, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_38

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3e
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_49

    :cond_47
    monitor-exit v5

    return-void

    :catchall_49
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method cancelJobSchedulerPackage(Ljava/lang/String;I)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    if-nez v4, :cond_e

    const-class v4, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mJobSchedulerInternal:Lcom/android/server/job/JobSchedulerInternal;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v4, p1, v5}, Lcom/android/server/job/JobSchedulerInternal;->cancelJobsForPackageAndUid(Ljava/lang/String;I)V
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_20} :catch_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v2

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NameNotFoundException occurred for package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_3d
    move-exception v1

    const-string/jumbo v4, "MARsPolicyManager"

    const-string/jumbo v5, "mJobSchedulerInternal is null!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method cancelPolicy(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderEnabled:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    :cond_23
    return-void
.end method

.method cancelPolicy(Ljava/lang/String;II)V
    .registers 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v1, 0x0

    :goto_9
    :try_start_9
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_8c

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_88

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageStatus;

    if-eqz p1, :cond_82

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    iget v6, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    if-ne p3, v6, :cond_82

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v6, :cond_7b

    if-eqz p2, :cond_6e

    const/4 v3, 0x0

    :goto_43
    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6e

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v6, p2, :cond_85

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x2

    if-eq p2, v6, :cond_62

    const/4 v6, 0x3

    if-ne p2, v6, :cond_68

    :cond_62
    const/4 v6, 0x0

    iput v6, v4, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    :cond_68
    const/4 v6, 0x5

    if-ne p2, v6, :cond_6e

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/server/am/MARsPackageStatus;->uds:I

    :cond_6e
    if-eqz p2, :cond_78

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7b

    :cond_78
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    :cond_7b
    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v6, :cond_82

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_8c
    const/4 v1, 0x0

    :goto_8d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageStatus;

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v8, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_a2
    .catchall {:try_start_9 .. :try_end_a2} :catchall_a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_a5
    monitor-exit v7

    return-void

    :catchall_a7
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public clearManagedPackages()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createPolicies()V
    .registers 27

    const/16 v25, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_1db

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-object v4, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget v5, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->num:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget v0, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->enabled:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget v7, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->targetCategory:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget v8, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->restriction:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget v9, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->action:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_8e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget v0, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->bigdataRestriction:I

    move/from16 v23, v0

    :cond_8e
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_f0

    const/4 v6, 0x1

    :goto_94
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    const/4 v3, 0x1

    if-ne v5, v3, :cond_f2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_ec

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_APPLOCKER:I

    :cond_ec
    :goto_ec
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    :cond_f0
    const/4 v6, 0x0

    goto :goto_94

    :cond_f2
    const/4 v3, 0x2

    if-ne v5, v3, :cond_153

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getImmediateKillEnabled()Z

    move-result v3

    if-eqz v3, :cond_134

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-wide/16 v10, 0x1388

    iput-wide v10, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    :goto_107
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_ec

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_AUTORUN:I

    goto :goto_ec

    :cond_134
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    goto :goto_107

    :cond_153
    const/4 v3, 0x3

    if-ne v5, v3, :cond_188

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_ec

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_ARES:I

    goto/16 :goto_ec

    :cond_188
    const/4 v3, 0x4

    if-ne v5, v3, :cond_ec

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mfreecessPolicyInterval:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-wide v12, v3, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    const-wide/16 v16, 0x3c

    mul-long v12, v12, v16

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    iput-wide v12, v10, Lcom/android/server/am/MARsTrigger;->mfreecessRepeatAlarmInterval:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_ec

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FREECESS:I

    goto/16 :goto_ec

    :cond_1db
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v3, :cond_22a

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "createPolicies---AL = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , AR = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , AS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , FZ = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v10, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "UDS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    new-instance v10, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v12, "udspolicy"

    const/4 v13, 0x5

    const/16 v15, 0x16

    const v16, 0x1000220

    const/16 v17, 0x9

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v10, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "bikemode"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    new-instance v15, Lcom/android/server/am/MARsPolicyManager$Policy;

    const-string/jumbo v17, "sbkiepolicy"

    const/16 v18, 0x6

    const/16 v20, 0x17

    const v21, 0x1000112

    const/16 v22, 0x9

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-void
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_5
    const-string/jumbo v12, "ACTIVITY MANAGER MARs (dumpsys activity mars)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v12, "currentTime "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--lastTriggerTime "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v12, "mManagedPackages --- size "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_6b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v2, v12, :cond_259

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_88
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_255

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageStatus;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_a2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v12, :cond_b0

    :cond_a2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_103

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_103

    :cond_b0
    const-string/jumbo v12, "--State "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%-18s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    iget v15, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/MARsPolicyManager;->policyStateToString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%12s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    iget v15, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/MARsPolicyManager;->policyStateToExtraValue(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--RST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_103
    const-string/jumbo v12, "--PkgType "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%3d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    iget v15, v8, Lcom/android/server/am/MARsPackageStatus;->packageType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_158

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_158

    const-string/jumbo v12, "--IPT(A/L) "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%5d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackageForDump(Lcom/android/server/am/MARsPackageStatus;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_18c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_18c

    const-string/jumbo v12, "--IPT(A/R) "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%5d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackageForDump(Lcom/android/server/am/MARsPackageStatus;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_1a9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_1a9

    const-string/jumbo v12, "--A/R "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v12, v8, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    :cond_1a9
    const-string/jumbo v12, "--UserId "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%3d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    iget v15, v8, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_1ec

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_1ec

    const-string/jumbo v12, "--ShareUid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v12, :cond_234

    const-string/jumbo v12, "Y"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1ec
    :goto_1ec
    const-string/jumbo v12, "--Pkg "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    if-eqz v12, :cond_20e

    const-string/jumbo v12, "--SkipReason "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20e
    iget-boolean v12, v8, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v12, :cond_240

    const-string/jumbo v12, "--Freezing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_21a
    :goto_21a
    iget-boolean v12, v8, Lcom/android/server/am/MARsPackageStatus;->isOngoingNotification:Z

    if-eqz v12, :cond_221

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_221
    iget-boolean v12, v8, Lcom/android/server/am/MARsPackageStatus;->isVpn:Z

    if-eqz v12, :cond_228

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_228
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_88

    :cond_234
    const-string/jumbo v12, "N"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_23c
    .catchall {:try_start_5 .. :try_end_23c} :catchall_23d

    goto :goto_1ec

    :catchall_23d
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_240
    :try_start_240
    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v14, v8, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_21a

    const-string/jumbo v12, "--Running"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_21a

    :cond_255
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6b

    :cond_259
    const-string/jumbo v12, "mRestrictedPackages --- size "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(I)V

    const/4 v2, 0x0

    :goto_26f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v2, v12, :cond_3a7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_28c
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v3, v12, :cond_3a3

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageStatus;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_2df

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_2df

    const-string/jumbo v12, "--FZT "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->freezedTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--UFZT "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--FZR "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->freezedReason:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2df
    const-string/jumbo v12, "--FST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--UserId "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "%3d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    iget v15, v8, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--Pkg "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "--POL "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v12, :cond_38f

    const/4 v4, 0x0

    :goto_331
    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_397

    iget-object v12, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "3"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v8, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_378
    add-int/lit8 v4, v4, 0x1

    goto :goto_331

    :cond_37b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_378

    :cond_38f
    const-string/jumbo v12, "null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_397
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_28c

    :cond_3a3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_26f

    :cond_3a7
    const-string/jumbo v12, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v12, :cond_3c6

    const-string/jumbo v12, "mWallpaperPackage ---  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3c6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_3eb

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_3eb

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz v12, :cond_3eb

    const-string/jumbo v12, "CurrentHomePackage ---  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3eb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_44b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_44b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    if-eqz v12, :cond_44b

    const-string/jumbo v12, "mLatestProtectedPackages "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v2, v12, :cond_44b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_448

    const/4 v3, 0x0

    :goto_41f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_448

    const-string/jumbo v12, "--PackageName "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_41f

    :cond_448
    add-int/lit8 v2, v2, 0x1

    goto :goto_408

    :cond_44b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz v12, :cond_4eb

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getUserId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_49f

    const-string/jumbo v12, "DefaultIMEPackage ---  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "(UserId:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getUserId()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_49f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderEnabled:Z

    if-eqz v12, :cond_4eb

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4eb

    const-string/jumbo v12, "DefaultIMEPackage ---  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "(UserId:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4eb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v12, :cond_54b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v12, v12, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v12, :cond_54b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    if-eqz v12, :cond_54b

    const-string/jumbo v12, "mFreezeTargetPackages "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_508
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v2, v12, :cond_54b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_548

    const/4 v3, 0x0

    :goto_51f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_548

    const-string/jumbo v12, "--PackageName "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_51f

    :cond_548
    add-int/lit8 v2, v2, 0x1

    goto :goto_508

    :cond_54b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkg:Ljava/lang/String;

    if-eqz v12, :cond_565

    const-string/jumbo v12, "LockScreenPackage ---  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkg:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_565
    .catchall {:try_start_240 .. :try_end_565} :catchall_23d

    :cond_565
    monitor-exit v13

    return-void
.end method

.method public dumpMARsPolicyInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 36

    const-string/jumbo v29, "ACTIVITY MANAGER MARs Policy(dumpsys activity mars policyinfo)"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v29, "MainPolicy"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :goto_25
    move/from16 v0, v17

    if-ge v11, v0, :cond_1df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->num:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->enabled:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->targetCategory:I

    move/from16 v28, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->restriction:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->action:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->firstTriggerTime:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->repeatTriggerTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/MARsVersionManager$PolicyInfo;->bigdataRestriction:I

    const-string/jumbo v29, "--policyName "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%10s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v21, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--policyNum "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--isPolicyEnabled "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%6s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--targetCategory "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--restriction "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%12d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--killType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--firstTriggerTime "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--repeatTriggerTime "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--bigdataRestriction "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_25

    :cond_1df
    const-string/jumbo v29, "AdjustTargetExcludePackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :goto_1fa
    move/from16 v0, v17

    if-ge v11, v0, :cond_2b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget v0, v10, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    move/from16 v22, v0

    iget v7, v10, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    iget-object v0, v10, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v29, "--policyNum "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%2d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--condition "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%3d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--matchType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%16s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v19, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--packageName "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1fa

    :cond_2b3
    const-string/jumbo v29, "AdjustTargetImportantPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :goto_2ce
    move/from16 v0, v17

    if-ge v11, v0, :cond_330

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v0, v8, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    move/from16 v22, v0

    iget v9, v8, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    const-string/jumbo v29, "--policyNum "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%2d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--currentImportantValue "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2ce

    :cond_330
    const-string/jumbo v29, "AdjustRestriction"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v11, 0x0

    :goto_34b
    move/from16 v0, v17

    if-ge v11, v0, :cond_413

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->restrictionType:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v14, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->isAllowed:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    const-string/jumbo v29, "--restrictionType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%4d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--isAllowed "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "%6s"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v14, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--callee "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--caller "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--actionMatchType "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, "--action "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v29, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_34b

    :cond_413
    return-void
.end method

.method executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
    .registers 23

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_33

    :cond_f
    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "executePolicy policy = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not enabled!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v13, :cond_68

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "executePolicy policy = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", reason = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveNotifications()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_70
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->generateTargetPackages(Lcom/android/server/am/MARsPolicyManager$Policy;)Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v8

    const/4 v2, 0x0

    :goto_75
    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_149

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_8a
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_145

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageStatus;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v13

    if-eqz v13, :cond_d4

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v13, :cond_d1

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    :goto_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    :cond_d4
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    iput v13, v7, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v13, :cond_106

    iget-boolean v13, v7, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    if-eqz v13, :cond_106

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "skip to kill cocktailBar package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_70 .. :try_end_102} :catchall_103

    goto :goto_d1

    :catchall_103
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_106
    :try_start_106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_143

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_143

    iget-boolean v13, v7, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    :goto_116
    if-nez v13, :cond_129

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v13, v15, v1}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v13

    if-nez v13, :cond_d1

    :cond_129
    new-instance v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v13, v7, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/MARsPackageStatus;->uid:I

    iget v0, v7, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v5, v0, v13, v15, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_142
    .catchall {:try_start_106 .. :try_end_142} :catchall_103

    goto :goto_d1

    :cond_143
    const/4 v13, 0x0

    goto :goto_116

    :cond_145
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_75

    :cond_149
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_14f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getRunningPackage()Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    :goto_15c
    if-ltz v2, :cond_20b

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_1d0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v15, 0x4

    if-ne v13, v15, :cond_1ad

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mLastScreenOffTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMinForceKillTime:J

    move-wide/from16 v18, v0

    cmp-long v13, v16, v18

    if-lez v13, :cond_1ec

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-wide v0, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->lastUsedTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMaxForceKillTime:J

    move-wide/from16 v18, v0

    cmp-long v13, v16, v18

    if-lez v13, :cond_1ec

    iget-boolean v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    if-eqz v13, :cond_1ad

    const-string/jumbo v13, "MARsKill"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)V

    :cond_1ad
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_1ba

    const/4 v13, 0x2

    iput v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    const/4 v13, 0x0

    iput v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAREsTriggeredReason:I

    :cond_1ba
    iget-object v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1, v15}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;I)Z

    move-result v13

    if-eqz v13, :cond_207

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    :cond_1d0
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_1e8

    iget v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_1e8

    const/4 v13, 0x1

    iput v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    iget-object v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->sendPackageRestartedIntent(Ljava/lang/String;I)V

    :cond_1e8
    :goto_1e8
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_15c

    :cond_1ec
    iget-boolean v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    if-eqz v13, :cond_1fa

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1f3
    .catchall {:try_start_14f .. :try_end_1f3} :catchall_1f4

    goto :goto_1e8

    :catchall_1f4
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :cond_1fa
    :try_start_1fa
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/server/am/MARsPolicyManager;->freezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ad

    goto :goto_1e8

    :cond_207
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_20a
    .catchall {:try_start_1fa .. :try_end_20a} :catchall_1f4

    goto :goto_1e8

    :cond_20b
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v2, 0x0

    :goto_215
    :try_start_215
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_285

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v13, v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v4

    if-eqz v4, :cond_26d

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageStatus;)V

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v4, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    iget-object v13, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v13, :cond_270

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    iget-object v13, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24c
    :goto_24c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v15, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_26d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v15, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_26d
    add-int/lit8 v2, v2, 0x1

    goto :goto_215

    :cond_270
    iget-object v13, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24c

    iget-object v13, v4, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_281
    .catchall {:try_start_215 .. :try_end_281} :catchall_282

    goto :goto_24c

    :catchall_282
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_285
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_2a0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_2a0

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2a0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    :cond_2a0
    return-void
.end method

.method public forceRunPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILjava/lang/String;I)V
    .registers 30

    new-instance v10, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    if-eqz v7, :cond_1e

    iget-boolean v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    move/from16 v17, v0

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_29

    :cond_1e
    const-string/jumbo v17, "policy is not exist or not enabled!"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveNotifications()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_3d
    const-string/jumbo v17, "all"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_be

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->generateTargetPackages(Lcom/android/server/am/MARsPolicyManager$Policy;)Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v12

    :goto_50
    const/4 v4, 0x0

    :goto_51
    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1b7

    invoke-virtual {v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_6a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_1b3

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/MARsPackageStatus;

    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v17

    if-eqz v17, :cond_f9

    sget-boolean v17, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v17, :cond_bb

    const-string/jumbo v17, "MARsPolicyManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    :goto_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v6

    if-eqz v6, :cond_ed

    new-instance v12, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iget-object v0, v6, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1, v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_e8
    .catchall {:try_start_3d .. :try_end_e8} :catchall_ea

    goto/16 :goto_50

    :catchall_ea
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_ed
    :try_start_ed
    const-string/jumbo v17, "not our managed package!"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_ea

    monitor-exit v18

    return-void

    :cond_f9
    :try_start_f9
    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_132

    iget-boolean v0, v11, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_132

    const-string/jumbo v17, "MARsPolicyManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "skip to kill cocktailBar package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18d

    iget-boolean v0, v11, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    move/from16 v17, v0

    :goto_14c
    if-nez v17, :cond_190

    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v17

    if-eqz v17, :cond_190

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " is CurrentImportantPackage !!!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_bb

    :cond_18d
    const/16 v17, 0x0

    goto :goto_14c

    :cond_190
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v11, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v11, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move/from16 v19, v0

    iget v0, v11, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b1
    .catchall {:try_start_f9 .. :try_end_1b1} :catchall_ea

    goto/16 :goto_bb

    :cond_1b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_51

    :cond_1b7
    monitor-exit v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_1bf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getRunningPackage()Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v10

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    :goto_1cc
    if-ltz v4, :cond_2b8

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_262

    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_22e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mLastScreenOffTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMinForceKillTime:J

    move-wide/from16 v22, v0

    cmp-long v17, v20, v22

    if-lez v17, :cond_295

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    iget-wide v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->lastUsedTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMaxForceKillTime:J

    move-wide/from16 v22, v0

    cmp-long v17, v20, v22

    if-lez v17, :cond_295

    iget-boolean v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_22e

    const-string/jumbo v17, "MARsKill"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)V

    :cond_22e
    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_246

    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAREsTriggeredReason:I

    :cond_246
    iget-object v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;I)Z

    move-result v17

    if-eqz v17, :cond_2b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    :cond_262
    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_291

    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    move/from16 v17, v0

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_291

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    iget-object v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->sendPackageRestartedIntent(Ljava/lang/String;I)V

    :cond_291
    :goto_291
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1cc

    :cond_295
    iget-boolean v0, v14, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2a5

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_29e
    .catchall {:try_start_1bf .. :try_end_29e} :catchall_29f

    goto :goto_291

    :catchall_29f
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :cond_2a5
    :try_start_2a5
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/server/am/MARsPolicyManager;->freezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22e

    goto :goto_291

    :cond_2b4
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2b7
    .catchall {:try_start_2a5 .. :try_end_2b7} :catchall_29f

    goto :goto_291

    :cond_2b8
    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    const/4 v4, 0x0

    :goto_2c4
    :try_start_2c4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_398

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v13, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v13, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v8

    if-eqz v8, :cond_342

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageStatus;)V

    iget v0, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v17, v0

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_37e

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_311
    :goto_311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v8, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_342

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v8, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_342
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "add mRestrictedPackages "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, " policy --"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2c4

    :cond_37e
    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_311

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_393
    .catchall {:try_start_2c4 .. :try_end_393} :catchall_395

    goto/16 :goto_311

    :catchall_395
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_398
    monitor-exit v18

    return-void
.end method

.method public forceRunPolicyForMemoryNotEnough(IZ)V
    .registers 21

    new-instance v7, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-boolean v13, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_22

    :cond_18
    const-string/jumbo v13, "MARsPolicyManager"

    const-string/jumbo v14, "policy is not exist or not enabled!"

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveNotifications()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v2, 0x0

    :goto_2b
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v2, v13, :cond_fd

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_48
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v3, v13, :cond_f9

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageStatus;

    iget v13, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v13

    if-eqz v13, :cond_8e

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v13, :cond_8b

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_8e
    iget v13, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    iput v13, v8, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v13, :cond_be

    iget-boolean v13, v8, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    if-eqz v13, :cond_be

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "skip to kill cocktailBar package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_2b .. :try_end_ba} :catchall_bb

    goto :goto_8b

    :catchall_bb
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_be
    :try_start_be
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_f7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_f7

    iget-boolean v13, v8, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    :goto_ce
    if-nez v13, :cond_dd

    iget v13, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v8, v13, v1, v15}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v13

    if-nez v13, :cond_8b

    :cond_dd
    new-instance v6, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v15, v8, Lcom/android/server/am/MARsPackageStatus;->uid:I

    iget v0, v8, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v6, v0, v13, v15, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catchall {:try_start_be .. :try_end_f6} :catchall_bb

    goto :goto_8b

    :cond_f7
    const/4 v13, 0x0

    goto :goto_ce

    :cond_f9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2b

    :cond_fd
    monitor-exit v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_103
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getRunningPackage()Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    :goto_110
    if-ltz v2, :cond_176

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_14f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_13e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_13e

    iget-boolean v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    if-eqz v13, :cond_13e

    const-string/jumbo v13, "EmergencyKill"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)V

    :cond_13e
    if-eqz p2, :cond_152

    const/4 v13, 0x2

    :goto_141
    iput v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isAREsTriggeredReason:I

    iget v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_154

    iget-object v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/MARsPolicyManager;->killAutoRunOnPackage(Ljava/lang/String;)V

    :cond_14f
    :goto_14f
    add-int/lit8 v2, v2, -0x1

    goto :goto_110

    :cond_152
    const/4 v13, 0x1

    goto :goto_141

    :cond_154
    const/4 v13, 0x2

    iput v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isSendPackageRestart:I

    iget-object v13, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v15}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;I)Z

    move-result v13

    if-eqz v13, :cond_172

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J
    :try_end_16b
    .catchall {:try_start_103 .. :try_end_16b} :catchall_16c

    goto :goto_14f

    :catchall_16c
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    :cond_172
    :try_start_172
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_175
    .catchall {:try_start_172 .. :try_end_175} :catchall_16c

    goto :goto_14f

    :cond_176
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v2, 0x0

    :goto_180
    :try_start_180
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_224

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget v13, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_199

    iget v13, v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->autorun:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_199

    :goto_196
    add-int/lit8 v2, v2, 0x1

    goto :goto_180

    :cond_199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v15, v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    iget v0, v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v15, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v5

    if-eqz v5, :cond_1e9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageStatus;)V

    iget v13, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v5, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    iget-object v13, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v13, :cond_216

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    iget-object v13, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c8
    :goto_1c8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v15, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v0, v5, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1e9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v15, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v0, v5, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0, v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1e9
    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "add mRestrictedPackages "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " policy --"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_212
    .catchall {:try_start_180 .. :try_end_212} :catchall_213

    goto :goto_196

    :catchall_213
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_216
    :try_start_216
    iget-object v13, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c8

    iget-object v13, v5, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_223
    .catchall {:try_start_216 .. :try_end_223} :catchall_213

    goto :goto_1c8

    :cond_224
    monitor-exit v14

    return-void
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v16, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    new-instance v14, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v11

    if-eqz v11, :cond_23

    iget-boolean v0, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_2d

    :cond_23
    const-string/jumbo v22, "MARsPolicyManager"

    const-string/jumbo v23, "policy is not exist or not enabled!"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getActiveNotifications()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    const/4 v5, 0x0

    :goto_42
    :try_start_42
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getUserId()I

    move-result v20

    const/4 v10, 0x0

    const-string/jumbo v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_cf

    const-string/jumbo v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a7

    array-length v0, v9

    move/from16 v22, v0

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_a7

    const/16 v22, 0x0

    aget-object v22, v9, v22

    if-eqz v22, :cond_89

    const/16 v22, 0x0

    aget-object v8, v9, v22
    :try_end_89
    .catchall {:try_start_42 .. :try_end_89} :catchall_cc

    :cond_89
    const/16 v22, 0x1

    :try_start_8b
    aget-object v22, v9, v22

    if-eqz v22, :cond_97

    const/16 v22, 0x1

    aget-object v22, v9, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_96} :catch_bd
    .catchall {:try_start_8b .. :try_end_96} :catchall_cc

    move-result v20

    :cond_97
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v10

    :cond_a7
    :goto_a7
    if-eqz v10, :cond_ba

    iget-object v0, v10, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v10, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :catch_bd
    move-exception v4

    const-string/jumbo v22, "MARsPolicyManager"

    const-string/jumbo v24, "forceRunPolicyForSpecificPackage parseInt error!"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_97 .. :try_end_cb} :catchall_cc

    goto :goto_97

    :catchall_cc
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_cf
    move-object v8, v7

    :try_start_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v10

    goto :goto_a7

    :cond_e1
    const/4 v5, 0x0

    :goto_e2
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_1e6

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseArray;

    const/4 v6, 0x0

    :goto_fb
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_1e2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/MARsPackageStatus;

    iget v0, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v22

    if-eqz v22, :cond_14f

    sget-boolean v22, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v22, :cond_14c

    const-string/jumbo v22, "MARsPolicyManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14c
    :goto_14c
    add-int/lit8 v6, v6, 0x1

    goto :goto_fb

    :cond_14f
    iget v0, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v15, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_188

    iget-boolean v0, v15, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    move/from16 v22, v0

    if-eqz v22, :cond_188

    const-string/jumbo v22, "MARsPolicyManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "skip to kill cocktailBar package "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1df

    iget-boolean v0, v15, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    move/from16 v22, v0

    :goto_1a2
    if-nez v22, :cond_1ba

    iget v0, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v22, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v22

    if-nez v22, :cond_14c

    :cond_1ba
    new-instance v13, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    iget-object v0, v15, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v15, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move/from16 v24, v0

    iget v0, v15, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageStatus;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1dd
    .catchall {:try_start_d0 .. :try_end_1dd} :catchall_cc

    goto/16 :goto_14c

    :cond_1df
    const/16 v22, 0x0

    goto :goto_1a2

    :cond_1e2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e2

    :cond_1e6
    monitor-exit v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_1ee
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v5, v22, -0x1

    :goto_1f7
    if-ltz v5, :cond_25c

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v22, v0

    if-eqz v22, :cond_22b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22b

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFreezed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22b

    const-string/jumbo v22, "SM_Kill"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Ljava/lang/String;)V

    :cond_22b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;I)Z

    move-result v22

    if-eqz v22, :cond_250

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J

    :goto_24d
    add-int/lit8 v5, v5, -0x1

    goto :goto_1f7

    :cond_250
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_255
    .catchall {:try_start_1ee .. :try_end_255} :catchall_256

    goto :goto_24d

    :catchall_256
    move-exception v22

    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v22

    :cond_25c
    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    const/4 v5, 0x0

    :goto_268
    :try_start_268
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_33c

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v12

    if-eqz v12, :cond_2f0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageStatus;)V

    iget v0, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x100

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_323

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2bf
    :goto_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v22, v0

    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v12, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_2f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v22, v0

    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v12, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2f0
    const-string/jumbo v22, "MARsPolicyManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "add mRestrictedPackages "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " policy --"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_268

    :cond_323
    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2bf

    iget-object v0, v12, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_338
    .catchall {:try_start_268 .. :try_end_338} :catchall_339

    goto :goto_2bf

    :catchall_339
    move-exception v22

    monitor-exit v23

    throw v22

    :cond_33c
    monitor-exit v23

    return-void
.end method

.method public getAppUsedRecentlyState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    return v0
.end method

.method public getCarModeOnState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    return v0
.end method

.method getDualAppEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    return v0
.end method

.method getDualAppUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    return v0
.end method

.method public getEmergencyKillEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsEmergencyKillEnabled:Z

    return v0
.end method

.method getFakeTopActivityList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFakeTopActivityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFreecessEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getFreecessSkipTimeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFreecessSkipTimeEnabled:Z

    return v0
.end method

.method public getImmediateKillEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsImmediateKillEnabled:Z

    return v0
.end method

.method getIsDataCleared(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-gez p2, :cond_f

    :cond_5
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "getIsDataCleared pkg info is error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isDataCleared:Z
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    monitor-exit v2

    return v1

    :cond_1e
    monitor-exit v2

    return v3

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLCDonKillEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLCDonKillEnabled:Z

    return v0
.end method

.method public getMARsEnabled()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return v0
.end method

.method getManagedSMDBValueList()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "getManagedSMDBValueList"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v7, 0x0

    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    const/4 v8, 0x0

    :goto_2f
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_5b

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageStatus;

    new-instance v0, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v3, v9, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v3, v9, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_60

    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_5e
    monitor-exit v12

    return-object v10

    :catchall_60
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_370

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_370

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_2e

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "getPkgInfoFromSMToMARs size = "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    :goto_34
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_2c0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/MARsDBManager$SMDBValue;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v5, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v19

    :cond_5a
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->convertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_75
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strUserId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v4

    if-eqz v4, :cond_119

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_9d

    const/16 v5, 0x10

    if-ne v7, v5, :cond_9d

    const/16 v20, 0x0

    :cond_9d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_c0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_c0

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c0

    const/4 v5, 0x1

    if-ne v7, v5, :cond_c0

    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    :cond_c0
    iput v7, v4, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-nez v5, :cond_ce

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    iput-wide v0, v4, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    :cond_ce
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_e4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_e4

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v5, :cond_e9

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I
    :try_end_e4
    .catchall {:try_start_75 .. :try_end_e4} :catchall_112

    :cond_e4
    :goto_e4
    monitor-exit v26

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_34

    :cond_e9
    :try_start_e9
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v5, :cond_115

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v5, :cond_10d

    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_10d

    iget-object v5, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v6}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    :cond_10d
    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I
    :try_end_111
    .catchall {:try_start_e9 .. :try_end_111} :catchall_112

    goto :goto_e4

    :catchall_112
    move-exception v5

    monitor-exit v26

    throw v5

    :cond_115
    const/4 v5, 0x0

    :try_start_116
    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_e4

    :cond_119
    const-wide/16 v8, 0x0

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-eqz v5, :cond_129

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v10

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strUserId:Ljava/lang/String;

    if-eqz v5, :cond_13f

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strUserId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_13f
    const/4 v11, -0x1

    const-string/jumbo v12, ""

    const-string/jumbo v13, ""
    :try_end_146
    .catchall {:try_start_116 .. :try_end_146} :catchall_112

    const/4 v14, 0x0

    :try_start_147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v23

    if-eqz v15, :cond_169

    iget v11, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_169
    if-eqz v23, :cond_182

    move-object/from16 v0, v23

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v28, v0
    :try_end_179
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_147 .. :try_end_179} :catch_282
    .catchall {:try_start_147 .. :try_end_179} :catchall_112

    sub-long v28, v8, v28

    const-wide/16 v30, 0x0

    cmp-long v5, v28, v30

    if-lez v5, :cond_27f

    const/4 v14, 0x1

    :cond_182
    :goto_182
    :try_start_182
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v5, :cond_19a

    const/16 v5, 0x10

    if-eq v7, v5, :cond_190

    const/16 v5, 0x8

    if-ne v7, v5, :cond_19a

    :cond_190
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_19a

    const/16 v20, 0x1

    :cond_19a
    new-instance v4, Lcom/android/server/am/MARsPackageStatus;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-direct/range {v4 .. v14}, Lcom/android/server/am/MARsPackageStatus;-><init>(Landroid/content/Context;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsDataCleared:Ljava/lang/String;

    if-eqz v5, :cond_1b7

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsDataCleared:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->isDataCleared:Z

    :cond_1b7
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v5, :cond_1d7

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1d7

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    if-eqz v5, :cond_1d7

    if-eqz v19, :cond_1d7

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    :cond_1d7
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    if-eqz v5, :cond_1ec

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/am/MARsPolicyManager;->isCocktailBarEnabledPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1ec

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    :cond_1ec
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v5, :cond_1fc

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->packageType:I

    :cond_1fc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_272

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_272

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v5, :cond_2a9

    move/from16 v0, v22

    iput v0, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    :goto_212
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    if-eqz v5, :cond_227

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_227

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    :cond_227
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    const/16 v27, 0x5

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v5, v0, v1, v2, v6}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_244

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->isInBlackListTopActivity:Z

    :cond_244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    const/16 v27, 0x6

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_261

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaVideoApp:Z

    :cond_261
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/MARsPolicyManager;->updateChinaSpecialList(Lcom/android/server/am/MARsPackageStatus;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    if-eqz v5, :cond_272

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v5, :cond_272

    const/16 v21, 0x1

    :cond_272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6, v10, v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e4

    :cond_27f
    const/4 v14, 0x0

    goto/16 :goto_182

    :catch_282
    move-exception v16

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "NameNotFoundException occurred for package :"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e4

    :cond_2a9
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v5, :cond_2bb

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto/16 :goto_212

    :cond_2bb
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/am/MARsPackageStatus;->autorun:I
    :try_end_2be
    .catchall {:try_start_182 .. :try_end_2be} :catchall_112

    goto/16 :goto_212

    :cond_2c0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2c5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z

    if-nez v5, :cond_2e9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v5

    if-lez v5, :cond_2e9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderEnabled:Z

    if-eqz v5, :cond_371

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged(I)V

    :goto_2e4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z
    :try_end_2e9
    .catchall {:try_start_2c5 .. :try_end_2e9} :catchall_380

    :cond_2e9
    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_328

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_328

    if-eqz v20, :cond_328

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getUserId()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v5, :cond_36b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v5, :cond_36b

    if-eqz v21, :cond_36b

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getUserId()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeExcutingPolicy:Z

    :cond_36b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    :cond_370
    return-void

    :cond_371
    :try_start_371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged(I)V
    :try_end_37e
    .catchall {:try_start_371 .. :try_end_37e} :catchall_380

    goto/16 :goto_2e4

    :catchall_380
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    :cond_18
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    :cond_1e
    const/4 v0, 0x6

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOnState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    return v0
.end method

.method getSecureFolderEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderEnabled:Z

    return v0
.end method

.method getSecureFolderUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    return v0
.end method

.method getUnusedAREsTimeForSluggishAging()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTimeForAging:J

    return-wide v0
.end method

.method public handlePowerOff()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager;->doUpdateCompHistory(Z)V

    return-void
.end method

.method public init(Z)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->registerEmStateReceiver()V

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isMARsSupported()Z

    move-result v3

    if-nez v3, :cond_10

    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return-void

    :cond_10
    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->isGraceUIAvailable()Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "GraceUI is available"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    :cond_23
    :try_start_23
    const-string/jumbo v3, "sys.config.mars_version"

    const-string/jumbo v4, "2.10"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2c} :catch_109

    :goto_2c
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MARsDBManager;->getMARsPolicyCondition(Z)V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerEnabledAccessibilityServicesChanged()V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerEnabledCocktailBarChanged()V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultDialerSettingsChanged()V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerDefaultSmsSettingsChanged()V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->getActiveAdminsPackages(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsDBManager;->initSettingFromUI()V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsDBManager;->initSKTPackagesWhiteList()V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->getDefaultDialerPackage(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->getDefaultSmsPackage(I)V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledCocktailBarList()V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_ce

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-nez v3, :cond_ce

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    const/16 v4, 0x96

    if-lt v3, v4, :cond_ce

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    const/16 v4, 0xa0

    if-gt v3, v4, :cond_ce

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget v4, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/MARsTrigger;->registerSecureFolderReceiver(I)V

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->getActiveAdminsPackages(I)V

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->getDefaultIMEPackage(I)V

    :cond_ce
    :try_start_ce
    const-string/jumbo v3, "sys.dualapp.profile_id"

    const-string/jumbo v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    const/16 v4, 0x5f

    if-lt v3, v4, :cond_fb

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_fb

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/MARsTrigger;->registerDualAppReceiver(I)V

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/MARsDBManager;->updateDualAppList(I)V
    :try_end_fb
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_fb} :catch_115

    :cond_fb
    :goto_fb
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mNotificationManager:Landroid/app/INotificationManager;

    return-void

    :catch_109
    move-exception v0

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "init(), we cannot set system property"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :catch_115
    move-exception v1

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "init() get DualAppUserId failed!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb
.end method

.method public initInternal(Z)V
    .registers 9

    const/4 v6, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ChinaNalSecurity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    :cond_17
    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isChinaNal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_41

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    if-eqz v3, :cond_1cb

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_49
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v6, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_51
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnabledState()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_5d
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsDLManager;->init()V

    :cond_62
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_DEBUG_ENABLE:Z

    if-eqz v3, :cond_e7

    const-string/jumbo v3, "ChinaNalSecurity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    const-string/jumbo v3, "sys.config.mars_autorun"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    const/4 v1, 0x1

    :goto_83
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v1, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initInternal --- AR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    if-eqz v3, :cond_e7

    const-string/jumbo v3, "sys.config.mars_applocker"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    const/4 v0, 0x1

    :goto_c1
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initInternal app sleep --- AL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    :goto_e7
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsVersionManager;->isAppStartUpHistoryEnabled()Z

    move-result v3

    if-eqz v3, :cond_fa

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "App StartUp History is enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    :cond_fa
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_109

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    :cond_109
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_118

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_118

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v3}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    :cond_118
    if-eqz p1, :cond_135

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_124

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_12e

    :cond_124
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_135

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_135

    :cond_12e
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(J)V

    :cond_135
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_145

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_145

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getBoundAppWidgetPackages()V

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->getEnabledAccessibilityPackage()V

    :cond_145
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1ca

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1ca

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", AR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", AS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", FZ = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", UD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", SB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ca
    return-void

    :cond_1cb
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto/16 :goto_41

    :cond_1d2
    const/4 v1, 0x0

    goto/16 :goto_83

    :cond_1d5
    const/4 v0, 0x0

    goto/16 :goto_c1

    :cond_1d8
    const-string/jumbo v3, "sys.config.mars_applocker"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_214

    const/4 v0, 0x1

    :goto_1ec
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v0, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initInternal --- AL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v5, v5, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    :cond_214
    const/4 v0, 0x0

    goto :goto_1ec
.end method

.method isActiveAudioMode()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2a

    :cond_28
    move v0, v1

    :goto_29
    return v0

    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_35

    move v0, v1

    goto :goto_29

    :cond_35
    move v0, v2

    goto :goto_29
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :goto_a
    if-nez v1, :cond_18

    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v3, "AR not enabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_16
    move v1, v2

    goto :goto_a

    :cond_18
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v1, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v1, v6, :cond_4b

    :cond_27
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v1, :cond_49

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Auto run ON, userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_a5

    :cond_49
    monitor-exit v3

    return v2

    :cond_4b
    const/4 v1, 0x2

    :try_start_4c
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Lcom/android/server/am/MARsPackageStatus;I)Z
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_a5

    move-result v1

    if-eqz v1, :cond_54

    monitor-exit v3

    return v2

    :cond_54
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_57
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z

    move-result v1

    if-eqz v1, :cond_81

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v1, :cond_7f

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " skip current important package, userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_57 .. :try_end_7f} :catchall_a5

    :cond_7f
    monitor-exit v3

    return v2

    :cond_81
    :try_start_81
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v1, :cond_a3

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " Auto run OFF, userId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_81 .. :try_end_a3} :catchall_a5

    :cond_a3
    monitor-exit v3

    return v6

    :catchall_a5
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;IZZ)Z
    .registers 23

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    const/4 v4, 0x3

    move/from16 v0, p2

    if-ne v0, v4, :cond_46

    const-string/jumbo v4, "com.tencent.mm"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v4, :cond_44

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CurrentImportantPackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - imptmsger for ares!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 v4, 0x1

    return v4

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v4, v4, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v4, v4, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_6a
    if-eqz p3, :cond_72

    if-eqz p4, :cond_130

    xor-int/lit8 v15, v15, 0x1

    xor-int/lit8 v15, v15, 0x2

    :cond_72
    :goto_72
    const/16 v17, 0x1

    :goto_74
    const v4, 0x8000

    move/from16 v0, v17

    if-gt v0, v4, :cond_204

    and-int v4, v15, v17

    sparse-switch v4, :sswitch_data_228

    :goto_80
    if-eqz v16, :cond_200

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    if-eqz v4, :cond_12a

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v4, v4, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_ad

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v4, v4, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :cond_ad
    if-nez v13, :cond_b1

    const/16 v13, 0x4f1b

    :cond_b1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/MARsPolicyManager;->ConvertSkipReason(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, v13

    if-nez v4, :cond_d2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    :cond_d2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/MARsPolicyManager;->KILL_THRESHOLD:I

    if-le v4, v5, :cond_12a

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    if-lez v4, :cond_12a

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_12a

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyTrigger:Z

    if-nez v4, :cond_120

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/MARsPackageStatus;->versionName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/MARsHandler;->sendBigDataInfoFromMARs(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyTrigger:Z

    :cond_120
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    :cond_12a
    const/4 v4, 0x1

    return v4

    :cond_12c
    const/16 v15, 0x476c

    goto/16 :goto_6a

    :cond_130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v4, v4, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    and-int/2addr v15, v14

    goto/16 :goto_72

    :sswitch_148
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isRecentlyUsedPackage(Lcom/android/server/am/MARsPackageStatus;ZIZ)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_157
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isLatestProtectedPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_162
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isOngoingNotificationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_16d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/MARsPolicyManager;->isWidgetPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_17a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isNoAppIconPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_185
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isVpnServicePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_190
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActivePackage(Lcom/android/server/am/MARsPackageStatus;ZZ)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_19d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1a8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isDeviceAdminPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1b3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isWallPaperPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1be
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isDefaultPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1c9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isHomePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1d4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isTopPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1df
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isLockScreenPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1ea
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystemPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :sswitch_1f5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/MARsPolicyManager;->isRunningLocationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v16

    goto/16 :goto_80

    :cond_200
    shl-int/lit8 v17, v17, 0x1

    goto/16 :goto_74

    :cond_204
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    if-eqz v4, :cond_226

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/MARsPolicyManager;->KILL_THRESHOLD:I

    if-le v4, v5, :cond_226

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    :cond_226
    const/4 v4, 0x0

    return v4

    :sswitch_data_228
    .sparse-switch
        0x1 -> :sswitch_148
        0x2 -> :sswitch_157
        0x4 -> :sswitch_162
        0x8 -> :sswitch_16d
        0x10 -> :sswitch_17a
        0x20 -> :sswitch_185
        0x40 -> :sswitch_190
        0x80 -> :sswitch_19d
        0x100 -> :sswitch_1a8
        0x200 -> :sswitch_1b3
        0x400 -> :sswitch_1be
        0x800 -> :sswitch_1c9
        0x1000 -> :sswitch_1d4
        0x2000 -> :sswitch_1df
        0x4000 -> :sswitch_1ea
        0x8000 -> :sswitch_1f5
    .end sparse-switch
.end method

.method public isCurrentImportantPackageForDump(Lcom/android/server/am/MARsPackageStatus;I)I
    .registers 12

    const v8, 0x8000

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v4, v4, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    :goto_1a
    if-gt v3, v8, :cond_b5

    and-int v4, v0, v3

    sparse-switch v4, :sswitch_data_b6

    :cond_21
    :goto_21
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :sswitch_24
    invoke-direct {p0, p1, v6, p2, v7}, Lcom/android/server/am/MARsPolicyManager;->isRecentlyUsedPackage(Lcom/android/server/am/MARsPackageStatus;ZIZ)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x1

    goto :goto_21

    :sswitch_2d
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isLatestProtectedPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x2

    goto :goto_21

    :sswitch_36
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isOngoingNotificationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x4

    goto :goto_21

    :sswitch_3f
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/am/MARsPolicyManager;->isWidgetPackage(Lcom/android/server/am/MARsPackageStatus;IZ)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x8

    goto :goto_21

    :sswitch_48
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isNoAppIconPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x10

    goto :goto_21

    :sswitch_51
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isVpnServicePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x20

    goto :goto_21

    :sswitch_5a
    invoke-direct {p0, p1, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->isMusicOrRecordActivePackage(Lcom/android/server/am/MARsPackageStatus;ZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v2, v2, 0x40

    goto :goto_21

    :sswitch_63
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x80

    goto :goto_21

    :sswitch_6c
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isDeviceAdminPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x100

    goto :goto_21

    :sswitch_75
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isWallPaperPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x200

    goto :goto_21

    :sswitch_7e
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isDefaultPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x400

    goto :goto_21

    :sswitch_87
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isHomePackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x800

    goto :goto_21

    :sswitch_90
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isTopPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x1000

    goto :goto_21

    :sswitch_99
    invoke-direct {p0, p1, v7}, Lcom/android/server/am/MARsPolicyManager;->isLockScreenPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x2000

    goto :goto_21

    :sswitch_a2
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isDependsOnSystemPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit16 v2, v2, 0x4000

    goto/16 :goto_21

    :sswitch_ac
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/MARsPolicyManager;->isRunningLocationPackage(Lcom/android/server/am/MARsPackageStatus;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/2addr v2, v8

    goto/16 :goto_21

    :cond_b5
    return v2

    :sswitch_data_b6
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_2d
        0x4 -> :sswitch_36
        0x8 -> :sswitch_3f
        0x10 -> :sswitch_48
        0x20 -> :sswitch_51
        0x40 -> :sswitch_5a
        0x80 -> :sswitch_63
        0x100 -> :sswitch_6c
        0x200 -> :sswitch_75
        0x400 -> :sswitch_7e
        0x800 -> :sswitch_87
        0x1000 -> :sswitch_90
        0x2000 -> :sswitch_99
        0x4000 -> :sswitch_a2
        0x8000 -> :sswitch_ac
    .end sparse-switch
.end method

.method public isFreezedPackage(Ljava/lang/String;I)Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_12
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isInChinaSpecialList(Ljava/lang/String;I)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaApp:Z

    if-eqz v1, :cond_17

    iget v1, v0, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1a

    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_17
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method isMARsSupported()Z
    .registers 6

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1c

    const/4 v2, 0x1

    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public isPolicyEnabled()Z
    .registers 4

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_10

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-boolean v2, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 v2, 0x0

    return v2
.end method

.method public isPolicyEnabled(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return v1

    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;I)Z
    .registers 17

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v4, :cond_74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v4

    if-eqz v4, :cond_74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/util/SparseArray;

    if-eqz v35, :cond_74

    const/16 v23, 0x0

    :goto_3a
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_74

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/MARsPackageStatus;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    if-nez v4, :cond_5e

    const-string/jumbo v4, "MARsPolicyManager"

    const-string/jumbo v6, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    add-int/lit8 v23, v23, 0x1

    goto :goto_3a

    :cond_5e
    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->skipRestrictionReason:Ljava/lang/String;

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move/from16 v0, p8

    if-eq v0, v4, :cond_70

    const/4 v4, -0x1

    move/from16 v0, p8

    if-ne v0, v4, :cond_5b

    :cond_70
    const/16 v16, 0x1

    move-object/from16 v34, v30

    :cond_74
    if-eqz v34, :cond_84

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v4, :cond_84

    move-object/from16 v0, v34

    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z
    :try_end_80
    .catchall {:try_start_18 .. :try_end_80} :catchall_53f

    if-eqz v4, :cond_84

    const/16 v16, 0x0

    :cond_84
    if-nez v16, :cond_89

    const/4 v4, 0x0

    monitor-exit v36

    return v4

    :cond_89
    if-eqz v34, :cond_ac

    :try_start_8b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v4, :cond_ac

    move-object/from16 v0, v34

    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v4, :cond_ac

    const-string/jumbo v31, "ScreenOn"

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_8b .. :try_end_a9} :catchall_53f

    const/4 v4, 0x0

    monitor-exit v36

    return v4

    :cond_ac
    :try_start_ac
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_53f

    if-nez v4, :cond_b5

    const/4 v4, 0x0

    monitor-exit v36

    return v4

    :cond_b5
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_c9

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_c9

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_c9
    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v23, 0x0

    :goto_d1
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_156

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    move/from16 v33, v0

    const/high16 v4, 0x2000000

    and-int v4, v4, v33

    if-eqz v4, :cond_102

    const/high16 v22, 0x2000000

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v4, :cond_102

    const/16 v16, 0x0

    :cond_ff
    :goto_ff
    add-int/lit8 v23, v23, 0x1

    goto :goto_d1

    :cond_102
    const/high16 v4, 0x4000000

    and-int v4, v4, v33

    if-eqz v4, :cond_113

    const/high16 v22, 0x4000000

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v4, :cond_113

    const/16 v16, 0x0

    goto :goto_ff

    :cond_113
    const/high16 v4, 0x8000000

    and-int v4, v4, v33

    if-eqz v4, :cond_124

    const/high16 v22, 0x8000000

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-nez v4, :cond_124

    const/16 v16, 0x0

    goto :goto_ff

    :cond_124
    const/high16 v4, 0x10000000

    and-int v4, v4, v33

    if-eqz v4, :cond_135

    const/high16 v22, 0x10000000

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-eqz v4, :cond_135

    const/16 v16, 0x0

    goto :goto_ff

    :cond_135
    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string/jumbo v4, "activity"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21a

    and-int/lit8 v4, v33, 0x1

    if-eqz v4, :cond_1d4

    const/16 v22, 0x1

    const/16 v25, 0x1

    const/16 v24, 0x0

    :cond_14e
    :goto_14e
    if-nez v25, :cond_152

    const/16 v24, 0x1

    :cond_152
    xor-int/lit8 v16, v24, 0x1

    if-eqz v16, :cond_ff

    :cond_156
    if-nez v16, :cond_166

    if-eqz v32, :cond_166

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    const/16 v32, 0x0

    :cond_166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_43d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_43d

    move-object/from16 v0, v34

    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v4, :cond_43d

    xor-int/lit8 v4, v16, 0x1

    if-eqz v4, :cond_43d

    const-string/jumbo v31, "hostingType"

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v6, v1}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", userid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", hostingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is allowed by freecess, caller is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d1
    .catchall {:try_start_b5 .. :try_end_1d1} :catchall_53f

    const/4 v4, 0x0

    monitor-exit v36

    return v4

    :cond_1d4
    and-int/lit8 v4, v33, 0x2

    if-eqz v4, :cond_1e6

    const/16 v22, 0x2

    const/16 v25, 0x1

    :try_start_1dc
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    const/16 v24, 0x1

    :cond_1e6
    and-int/lit8 v4, v33, 0x4

    if-eqz v4, :cond_1fc

    const/16 v22, 0x4

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_1fc

    const/16 v24, 0x1

    :cond_1fc
    and-int/lit8 v4, v33, 0x8

    if-eqz v4, :cond_14e

    const/16 v22, 0x8

    if-eqz p1, :cond_14e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v6, v8, v9}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14e

    const/16 v25, 0x1

    goto/16 :goto_14e

    :cond_21a
    const-string/jumbo v4, "startService"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_230

    const-string/jumbo v4, "bindService"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a6

    :cond_230
    and-int/lit8 v4, v33, 0x10

    if-eqz v4, :cond_255

    const/16 v25, 0x1

    move-object/from16 v0, v34

    iget v9, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v26

    if-lez v26, :cond_255

    const/16 v24, 0x1

    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_255

    const/16 v22, 0x10

    :cond_255
    and-int/lit8 v4, v33, 0x20

    if-eqz v4, :cond_267

    const/16 v22, 0x20

    const/16 v25, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_267

    const/16 v24, 0x1

    :cond_267
    and-int/lit8 v4, v33, 0x40

    if-eqz v4, :cond_27d

    const/16 v22, 0x40

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_27d

    const/16 v24, 0x1

    :cond_27d
    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_14e

    const/16 v25, 0x1

    move-object/from16 v0, v34

    iget v9, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v26

    if-lez v26, :cond_14e

    const/16 v24, 0x1

    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_14e

    const/16 v22, 0x80

    goto/16 :goto_14e

    :cond_2a6
    const-string/jumbo v4, "provider"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32b

    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_2d6

    move-object/from16 v0, v34

    iget v9, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v26

    if-lez v26, :cond_2d6

    const/16 v24, 0x1

    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_2d6

    const/16 v22, 0x100

    :cond_2d6
    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_2ea

    const/16 v22, 0x200

    const/16 v25, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_2ea

    const/16 v24, 0x1

    :cond_2ea
    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_302

    const/16 v22, 0x400

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_302

    const/16 v24, 0x1

    :cond_302
    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_14e

    const/16 v25, 0x1

    move-object/from16 v0, v34

    iget v9, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/MARsPolicyManager;->isPolicyBlockedPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v26

    if-lez v26, :cond_14e

    const/16 v24, 0x1

    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_14e

    const/16 v22, 0x800

    goto/16 :goto_14e

    :cond_32b
    const-string/jumbo v4, "broadcast"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_424

    if-eqz p6, :cond_33e

    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_346

    :cond_33e
    const/16 v22, 0x1000

    const/16 v25, 0x1

    const/16 v24, 0x0

    goto/16 :goto_14e

    :cond_346
    const/16 v24, 0x0

    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_35c

    const/16 v22, 0x2000

    const/16 v25, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_35c

    const/16 v24, 0x1

    :cond_35c
    move/from16 v0, v33

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_374

    const/16 v22, 0x4000

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_374

    const/16 v24, 0x1

    :cond_374
    const v4, 0x8000

    and-int v4, v4, v33

    if-eqz v4, :cond_391

    const v22, 0x8000

    const/16 v25, 0x1

    const-string/jumbo v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_391

    const/16 v32, 0x1

    const/16 v24, 0x1

    :cond_391
    const/high16 v4, 0x10000

    and-int v4, v4, v33

    if-eqz v4, :cond_3a9

    const/high16 v22, 0x10000

    const/16 v25, 0x1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/android/server/am/MARsPolicyManager;->isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a9

    const/16 v24, 0x1

    :cond_3a9
    const/high16 v4, 0x20000

    and-int v4, v4, v33

    if-eqz v4, :cond_3dc

    const/high16 v22, 0x20000

    const/16 v25, 0x1

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3dc

    move-object/from16 v0, v34

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3dc

    const-string/jumbo v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3dc

    const-string/jumbo v4, "foreground"

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3dc

    const/16 v24, 0x1

    :cond_3dc
    const/high16 v4, 0x80000

    and-int v4, v4, v33

    if-eqz v4, :cond_3f0

    const/high16 v22, 0x80000

    const/16 v25, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/server/am/MARsPolicyManager;->isSelfIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f0

    const/16 v24, 0x1

    :cond_3f0
    const/high16 v4, 0x100000

    and-int v4, v4, v33

    if-eqz v4, :cond_408

    const/high16 v22, 0x100000

    const/16 v25, 0x1

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v4}, Lcom/android/server/am/MARsPolicyManager;->isEssentialIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_408

    const/16 v24, 0x1

    :cond_408
    const/high16 v4, 0x40000

    and-int v4, v4, v33

    if-eqz v4, :cond_14e

    const/high16 v22, 0x40000

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v4, :cond_14e

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_14e

    const/16 v24, 0x1

    goto/16 :goto_14e

    :cond_424
    const-string/jumbo v4, "backup"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14e

    const/high16 v4, 0x1000000

    and-int v4, v4, v33

    if-eqz v4, :cond_14e

    const/high16 v22, 0x1000000

    const/16 v25, 0x1

    const/16 v24, 0x0

    goto/16 :goto_14e

    :cond_43d
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_491

    if-eqz v16, :cond_491

    const-string/jumbo v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", userid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", hostingType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is Restricted by policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " caller is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_491
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    if-eqz v4, :cond_502

    move-object/from16 v0, v34

    iget-boolean v4, v0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    if-nez v4, :cond_502

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->increaseRestrictionCnt(Lcom/android/server/am/MARsPackageStatus;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictionCnt:I

    if-nez v16, :cond_4fb

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    packed-switch v4, :pswitch_data_556

    :goto_4b2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FILTER:I

    and-int v4, v4, v22

    if-nez v4, :cond_4c3

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->increaseRestrictionSkipCnt(Lcom/android/server/am/MARsPackageStatus;Ljava/lang/String;)V

    :cond_4c3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictionCnt:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    if-le v4, v6, :cond_4fb

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isSkipRestriction(Lcom/android/server/am/MARsPackageStatus;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    move-object/from16 v0, v27

    iget v7, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/server/am/MARsPackageStatus;->versionName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget v10, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    move-object/from16 v0, v34

    iget-object v11, v0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    move-object/from16 v13, p5

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/MARsHandler;->sendBigDataInfoFromMARs(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/MARsPolicyManager;->mRestrictionCnt:I

    :cond_4fb
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->initRestrictionCnt(Lcom/android/server/am/MARsPackageStatus;)V

    :cond_502
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    if-nez v4, :cond_533

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v4, :cond_533

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    if-ne v4, v6, :cond_533

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mComponentTracker:Lcom/android/server/am/MARsComponentTracker;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    move/from16 v20, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    move/from16 v21, v0

    move-object/from16 v17, p5

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/MARsComponentTracker;->trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_533
    .catchall {:try_start_1dc .. :try_end_533} :catchall_53f

    :cond_533
    monitor-exit v36

    return v16

    :pswitch_535
    :try_start_535
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_APPLOCKER:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FILTER:I
    :try_end_53d
    .catchall {:try_start_535 .. :try_end_53d} :catchall_53f

    goto/16 :goto_4b2

    :catchall_53f
    move-exception v4

    monitor-exit v36

    throw v4

    :pswitch_542
    :try_start_542
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_AUTORUN:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FILTER:I

    goto/16 :goto_4b2

    :pswitch_54c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_ARES:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_TYPES_BIGDATA_FLAG_FILTER:I
    :try_end_554
    .catchall {:try_start_542 .. :try_end_554} :catchall_53f

    goto/16 :goto_4b2

    :pswitch_data_556
    .packed-switch 0x1
        :pswitch_535
        :pswitch_542
        :pswitch_54c
    .end packed-switch
.end method

.method public isRunningPackage(Ljava/lang/String;I)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne p2, v3, :cond_13

    const/4 v3, 0x1

    return v3

    :cond_2f
    return v4
.end method

.method public onAlertToastWindowStarted(Ljava/lang/String;I)V
    .registers 8

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handelAlertToastWindowStarted pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object v0, p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_32
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3f

    :cond_3d
    monitor-exit v3

    return-void

    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_18

    :cond_e
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_62

    :cond_18
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageStatus;->isAppLaunched:Z

    if-eqz v1, :cond_5a

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7e

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GraceUI_Enable:Z

    if-eqz v1, :cond_28

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    :cond_28
    if-nez v0, :cond_2d

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_64

    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->convertStateToAutorun(I)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_7b

    :cond_62
    monitor-exit v7

    return-void

    :cond_64
    :try_start_64
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_7b

    goto :goto_5a

    :catchall_7b
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_7e
    :try_start_7e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_7b

    goto :goto_5a
.end method

.method public onAppUsedForTimeChanged(J)V
    .registers 20

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_20

    const-string/jumbo v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAppUsedForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v14, 0x1b7740

    cmp-long v3, v4, v14

    if-gez v3, :cond_39

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_38

    const-string/jumbo v3, "MARsPolicyManager"

    const-string/jumbo v4, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    :cond_39
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v8, 0x0

    :goto_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v8, v3, :cond_a6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    const/4 v9, 0x0

    :goto_61
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_a3

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPackageStatus;

    iget-wide v4, v10, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v14, 0x0

    cmp-long v3, v4, v14

    if-eqz v3, :cond_a0

    iget-wide v4, v10, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    add-long v4, v4, p1

    iput-wide v4, v10, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iget v3, v10, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/MARsPolicyManager;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v10, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v14, v10, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iget v7, v10, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    :cond_a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v3, v11}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V
    :try_end_ad
    .catchall {:try_start_44 .. :try_end_ad} :catchall_af

    monitor-exit v13

    return-void

    :catchall_af
    move-exception v3

    monitor-exit v13

    throw v3
.end method

.method public onAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAppWidgetManagerActions pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-eqz p1, :cond_7c

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v2

    if-nez v2, :cond_62

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;I)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    if-nez v0, :cond_51

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_8b

    :cond_60
    monitor-exit v3

    return-void

    :cond_62
    :try_start_62
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    if-eqz v1, :cond_7c

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_8b

    :cond_7c
    :goto_7c
    monitor-exit v3

    return-void

    :cond_7e
    :try_start_7e
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_8b

    goto :goto_7c

    :catchall_8b
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_8e
    :try_start_8e
    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I
    :try_end_9d
    .catchall {:try_start_8e .. :try_end_9d} :catchall_8b

    goto :goto_7c
.end method

.method public onDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v1, :cond_37

    const-string/jumbo v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceAdminActions pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-eqz p1, :cond_50

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_50

    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_5f

    :cond_50
    :goto_50
    monitor-exit v2

    return-void

    :cond_52
    :try_start_52
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5f

    goto :goto_50

    :catchall_5f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onNotificationBarClicked(Ljava/lang/String;I)V
    .registers 8

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handelNotificationBarClicked pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object v0, p1

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_32
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3f

    :cond_3d
    monitor-exit v3

    return-void

    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onPackagePausedBG(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 15

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v3, p2, p6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v3, :cond_34

    xor-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_34

    if-eqz p1, :cond_34

    const/4 v0, 0x0

    :goto_14
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v5, v3, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    if-eqz v2, :cond_31

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->isTop:Z

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_34
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_4a

    iget-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v3, :cond_4a

    if-eqz v1, :cond_4a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    :cond_4a
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_5e

    :cond_54
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_73

    :cond_5e
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_79

    move-result v3

    if-eqz v3, :cond_6a

    xor-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6a

    monitor-exit v4

    return-void

    :cond_6a
    if-eqz v1, :cond_73

    :try_start_6c
    iget-boolean v3, v1, Lcom/android/server/am/MARsPackageStatus;->isAppLaunched:Z

    if-nez v3, :cond_75

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/MARsPackageStatus;->isAppLaunched:Z
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_79

    :cond_73
    :goto_73
    monitor-exit v4

    return-void

    :cond_75
    :try_start_75
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_73

    :catchall_79
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onPackageResumedFG(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    .registers 25

    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v13, :cond_2d

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onPackageResumedFG pkgName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", userId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v13, :cond_77

    if-eqz p1, :cond_77

    const/4 v4, 0x0

    :goto_49
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v4, v13, :cond_77

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v13, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v11

    if-eqz v11, :cond_74

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/android/server/am/MARsPackageStatus;->isTop:Z

    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_169

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_169

    if-eqz p5, :cond_d6

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d6

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "android.intent.action.MAIN"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d6

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    if-eqz v13, :cond_d6

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    const-string/jumbo v15, "android.intent.category.HOME"

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d6

    const-string/jumbo v13, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Current Home Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " Resumed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mCurrentHomePackage:Ljava/lang/String;

    :cond_d6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v13, :cond_169

    if-eqz v8, :cond_169

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_169

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_169

    iget v13, v8, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v13, :cond_169

    iget v13, v8, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-eqz v13, :cond_169

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->sharedUidName:Ljava/lang/String;

    if-nez v13, :cond_169

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_10b
    .catchall {:try_start_32 .. :try_end_10b} :catchall_1fc

    :try_start_10b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    if-eqz v13, :cond_142

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_206

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1da

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mFreezeTargetPackages:Landroid/util/ArrayMap;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_142
    .catchall {:try_start_10b .. :try_end_142} :catchall_1f9

    :cond_142
    :try_start_142
    monitor-exit v15

    if-eqz v6, :cond_169

    if-eqz v12, :cond_169

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v13, v12, v1}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v10

    if-eqz v10, :cond_167

    iget-boolean v13, v10, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v13, :cond_167

    iget-object v13, v10, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v15, v10, Lcom/android/server/am/MARsPackageStatus;->userId:I

    const-string/jumbo v16, "TargetUpdated"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_167
    const/4 v6, 0x0

    const/4 v12, 0x0

    :cond_169
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v13, :cond_1b2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_1b2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->aresPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_1b2

    if-eqz v8, :cond_1b2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    if-eqz v13, :cond_1b2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_22a

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_212

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_1c0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v13, :cond_1ce

    :cond_1c0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v13, :cond_267

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v13, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v13, :cond_267

    :cond_1ce
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d1
    .catchall {:try_start_142 .. :try_end_1d1} :catchall_1fc

    move-result v13

    if-eqz v13, :cond_236

    xor-int/lit8 v13, p4, 0x1

    if-eqz v13, :cond_236

    monitor-exit v14

    return-void

    :cond_1da
    :try_start_1da
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    sget v16, Lcom/android/server/am/MARsPolicyManager;->FREEZED_PACKAGES_LIMIT:I

    move/from16 v0, v16

    if-ne v13, v0, :cond_1ff

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    const/4 v6, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f7
    .catchall {:try_start_1da .. :try_end_1f7} :catchall_1f9

    goto/16 :goto_135

    :catchall_1f9
    move-exception v13

    :try_start_1fa
    monitor-exit v15

    throw v13
    :try_end_1fc
    .catchall {:try_start_1fa .. :try_end_1fc} :catchall_1fc

    :catchall_1fc
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_1ff
    :try_start_1ff
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_135

    :cond_206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_210
    .catchall {:try_start_1ff .. :try_end_210} :catchall_1f9

    goto/16 :goto_135

    :cond_212
    :try_start_212
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x6

    if-ne v13, v15, :cond_223

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a7

    :cond_223
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a7

    :cond_22a
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a7

    :cond_236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v13}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v13

    if-nez v13, :cond_260

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getLaunchedAppBeforeInit(Ljava/lang/String;I)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v5

    if-nez v5, :cond_25e

    new-instance v5, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25e
    .catchall {:try_start_212 .. :try_end_25e} :catchall_1fc

    :cond_25e
    monitor-exit v14

    return-void

    :cond_260
    if-eqz v8, :cond_267

    :try_start_262
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_267
    .catchall {:try_start_262 .. :try_end_267} :catchall_1fc

    :cond_267
    monitor-exit v14

    return-void
.end method

.method public onPackageStatusChange(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 11

    const/4 v5, 0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPackageStatusChange packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    if-eqz v2, :cond_4e

    if-eqz p3, :cond_4e

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_3e
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->initBigdataPackage(Lcom/android/server/am/MARsPackageStatus;)V
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_4b

    :cond_49
    monitor-exit v3

    return-void

    :catchall_4b
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4e
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, p1, p4}, Lcom/android/server/am/MARsDBManager;->sendInsPkgMsgToDBHandler(Ljava/lang/String;I)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    if-eqz p3, :cond_69

    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "handlePackageStatusChange isReInstall don\'t care!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_69
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_6d
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_8f

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v4, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_b8

    :cond_8f
    :goto_8f
    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, p1, p4}, Lcom/android/server/am/MARsDBManager;->sendDelPkgMsgToDBHandler(Ljava/lang/String;I)V

    goto :goto_53

    :cond_96
    :try_start_96
    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected !! Uninstalled package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not in mManagedPackages list !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_96 .. :try_end_b7} :catchall_b8

    goto :goto_8f

    :catchall_b8
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_bb
    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_c8
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v2, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    if-eqz v1, :cond_d3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/MARsPackageStatus;->isDataCleared:Z
    :try_end_d3
    .catchall {:try_start_c8 .. :try_end_d3} :catchall_db

    :cond_d3
    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v2, p1, p4, v5}, Lcom/android/server/am/MARsDBManager;->updateDataClearedPackage(Ljava/lang/String;IZ)V

    goto/16 :goto_53

    :catchall_db
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    const-string/jumbo v1, "android.view.InputMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    :cond_1c
    const-string/jumbo v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isVpn:Z

    :cond_30
    const-string/jumbo v1, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mWallpaperPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageStatus;)V

    :cond_46
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_5a

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isNotificationListener:Z
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_5c

    :cond_5a
    monitor-exit v2

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_22
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/MARsPolicyManager;->onAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string/jumbo v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_38
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/MARsPolicyManager;->onDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_25
.end method

.method public onSpecialUnBindServiceActions(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    const-string/jumbo v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isVpn:Z

    :cond_1c
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isNotificationListener:Z
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit v2

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onUpdatePackages(Z)V
    .registers 10

    const-wide/32 v0, 0xea60

    const-wide/32 v4, 0x2bf20

    const-wide/32 v2, 0x927c0

    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_c
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I

    move-result v6

    if-lez v6, :cond_1f

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1f

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V

    :cond_1f
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_29

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v6, :cond_33

    :cond_29
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v6, :cond_3e

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v6, v6, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v6, :cond_3e

    :cond_33
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->size()I
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_51

    move-result v6

    if-nez v6, :cond_4a

    const-wide/32 v2, 0xea60

    :cond_3e
    :goto_3e
    monitor-exit v7

    if-nez p1, :cond_49

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMainHandler:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(J)V

    :cond_49
    return-void

    :cond_4a
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    const-wide/32 v2, 0x927c0

    goto :goto_3e

    :catchall_51
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method preloadHotProcess()V
    .registers 1

    return-void
.end method

.method sendBigDataInfoFromMARstoHQM(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    const-string/jumbo v12, ""

    new-instance v0, Lcom/android/server/am/MARsPolicyManager$BigData;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager;->MARsVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v3, v3, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/MARsPolicyManager$BigData;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "HqmManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$BigData;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_37
    if-eqz v1, :cond_6f

    if-eqz v9, :cond_6f

    const-string/jumbo v3, "Sluggish"

    const-string/jumbo v4, "MARS"

    const-string/jumbo v5, "ph"

    const-string/jumbo v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void

    :cond_6f
    const-string/jumbo v2, "MARsPolicyManager"

    const-string/jumbo v3, "Failed to send sluggish info to HQM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_79
    move-object v9, v12

    goto :goto_37
.end method

.method setAllPoliciesOnOffState(IZ)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_29

    sparse-switch p1, :sswitch_data_6a

    :goto_27
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    :cond_29
    return-void

    :sswitch_2a
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_33

    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    :cond_33
    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_27

    :sswitch_36
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-nez v0, :cond_43

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_40

    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    :cond_40
    invoke-direct {p0, v4, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    :cond_43
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_27

    :sswitch_49
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->IsChinaModel:Z

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_53

    sput-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    :cond_53
    invoke-direct {p0, v4, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    :cond_56
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOnPolicies()V

    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_27

    :sswitch_5c
    sput-boolean v4, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    goto :goto_27

    :sswitch_63
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->turnOffPolicies()V

    iput-boolean v3, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    goto :goto_27

    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_2a
        0x1 -> :sswitch_36
        0x2 -> :sswitch_49
        0x3 -> :sswitch_5c
        0x98967f -> :sswitch_63
    .end sparse-switch
.end method

.method public setAppUsedRecentlyState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppUsedRecently:Z

    return-void
.end method

.method public setAutoRunParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v0, :cond_45

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoRunParameter --- TriggerPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iget-wide v2, v2, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , UnusedPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public setCarModeOnState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    return-void
.end method

.method public setDownloadCheckParameter(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    iput-wide p1, v0, Lcom/android/server/am/MARsDLManager;->mDataTrafficAmount:J

    return-void
.end method

.method setDualAppEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    return-void
.end method

.method setDualAppUserId(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    return-void
.end method

.method public setEmergencyKillEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsEmergencyKillEnabled:Z

    return-void
.end method

.method setFakeTopActivityList(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFakeTopActivityList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFakeTopActivityList:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFakeTopActivityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget v2, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->restrictionType:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_10

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFakeTopActivityList:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_10

    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2d
    monitor-exit v3

    return-void
.end method

.method public setFreecessEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    :cond_8
    return-void
.end method

.method public setFreecessSkipTimeEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFreecessSkipTimeEnabled:Z

    return-void
.end method

.method public setImmediateKillEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsImmediateKillEnabled:Z

    return-void
.end method

.method setIsDataCleared(Ljava/lang/String;IZ)Z
    .registers 8

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-gez p2, :cond_f

    :cond_5
    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "setIsDataCleared pkg info is error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_24

    iput-boolean p3, v0, Lcom/android/server/am/MARsPackageStatus;->isDataCleared:Z

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updateDataClearedPackage(Ljava/lang/String;IZ)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_26

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_24
    monitor-exit v2

    return v3

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setKeyguardPkgInfo(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkg:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/MARsPolicyManager;->mKeyguardPkgUid:I

    return-void
.end method

.method public setLCDonKillEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLCDonKillEnabled:Z

    return-void
.end method

.method setMARsBigDataSettingsInfo()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_51

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v3, v3, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;

    const-string/jumbo v3, "skipratio"

    iget-object v4, v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->SKIP_RATIO:I

    :cond_28
    const-string/jumbo v3, "killthreshold"

    iget-object v4, v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->KILL_THRESHOLD:I

    :cond_3b
    const-string/jumbo v3, "restrictionthreshold"

    iget-object v4, v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/MARsPolicyManager;->RESTRICTION_THRESHOLD:I

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_51
    return-void
.end method

.method setPackagesUnusedLockingTime(I)V
    .registers 8

    const-wide/16 v4, 0x3e8

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    :cond_2f
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    return-void
.end method

.method setProtectedTargetPackage(Landroid/util/ArrayMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_2d

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->removePreloadPackageFromRestrictedList(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_30
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mProtectedTargetMap:Landroid/util/ArrayMap;

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mProtectedTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mProtectedTargetMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_40

    :cond_3e
    monitor-exit v6

    return-void

    :catchall_40
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method setSKTSpeicalPackages(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setScreenOnState(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastScreenOffTime:J

    :cond_c
    return-void
.end method

.method setSecureFolderEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderEnabled:Z

    return-void
.end method

.method setSecureFolderUserId(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mSecureFolderUserId:I

    return-void
.end method

.method setUnusedAREsTimeForSluggishAging(I)V
    .registers 4

    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAREsTimeForAging:J

    return-void
.end method

.method setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public switchUser(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredInputMethodObserver:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mInputMethodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredInputMethodObserver:Z

    :cond_14
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredAccessibilityContentObserver:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAccessibilityContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredAccessibilityContentObserver:Z

    :cond_26
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredCocktailBarSettingsObserver:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredCocktailBarSettingsObserver:Z

    :cond_38
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultDialerSettingsObserver:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultDialerSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultDialerSettingsObserver:Z

    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultSmsSettingsObserver:Z

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultSmsSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRegisteredDefaultSmsSettingsObserver:Z
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5c} :catch_f2

    :cond_5c
    :goto_5c
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->unregisterContentObserver()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v4}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver(Z)V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1}, Lcom/android/server/am/MARsTrigger;->unregisterEmStateReceiver()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsTrigger;->setContext(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7a
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V

    :cond_83
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->clear()V

    :cond_8c
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_95
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_9e
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_a7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_b0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_b9
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    if-eqz v1, :cond_c2

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mActiveAdmins:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_c2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_cb
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_d4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_dd
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_e6
    .catchall {:try_start_7a .. :try_end_e6} :catchall_fe

    :cond_e6
    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDLManager;->clear()V

    iput-boolean v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    return-void

    :catch_f2
    move-exception v0

    const-string/jumbo v1, "MARsPolicyManager"

    const-string/jumbo v2, "IllegalArgumentException occurred in switchUser()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    :catchall_fe
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unFreezePackage(Ljava/lang/String;)V
    .registers 12

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_ba

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_b6

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageStatus;

    iget-boolean v5, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v5, :cond_7f

    iget-object v5, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/4 v8, 0x2

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->sendFreecessSingal(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v5, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->setProcessFreezedFlag(Ljava/lang/String;IZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iput-object p1, v0, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UFZ : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_82
    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UFZ error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_4 .. :try_end_b2} :catchall_b3

    goto :goto_7f

    :catchall_b3
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_ba
    monitor-exit v6

    return-void
.end method

.method public unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-boolean v5, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v5, :cond_62

    iget-object v5, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/4 v8, 0x2

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->sendFreecessSingal(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iput-object p3, v0, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UFZ : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_9f

    :cond_62
    :goto_62
    monitor-exit v6

    if-eqz v2, :cond_6d

    if-eqz v3, :cond_6d

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6d

    invoke-direct {p0, v3, v4, v10}, Lcom/android/server/am/MARsPolicyManager;->setProcessFreezedFlag(Ljava/lang/String;IZ)Z

    :cond_6d
    return-void

    :cond_6e
    :try_start_6e
    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UFZ error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_6e .. :try_end_9e} :catchall_9f

    goto :goto_62

    :catchall_9f
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method unFreezePackageByUidLocked(IILjava/lang/String;)V
    .registers 14

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_c5

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_c1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageStatus;

    iget-boolean v5, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    if-eqz v5, :cond_8a

    iget v5, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    if-ne p1, v5, :cond_8a

    iget v5, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    if-eq p2, v5, :cond_38

    const/4 v5, -0x1

    if-ne p2, v5, :cond_8a

    :cond_38
    iget-object v5, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/4 v8, 0x2

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->sendFreecessSingal(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-object v5, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->setProcessFreezedFlag(Ljava/lang/String;IZ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iput-object p3, v0, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UFZ : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_8d
    const-string/jumbo v5, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UFZ error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_4 .. :try_end_bd} :catchall_be

    goto :goto_8a

    :catchall_be
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_c1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_c5
    monitor-exit v6

    return-void
.end method

.method public updateForegroundPackageToPkgStatus(Ljava/lang/String;IZ)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-boolean p3, v0, Lcom/android/server/am/MARsPackageStatus;->isForegroundService:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v2

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateLocationStat()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public updatePackageList(I)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v5, :cond_5b

    const/4 v1, 0x0

    :goto_d
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_3f

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_26
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3c

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    iget v5, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    if-ne v5, p1, :cond_39

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_5b
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_60
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    if-eqz v5, :cond_b3

    const/4 v1, 0x0

    :goto_65
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_97

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_7e
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_94

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    iget v5, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    if-ne v5, p1, :cond_91

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mRestrictedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_3 .. :try_end_b0} :catchall_b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    :cond_b3
    monitor-exit v6

    return-void

    :catchall_b5
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public updateRunningLocationPackages(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_f
    const-string/jumbo v1, "packagelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mRunningLocationPackages:Ljava/util/ArrayList;

    :cond_18
    return-void
.end method

.method public updateSBikePackages(Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_12
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->sbike:I
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    :cond_1d
    monitor-exit v4

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_24
    return-void
.end method

.method public updateTrafficStats(Z)V
    .registers 5

    if-eqz p1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsDLManager;->updateTrafficStatsFirstTime(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    monitor-exit v1

    :goto_d
    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDLManager:Lcom/android/server/am/MARsDLManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsDLManager;->updateTrafficStatsSecondTime()V

    goto :goto_d
.end method

.method public updateUDSPackages(Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_12
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageStatus(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->uds:I
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_21

    :cond_1d
    monitor-exit v4

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_24
    return-void
.end method
