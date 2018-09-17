.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$1;,
        Lcom/android/server/pm/ShortcutService$2;,
        Lcom/android/server/pm/ShortcutService$3;,
        Lcom/android/server/pm/ShortcutService$4;,
        Lcom/android/server/pm/ShortcutService$5;,
        Lcom/android/server/pm/ShortcutService$CommandException;,
        Lcom/android/server/pm/ShortcutService$ConfigConstants;,
        Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;,
        Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;,
        Lcom/android/server/pm/ShortcutService$Lifecycle;,
        Lcom/android/server/pm/ShortcutService$LocalService;,
        Lcom/android/server/pm/ShortcutService$MyShellCommand;,
        Lcom/android/server/pm/ShortcutService$SettingChangeObserver;,
        Lcom/android/server/pm/ShortcutService$ShortcutOperation;,
        Lcom/android/server/pm/ShortcutService$Stats;
    }
.end annotation


# static fields
.field private static ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEBUG:Z = false

.field static final DEBUG_LOAD:Z = false

.field static final DEBUG_PROCSTATE:Z = false

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x5

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8

.field static final DIRECTORY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"

.field private static final DUMMY_MAIN_ACTIVITY:Ljava/lang/String; = "android.__dummy__"

.field private static EMPTY_RESOLVE_INFO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"

.field private static final KEY_ICON_SIZE:Ljava/lang/String; = "iconSize"

.field private static final KEY_LOW_RAM:Ljava/lang/String; = "lowRam"

.field private static final KEY_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final LAUNCHER_INTENT_CATEGORY:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field static final OPERATION_ADD:I = 0x1

.field static final OPERATION_SET:I = 0x0

.field static final OPERATION_UPDATE:I = 0x2

.field private static final PACKAGE_MATCH_FLAGS:I = 0xc2000

.field private static PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROCESS_STATE_FOREGROUND_THRESHOLD:I = 0x4

.field private static final STAT_LABELS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAST_RESET_TIME:Ljava/lang/String; = "last_reset_time"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final mIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mContext:Landroid/content/Context;

.field private final mCountStats:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatLock"
    .end annotation
.end field

.field private mDirtyUserIds:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDurationStats:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mIconPersistQuality:I

.field private mLastWtfStacktrace:Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxIconDimension:I

.field private mMaxShortcuts:I

.field mMaxUpdatesPerInterval:I

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;

.field private mRawLastResetTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetInterval:J

.field private mSaveDelayMillis:I

.field private final mSaveDirtyInfoRunner:Ljava/lang/Runnable;

.field private mSettingChangeObserver:Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

.field private final mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

.field private final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field final mStatLock:Ljava/lang/Object;

.field final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mUnlockedUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation
.end field

.field private mWtfCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService-mthref-1(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService-mthref-2(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService-mthref-3(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    return v0
.end method

.method static synthetic -com_android_server_pm_ShortcutService-mthref-4(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    return-void
.end method

.method static synthetic -get0(Lcom/android/server/pm/ShortcutService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/android/server/pm/ShortcutService;->mIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesForce()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/pm/ShortcutService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->mIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    new-instance v0, Lcom/android/server/pm/ShortcutService$2;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutService$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getHomeActivities()"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Launcher permission check"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "getPackageInfo()"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "getPackageInfo(SIG)"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "getApplicationInfo"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "cleanupDanglingBitmaps"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "getActivity+metadata"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "getInstalledPackages"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "checkPackageChanges"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "getApplicationResources"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "resourceNameLookup"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "getLauncherActivity"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "checkLauncherActivity"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "isActivityEnabled"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "packageUpdateCheck"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "asyncPreloadUserDelay"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "getDefaultLauncher()"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/pm/ShortcutService;->STAT_LABELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 19

    invoke-direct {p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    const/16 v1, 0x11

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    const/16 v1, 0x11

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    new-instance v1, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v1, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$11;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$11;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/pm/ShortcutService$5;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v1, Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    new-instance v1, Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    if-eqz p3, :cond_e5

    return-void

    :cond_e5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v14, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;-><init>(Lcom/android/server/pm/ShortcutService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSettingChangeObserver:Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mSettingChangeObserver:Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    return-void
.end method

.method private assignImplicitRanks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method private cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$20;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$20;-><init>(ZILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_13

    return-void

    :cond_13
    const/4 v7, 0x0

    array-length v8, v2

    :goto_15
    if-ge v7, v8, :cond_34

    aget-object v1, v2, v7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_22

    :goto_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_22
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/server/pm/ShortcutUser;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_30

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_1f

    :cond_30
    invoke-direct {p0, p1, v6, v3, v1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_1f

    :cond_34
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-void
.end method

.method private cleanupDanglingBitmapFilesLocked(ILcom/android/server/pm/ShortcutUser;Ljava/lang/String;Ljava/io/File;)V
    .registers 12

    invoke-virtual {p2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFiles()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_e
    if-ge v3, v5, :cond_29

    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1b

    :cond_18
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_18

    :cond_29
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;Z)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_9
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "shortcut"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "lowRam"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v4, "iconSize"

    iget v6, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_48} :catch_4a
    .catchall {:try_start_3 .. :try_end_48} :catchall_55

    :goto_48
    monitor-exit v5

    return-void

    :catch_4a
    move-exception v0

    :try_start_4b
    const-string/jumbo v4, "ShortcutService"

    const-string/jumbo v6, "Unable to write in json"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_55

    goto :goto_48

    :catchall_55
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private dumpInner(Ljava/io/PrintWriter;)V
    .registers 16

    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v9, "Now: ["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v9, "] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "  Raw last reset: ["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v9, "] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v12, v13}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v2

    const-string/jumbo v9, "  Last reset: ["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v9, "] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J

    move-result-wide v4

    const-string/jumbo v9, "  Next reset: ["

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v9, "] "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "  Config:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v9, "    Max icon dim: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v9, "    Icon format: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v9, "    Icon quality: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v9, "    saveDelayMillis: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v9, "    resetInterval: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v9, "    maxUpdatesPerInterval: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v9, "    maxShortcutsPerActivity: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v9, "  Stats:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_ca
    .catchall {:try_start_3 .. :try_end_ca} :catchall_125

    const/4 v0, 0x0

    :goto_cb
    const/16 v9, 0x11

    if-ge v0, v9, :cond_d8

    :try_start_cf
    const-string/jumbo v9, "    "

    invoke-direct {p0, p1, v9, v0}, Lcom/android/server/pm/ShortcutService;->dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_122

    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    :cond_d8
    :try_start_d8
    monitor-exit v11

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v9, "  #Failures: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    if-eqz v9, :cond_fa

    const-string/jumbo v9, "  Last failure stack trace: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_fa
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    const-string/jumbo v11, "  "

    invoke-virtual {v9, p1, v11}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_106
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_128

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/ShortcutUser;

    const-string/jumbo v11, "  "

    invoke-virtual {v9, p1, v11}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    :catchall_122
    move-exception v9

    monitor-exit v11

    throw v9
    :try_end_125
    .catchall {:try_start_d8 .. :try_end_125} :catchall_125

    :catchall_125
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_128
    :try_start_128
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v9, "  UID state:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_132
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v0, v9, :cond_179

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    const-string/jumbo v9, "    UID="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v9, " state="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v9

    if-eqz v9, :cond_164

    const-string/jumbo v9, "  [FG]"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_164
    const-string/jumbo v9, "  last FG="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    invoke-virtual {p1, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_176
    .catchall {:try_start_128 .. :try_end_176} :catchall_125

    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    :cond_179
    monitor-exit v10

    return-void
.end method

.method private dumpStatLS(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 14

    const/4 v5, 0x0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    aget v0, v1, p3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    aget-wide v2, v1, p3

    const-string/jumbo v1, "%s: count=%d, total=%dms, avg=%.1fms"

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/android/server/pm/ShortcutService;->STAT_LABELS:[Ljava/lang/String;

    aget-object v4, v4, p3

    aput-object v4, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v6, v5

    if-nez v0, :cond_39

    const-wide/16 v4, 0x0

    :goto_2a
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v6, v5

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_39
    long-to-double v4, v2

    int-to-double v8, v0

    div-double/2addr v4, v8

    goto :goto_2a
.end method

.method private enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceResetThrottlingPermission()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceShell()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private enforceSystem()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private enforceSystemOrShell()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerShell()Z

    move-result v0

    :goto_a
    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller must be system or shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_a

    :cond_17
    return-void
.end method

.method private fillInDefaultActivity(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_8
    if-ltz v1, :cond_4a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_45

    if-nez v0, :cond_42

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v3, 0x1

    :goto_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Launcher activity not found for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_42
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_48
    move v3, v4

    goto :goto_27

    :cond_4a
    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    return-void
.end method

.method private fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v2, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v0, "Null shortcut detected"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot publish shortcut: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " belong to package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot publish shortcut: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " main activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_92
    if-nez p2, :cond_a6

    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    if-nez p3, :cond_a6

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b7

    const/4 v0, 0x1

    :goto_a0
    const-string/jumbo v2, "Cannot publish shortcut: target activity is not set"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_a6
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    :cond_b3
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    return-void

    :cond_b7
    move v0, v1

    goto :goto_a0
.end method

.method private forUpdatedPackages(IJZLjava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/function/Consumer",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_a
    if-ltz v0, :cond_22

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-nez p4, :cond_1a

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v3, v4, p2

    if-ltz v3, :cond_1f

    :cond_1a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_22
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    const-string/jumbo v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBaseStateFile()Landroid/util/AtomicFile;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private getCallingUserId()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getMainActivityIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0, v1, p4, p3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private handlePackageAdded(Ljava/lang/String;I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handlePackageChanged(Ljava/lang/String;I)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    return-void

    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1a

    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handlePackageDataCleared(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void
.end method

.method private handlePackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    :cond_14
    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initialize()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadConfigurationLocked()V

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isApplicationFlagSet(Ljava/lang/String;II)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, p3

    if-ne v2, p3, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method private isCallerShell()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    move v1, v2

    goto :goto_c
.end method

.method private isCallerSystem()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method

.method static isClockValid(J)Z
    .registers 4

    const-wide/32 v0, 0x54a48e00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isInstalled(Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_f

    sget-object v1, Lcom/android/server/pm/ShortcutService;->mIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_f
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method private static isInstalled(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method private static isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method private static isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    const/4 p0, 0x0

    goto :goto_6
.end method

.method private isProcessStateForeground(I)Z
    .registers 3

    const/4 v0, 0x4

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isUserLoadedLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_101055(Lcom/android/server/pm/ShortcutUser;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_130884(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFiles()Landroid/util/ArraySet;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_34
    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_131787(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_131866(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensureVersionInfo()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_133990(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_134282(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->ensureVersionInfo()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_156274(Lcom/android/server/pm/ShortcutUser;)V
    .registers 2

    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$6;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_86593(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/ShortcutLauncher;->cleanUpPackage(Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutService_86806(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method private loadBaseStateLocked()V
    .registers 14

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_c6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1b

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    if-ne v0, v8, :cond_63

    const-string/jumbo v8, "root"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string/jumbo v8, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid root tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_53} :catch_76
    .catchall {:try_start_a .. :try_end_53} :catchall_c4

    if-eqz v4, :cond_58

    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_84

    :cond_58
    :goto_58
    if-eqz v9, :cond_62

    :try_start_5a
    throw v9
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_5b} :catch_84

    :catch_5b
    move-exception v1

    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    return-void

    :catch_60
    move-exception v9

    goto :goto_58

    :cond_62
    return-void

    :cond_63
    :try_start_63
    const-string/jumbo v8, "last_reset_time"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    const-string/jumbo v8, "value"

    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_75} :catch_76
    .catchall {:try_start_63 .. :try_end_75} :catchall_c4

    goto :goto_1b

    :catch_76
    move-exception v8

    :try_start_77
    throw v8
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_7c
    if-eqz v4, :cond_81

    :try_start_7e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_d0
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_81} :catch_5b
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_81} :catch_84

    :cond_81
    :goto_81
    if-eqz v9, :cond_db

    :try_start_83
    throw v9
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_84} :catch_5b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_84} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_84} :catch_84

    :catch_84
    move-exception v2

    const-string/jumbo v8, "ShortcutService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_5c

    :cond_a8
    :try_start_a8
    const-string/jumbo v8, "ShortcutService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_c2} :catch_76
    .catchall {:try_start_a8 .. :try_end_c2} :catchall_c4

    goto/16 :goto_1b

    :catchall_c4
    move-exception v8

    goto :goto_7c

    :cond_c6
    if-eqz v4, :cond_cb

    :try_start_c8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_c8 .. :try_end_cb} :catch_5b
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c8 .. :try_end_cb} :catch_84

    :cond_cb
    :goto_cb
    if-eqz v9, :cond_5c

    :try_start_cd
    throw v9

    :catch_ce
    move-exception v9

    goto :goto_cb

    :catch_d0
    move-exception v10

    if-nez v9, :cond_d5

    move-object v9, v10

    goto :goto_81

    :cond_d5
    if-eq v9, v10, :cond_81

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_81

    :cond_db
    throw v8
    :try_end_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_cd .. :try_end_dc} :catch_5b
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_dc} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_dc} :catch_84
.end method

.method private loadConfigurationLocked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShortcutManagerConstants()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->updateConfigurationLocked(Ljava/lang/String;)Z

    return-void
.end method

.method private loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_14
    :goto_14
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_39

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne v1, v7, :cond_35

    const-string/jumbo v6, "user"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-static {p0, v2, p1, p3}, Lcom/android/server/pm/ShortcutUser;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    goto :goto_14

    :cond_35
    invoke-static {v1, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    goto :goto_14

    :cond_39
    return-object v3
.end method

.method private loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v4

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_a
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_d} :catch_17

    move-result-object v3

    const/4 v6, 0x0

    :try_start_f
    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_12} :catch_19
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_f .. :try_end_12} :catch_19
    .catchall {:try_start_f .. :try_end_12} :catchall_3c

    move-result-object v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v5

    :catch_17
    move-exception v0

    return-object v9

    :catch_19
    move-exception v1

    :try_start_1a
    const-string/jumbo v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_3c

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v9

    :catchall_3c
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
.end method

.method private notifyListeners(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$16;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method static parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseIntentAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method

.method static parseIntentAttributeNoDefault(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    :try_start_c
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v1

    :cond_10
    :goto_10
    return-object v1

    :catch_11
    move-exception v0

    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v4, "Error parsing intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 10

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-wide p2

    :cond_b
    :try_start_b
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10

    move-result-wide v2

    return-wide v2

    :catch_10
    move-exception v0

    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error parsing long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p2
.end method

.method static parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 15

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v0

    const-string/jumbo v1, "Calling application must have a foreground activity or a foreground service"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_27

    move-result v6

    monitor-exit v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return v6

    :catchall_27
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private rescanUpdatedPackagesLocked(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJZ)V

    return-void
.end method

.method private rescanUpdatedPackagesLocked(IJZ)V
    .registers 15

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanOsFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    new-instance v5, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$21;

    invoke-direct {v5, p4, p1, p0, v8}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$21;-><init>(ZILjava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService;->forUpdatedPackages(IJZLjava/util/function/Consumer;)V

    invoke-virtual {v8, v6, v7}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanTime(J)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/pm/ShortcutUser;->setLastAppScanOsFingerprint(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;ZZ)V

    return-void
.end method

.method private saveUserInternalLocked(ILjava/io/OutputStream;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/pm/ShortcutUser;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;ZZ)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private saveUserLocked(I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string/jumbo v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to write to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_24
.end method

.method private scheduleSaveBaseState()V
    .registers 2

    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    return-void
.end method

.method private scheduleSaveInner(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2b

    :cond_18
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setReturnedByServer(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-object p1
.end method

.method static shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v6, p1, :cond_f

    if-gt v5, p1, :cond_f

    return-object p0

    :cond_f
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int v8, v6, p1

    div-int v4, v8, v2

    mul-int v8, v5, p1

    div-int v3, v8, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v3

    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p0, v11, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v7
.end method

.method static throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid tag \'%s\' found at depth %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unloadUserLocked(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method private updateTimesLocked()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1a

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    :cond_10
    :goto_10
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_19

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    :cond_19
    return-void

    :cond_1a
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_32

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string/jumbo v6, "ShortcutService"

    const-string/jumbo v7, "Clock rewound"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_10

    :cond_32
    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-gtz v6, :cond_10

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    rem-long v2, v6, v8

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    div-long v6, v0, v6

    iget-wide v8, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    goto :goto_10
.end method

.method private verifyCaller(Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v1, "packageName"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_20

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Invalid user-ID"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_2f

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private final verifyStatesForce()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    return-void
.end method

.method private verifyStatesInner()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$7;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$7;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static warnForInvalidTag(ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Invalid tag \'%s\' found at depth %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method static writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    const-string/jumbo v0, "1"

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method static writeTagExtra(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "value"

    invoke-interface {p0, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutService-mthref-0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    return-void
.end method

.method public addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_10
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall()Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_50

    move-result v5

    if-nez v5, :cond_2f

    monitor-exit v6

    return v7

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    if-ge v0, v4, :cond_45

    :try_start_32
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_45
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_50

    monitor-exit v6

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return v8

    :catchall_50
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public applyRestore([BI)V
    .registers 11

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v3

    if-nez v3, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t restore: user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " is locked or not running"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_53

    monitor-exit v4

    return-void

    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_53

    const/4 v3, 0x1

    :try_start_32
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_35} :catch_47
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_47
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_32 .. :try_end_35} :catch_47
    .catchall {:try_start_32 .. :try_end_35} :catchall_53

    move-result-object v2

    :try_start_36
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    const-wide/16 v6, 0x0

    invoke-direct {p0, p2, v6, v7}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_53

    monitor-exit v4

    return-void

    :catch_47
    move-exception v0

    :try_start_48
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v5, "Restoration failed."

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_53

    monitor-exit v4

    return-void

    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public applyRestoreSmartSwitch(Landroid/os/ParcelFileDescriptor;I)I
    .registers 11

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v3

    if-nez v3, :cond_29

    const-string/jumbo v3, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user locked - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_78

    monitor-exit v4

    return v7

    :cond_29
    const/4 v1, 0x0

    :try_start_2a
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_3c
    .catchall {:try_start_2a .. :try_end_2f} :catchall_78

    if-nez v1, :cond_48

    :try_start_31
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v5, "Restoration failed."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_78

    monitor-exit v4

    return v7

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v5, "Restoration failed."

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_78

    monitor-exit v4

    return v7

    :cond_48
    const/4 v3, 0x1

    :try_start_49
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4c} :catch_64
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_64
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_49 .. :try_end_4c} :catch_64
    .catchall {:try_start_49 .. :try_end_4c} :catchall_73

    move-result-object v2

    :try_start_4d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;Z)V

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p2, v6, v7, v3}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJZ)V

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_78

    monitor-exit v4

    const/4 v3, 0x0

    return v3

    :catch_64
    move-exception v0

    :try_start_65
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v5, "Restoration failed."

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_73

    :try_start_6e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_78

    monitor-exit v4

    return v7

    :catchall_73
    move-exception v3

    :try_start_74
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method checkPackageChanges(I)V
    .registers 13

    const/16 v10, 0x8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsSafeModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string/jumbo v6, "ShortcutService"

    const-string/jumbo v7, "Safe mode, skipping checkPackageChanges()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v4

    :try_start_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_5b

    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    new-instance v6, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$14;

    invoke-direct {v6, p0, v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$14;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_49

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_36
    if-ltz v1, :cond_49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    iget-object v6, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    const/4 v9, 0x0

    invoke-virtual {p0, v6, p1, v8, v9}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    :cond_49
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutUser;->getLastAppScanTime()J

    move-result-wide v8

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V
    :try_end_50
    .catchall {:try_start_1e .. :try_end_50} :catchall_58

    :try_start_50
    monitor-exit v7
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_5b

    invoke-virtual {p0, v10, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_58
    move-exception v6

    :try_start_59
    monitor-exit v7

    throw v6
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v6

    invoke-virtual {p0, v10, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v6
.end method

.method cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserLoadedLocked(I)Z

    move-result v2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    const/4 v0, 0x0

    if-ne p3, p2, :cond_12

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-virtual {v1, p3, p1}, Lcom/android/server/pm/ShortcutUser;->removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    new-instance v3, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$15;

    invoke-direct {v3, p3, p1}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$15;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    new-instance v3, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY;

    invoke-direct {v3}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    :cond_2d
    if-eqz p4, :cond_35

    if-ne p3, p2, :cond_35

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    :cond_35
    if-nez v2, :cond_3a

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    :cond_3a
    return-void
.end method

.method public cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_1a
    if-nez v1, :cond_36

    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to remove directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    :cond_37
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    const-string/jumbo v2, "Shortcut must be enabled"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_13
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_21

    move-result-object v0

    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-object v0

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 12

    invoke-direct {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v3, "shortcutIds must be provided"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    if-nez p3, :cond_34

    const/4 v0, 0x0

    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1f
    if-ltz v1, :cond_39

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, p4, v5}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_34
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_39
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_44

    monitor-exit v4

    invoke-virtual {p0, p1, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_23

    const/4 v3, 0x0

    array-length v4, p3

    :goto_6
    if-ge v3, v4, :cond_23

    aget-object v0, p3, v3

    const-string/jumbo v5, "-c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v1, 0x1

    :cond_14
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_17
    const-string/jumbo v5, "--checkin"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_14

    :cond_23
    if-eqz v1, :cond_29

    invoke-direct {p0, p2, v2}, Lcom/android/server/pm/ShortcutService;->dumpCheckin(Ljava/io/PrintWriter;Z)V

    :goto_28
    return-void

    :cond_29
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;)V

    goto :goto_28
.end method

.method public enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 8

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v2, "shortcutIds must be provided"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1c
    if-ltz v0, :cond_2a

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->enableWithId(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_32

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_2a
    monitor-exit v3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method enforceMaxActivityShortcuts(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-le p1, v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Max number of dynamic shortcuts exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 8

    const/16 v5, 0xa

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    :try_start_14
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1
.end method

.method forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method final getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(I)[B
    .registers 9

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t backup: user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " is locked or not running"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_80

    monitor-exit v4

    return-object v6

    :cond_2d
    :try_start_2d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    if-nez v2, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t backup: user not found: id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_80

    monitor-exit v4

    return-object v6

    :cond_4c
    :try_start_4c
    new-instance v3, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$1;

    invoke-direct {v3}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    new-instance v3, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$2;

    invoke-direct {v3}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6a
    .catchall {:try_start_4c .. :try_end_6a} :catchall_80

    const/4 v3, 0x1

    :try_start_6b
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_6e} :catch_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_74
    .catchall {:try_start_6b .. :try_end_6e} :catchall_80

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_80

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catch_74
    move-exception v0

    :try_start_75
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v5, "Backup failed."

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_80

    monitor-exit v4

    return-object v6

    :catchall_80
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getBackupShortcut(I)Landroid/os/ParcelFileDescriptor;
    .registers 14

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v7

    if-nez v7, :cond_29

    const-string/jumbo v7, "ShortcutService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "user locked - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_d4

    monitor-exit v8

    return-object v11

    :cond_29
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    if-nez v6, :cond_4b

    const-string/jumbo v7, "ShortcutService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t backup: user not found: id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_d4

    monitor-exit v8

    return-object v11

    :cond_4b
    :try_start_4b
    new-instance v7, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;

    invoke-direct {v7}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$3;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    new-instance v7, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$4;

    invoke-direct {v7}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$4;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/misc/shortcutbnr"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "shortcut.br"

    invoke-direct {v1, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_4b .. :try_end_71} :catchall_d4

    :try_start_71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_7a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_83} :catch_a5
    .catchall {:try_start_71 .. :try_end_83} :catchall_d4

    :cond_83
    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_85
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_85 .. :try_end_8a} :catch_c0
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8a} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_b1
    .catchall {:try_start_85 .. :try_end_8a} :catchall_cf

    const/4 v7, 0x1

    const/4 v9, 0x1

    :try_start_8c
    invoke-direct {p0, p1, v5, v7, v9}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;ZZ)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    sget v9, Landroid/system/OsConstants;->O_RDONLY:I

    const/16 v10, 0x192

    invoke-static {v7, v9, v10}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_9a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_9a} :catch_da
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_9a} :catch_da
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9a} :catch_dd
    .catchall {:try_start_8c .. :try_end_9a} :catchall_d7

    move-result-object v3

    :try_start_9b
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v7, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v7, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_d4

    monitor-exit v8

    return-object v7

    :catch_a5
    move-exception v2

    :try_start_a6
    const-string/jumbo v7, "ShortcutService"

    const-string/jumbo v9, "Backup failed."

    invoke-static {v7, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_d4

    monitor-exit v8

    return-object v11

    :catch_b1
    move-exception v2

    :goto_b2
    :try_start_b2
    const-string/jumbo v7, "ShortcutService"

    const-string/jumbo v9, "Backup failed."

    invoke-static {v7, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_cf

    :try_start_bb
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_d4

    monitor-exit v8

    return-object v11

    :catch_c0
    move-exception v2

    :goto_c1
    :try_start_c1
    const-string/jumbo v7, "ShortcutService"

    const-string/jumbo v9, "Backup failed."

    invoke-static {v7, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_cf

    :try_start_ca
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_d4

    monitor-exit v8

    return-object v11

    :catchall_cf
    move-exception v7

    :goto_d0
    :try_start_d0
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_d7
    move-exception v7

    move-object v4, v5

    goto :goto_d0

    :catch_da
    move-exception v2

    move-object v4, v5

    goto :goto_c1

    :catch_dd
    move-exception v2

    move-object v4, v5

    goto :goto_b2
.end method

.method public getBitmapPathList(I)[Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$12;

    invoke-direct {v2, v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$12;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method getDefaultLauncher(I)Landroid/content/ComponentName;
    .registers 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v14

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_e0

    :try_start_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v3

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 v4, 0x0

    if-eqz v3, :cond_5e

    move-object v4, v3

    :cond_3a
    :goto_3a
    if-nez v4, :cond_104

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/high16 v6, -0x80000000

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v8, :cond_104

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v16

    if-nez v16, :cond_f0

    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_5e
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/Context;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_a4

    if-eqz v4, :cond_a4

    const-string/jumbo v16, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a4

    const-string/jumbo v16, "ShortcutService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Ignore DeX Home on getLastKnownLauncher: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_a4
    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v16

    if-nez v16, :cond_3a

    const-string/jumbo v16, "ShortcutService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Cached launcher "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " no longer exists"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V
    :try_end_db
    .catchall {:try_start_f .. :try_end_db} :catchall_dd

    goto/16 :goto_3a

    :catchall_dd
    move-exception v16

    :try_start_de
    monitor-exit v17

    throw v16
    :try_end_e0
    .catchall {:try_start_de .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v16

    :cond_f0
    :try_start_f0
    iget v0, v7, Landroid/content/pm/ResolveInfo;->priority:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v0, v6, :cond_5b

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget v6, v7, Landroid/content/pm/ResolveInfo;->priority:I
    :try_end_102
    .catchall {:try_start_f0 .. :try_end_102} :catchall_dd

    goto/16 :goto_5b

    :cond_104
    :try_start_104
    monitor-exit v17
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    const/16 v16, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v4
.end method

.method getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android.__dummy__"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDynamicShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$8;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$8;-><init>()V

    const/16 v2, 0x9

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_a

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method getIconPersistQualityForTest()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return v0
.end method

.method final getInstalledPackages(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object v0

    sget-object v6, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Ljava/util/function/Predicate;

    invoke-interface {v0, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_19
    .catchall {:try_start_9 .. :try_end_12} :catchall_2b

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v0

    :catch_19
    move-exception v1

    :try_start_1a
    const-string/jumbo v6, "ShortcutService"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2b

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v6

    :catchall_2b
    move-exception v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v6
.end method

.method getLastResetTimeLocked()J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    return-wide v0
.end method

.method getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_20

    if-nez v0, :cond_10

    monitor-exit v2

    return-object v3

    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_20

    monitor-exit v2

    return-object v1

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ShortcutUser;->getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    return-object v0
.end method

.method public getManifestShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$9;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$9;-><init>()V

    const/16 v2, 0x9

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getMaxActivityShortcuts()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxIconDimensionForTest()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return v0
.end method

.method public getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxShortcutsForTest()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return v0
.end method

.method getMaxUpdatesPerIntervalForTest()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    return v0
.end method

.method getNextResetTimeLocked()J
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method final getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isInstalledOrNull(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method final getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    move-result-object v0

    if-nez v0, :cond_c

    monitor-exit v2

    return-object v1

    :cond_c
    :try_start_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_12

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1c

    if-nez v0, :cond_10

    monitor-exit v2

    return-object v3

    :cond_10
    :try_start_10
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    monitor-exit v2

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutUser;->onCalledByPublisher(Ljava/lang/String;)V

    return-object v0
.end method

.method getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    return-object v0
.end method

.method getParentOrSelfUserId(I)I
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "KNOX_SETTINGS_KNOX_STYLE"

    invoke-static {v3, v6, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "FOLDER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    :cond_2d
    :goto_2d
    if-eqz v2, :cond_31

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3c

    :cond_31
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return p1

    :cond_35
    :try_start_35
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3c

    move-result-object v2

    goto :goto_2d

    :catchall_3c
    move-exception v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v3
.end method

.method public getPinnedShortcuts(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    new-instance v0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$10;

    invoke-direct {v0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$10;-><init>()V

    const/16 v2, 0x9

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/pm/ShortcutService;->getShortcutsWithQueryLocked(Ljava/lang/String;IILjava/util/function/Predicate;)Landroid/content/pm/ParceledListSlice;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getNextResetTimeLocked()J
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_f

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRemainingCallCount(Ljava/lang/String;I)I
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount()I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    move-result v3

    sub-int/2addr v1, v3

    monitor-exit v2

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getResetIntervalForTest()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method public getShortcutBitmapsFileDescriptor()Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    new-instance v0, Lcom/android/server/pm/ShortcutService$6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$6;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-object v0
.end method

.method getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    return-object v0
.end method

.method getShortcutsForTest()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method getUidLastForegroundElapsedTimeLocked(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserBitmapFilePath(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "bitmaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final getUserFile(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcuts.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "User still locked"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    if-nez v0, :cond_29

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    :cond_29
    return-object v0
.end method

.method handleLocaleChanged()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1c

    move-result-wide v0

    :try_start_a
    new-instance v2, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;

    invoke-direct {v2}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$5;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    :try_start_12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1c

    monitor-exit v3

    return-void

    :catchall_17
    move-exception v2

    :try_start_18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method handleOnUidStateChanged(II)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method handleStopUser(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method handleUnlockUser(I)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    monitor-exit v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$17;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$17;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutService;->injectRunOnNewThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method hasShortcutHostPermission(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v0

    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v2

    :catchall_d
    move-exception v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v2
.end method

.method hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 8

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutUser;->getCachedLauncher()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_33

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_33

    move-result v3

    monitor-exit v4

    return v3

    :cond_30
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :catchall_33
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 11

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2000

    invoke-interface {v1, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_19
    .catchall {:try_start_9 .. :try_end_11} :catchall_2b

    move-result-object v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :catch_19
    move-exception v0

    :try_start_1a
    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2b

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :catchall_2b
    move-exception v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1
.end method

.method injectBinderCallingUid()I
    .registers 2

    invoke-static {}, Lcom/android/server/pm/ShortcutService;->getCallingUid()I

    move-result v0

    return v0
.end method

.method injectBuildFingerprint()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method injectClearCallingIdentity()J
    .registers 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectCurrentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectDipToPixel(I)I
    .registers 5

    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method injectElapsedRealtime()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 11

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v6, 0xc2080

    invoke-interface {v1, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_19
    .catchall {:try_start_9 .. :try_end_11} :catchall_2b

    move-result-object v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :catch_19
    move-exception v0

    :try_start_1a
    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2b

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :catchall_2b
    move-exception v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1
.end method

.method injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 10

    const/4 v1, 0x0

    const/16 v6, 0xb

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_28

    move-result v4

    if-nez v4, :cond_1a

    :goto_16
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :cond_1a
    const/4 v1, 0x0

    :try_start_1b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_28

    move-result-object v1

    goto :goto_16

    :catchall_28
    move-exception v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1
.end method

.method public injectGetLocaleTagsForUser(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v0

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_13

    move-result-object v2

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v2

    :catchall_13
    move-exception v2

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v2
.end method

.method injectGetPackageUid(Ljava/lang/String;I)I
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v4, 0xc2000

    invoke-interface {v1, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_11
    .catchall {:try_start_4 .. :try_end_c} :catchall_20

    move-result v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v1

    :catch_11
    move-exception v0

    :try_start_12
    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v1

    :catchall_20
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const v2, 0xc2000

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    if-ne p3, v5, :cond_2e

    const-string/jumbo v0, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    :goto_9
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p0, v2, p2, v5}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    return-object v5

    :cond_2e
    const-string/jumbo v0, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    goto :goto_9

    :cond_32
    const/4 v5, 0x0

    return-object v5
.end method

.method injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 12

    const/16 v8, 0x9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_1b
    .catchall {:try_start_a .. :try_end_13} :catchall_45

    move-result-object v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :catch_1b
    move-exception v0

    :try_start_1c
    const-string/jumbo v1, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Resources for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_45

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :catchall_45
    move-exception v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1
.end method

.method injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 9

    const/16 v5, 0xd

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v0

    :try_start_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    move-result v3

    if-lez v3, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v2

    :catchall_1f
    move-exception v2

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v2
.end method

.method injectIsLowRamDevice()Z
    .registers 2

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method injectIsMainActivity(Landroid/content/ComponentName;I)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v7, 0xc

    sget-object v5, Lcom/android/server/pm/ShortcutService;->mIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    if-nez p1, :cond_1d

    :try_start_13
    const-string/jumbo v1, "null activity detected"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_46

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v4

    :cond_1d
    :try_start_1d
    const-string/jumbo v5, "android.__dummy__"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_46

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v1

    :cond_2e
    :try_start_2e
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_46

    move-result v5

    if-lez v5, :cond_44

    :goto_40
    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v1

    :cond_44
    move v1, v4

    goto :goto_40

    :catchall_46
    move-exception v1

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1
.end method

.method injectIsSafeModeEnabled()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_17
    .catchall {:try_start_4 .. :try_end_12} :catchall_1d

    move-result v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v1

    :catch_17
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v1

    :catchall_1d
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 14

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    :try_start_a
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz p3, :cond_22

    const/16 v1, 0x40

    :goto_10
    const v9, 0xc2000

    or-int/2addr v1, v9

    invoke-interface {v8, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_26
    .catchall {:try_start_a .. :try_end_17} :catchall_3c

    move-result-object v8

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p3, :cond_24

    move v1, v6

    :goto_1e
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v8

    :cond_22
    const/4 v1, 0x0

    goto :goto_10

    :cond_24
    move v1, v7

    goto :goto_1e

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v8, "RemoteException"

    invoke-static {v1, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_3c

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p3, :cond_3a

    :goto_36
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v1

    :cond_3a
    move v6, v7

    goto :goto_36

    :catchall_3c
    move-exception v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz p3, :cond_46

    :goto_42
    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw v1

    :cond_46
    move v6, v7

    goto :goto_42
.end method

.method injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 4

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method injectRunOnNewThread(Ljava/lang/Runnable;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v6

    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "sendIntent failed()."

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method injectShortcutManagerConstants()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shortcut_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldPerformVerification()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method injectSystemDataPath()Ljava/io/File;
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method injectUptimeMillis()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method injectUserDataPath(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "shortcut_service"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Icon resource must reside in shortcut owner package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-void
.end method

.method injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method isDummyMainActivity(Landroid/content/ComponentName;)Z
    .registers 4

    if-eqz p1, :cond_e

    const-string/jumbo v0, "android.__dummy__"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isEphemeralApp(Ljava/lang/String;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->isEphemeralApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method isPackageInstalled(Ljava/lang/String;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isRequestPinItemSupported(II)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    move-result v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v2

    :catchall_e
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method protected isSystemApp(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    return v2
.end method

.method isUidForegroundLocked(I)Z
    .registers 5

    const/4 v2, 0x1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService;->isProcessStateForeground(I)Z

    move-result v0

    return v0
.end method

.method protected isUserUnlockedL(I)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_18

    move-result v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return v2

    :catchall_18
    move-exception v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutService_105401(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(Lcom/android/server/pm/ShortcutPackageItem;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutService_107430(Lcom/android/server/pm/ShortcutUser;IZLandroid/content/pm/ApplicationInfo;)V
    .registers 7

    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2, p3}, Lcom/android/server/pm/ShortcutUser;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    iget-object v0, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutService_22934(JI)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, 0xf

    :try_start_5
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutService_57637(ILjava/lang/String;)V
    .registers 8

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2a

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_27

    move-result v3

    if-nez v3, :cond_b

    :try_start_9
    monitor-exit v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a} :catch_2a

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_27

    :try_start_12
    monitor-exit v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_19
    if-ltz v1, :cond_2b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-interface {v3, p2, p1}, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;->onShortcutChanged(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    :catchall_27
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v2

    :cond_2b
    return-void
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutService_85316(Ljava/lang/String;IZLcom/android/server/pm/ShortcutUser;)V
    .registers 6

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method logDurationStat(IJ)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mCountStats:[I

    aget v2, v0, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mDurationStats:[J

    aget-wide v2, v0, p1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p2

    add-long/2addr v2, v4

    aput-wide v2, v0, p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onApplicationActive(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceResetThrottlingPermission()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1a

    move-result v0

    if-nez v0, :cond_e

    monitor-exit v1

    return-void

    :cond_e
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimitingForCommandLineNoSaving()V

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onBootPhase(I)V
    .registers 4

    sparse-switch p1, :sswitch_data_10

    :goto_3
    return-void

    :sswitch_4
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->initialize()V

    goto :goto_3

    :sswitch_8
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    nop

    :sswitch_data_10
    .sparse-switch
        0x1e0 -> :sswitch_4
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 21

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceShell()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v12

    :try_start_7
    new-instance v2, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$MyShellCommand;)V

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/ShortcutService$MyShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-result v10

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_27

    invoke-virtual {p0, v12, v13}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v2

    invoke-virtual {p0, v12, v13}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v2
.end method

.method openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_39

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_36

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_36
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    :goto_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_6a

    move-object v5, v0

    :goto_4a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_83

    new-instance v5, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {v5, v1}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object v5

    :cond_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4a

    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_42
.end method

.method protected openIconFileForWriteSmartSwitch(ILjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4c

    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4c
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_4f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8e

    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create file - already exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to create file - already exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method packageShortcutsChanged(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->notifyListeners(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v4, 0xc2000

    invoke-virtual {v1, p1, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_20

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_25

    :cond_1d
    sget-object v1, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v1

    :catchall_20
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v1

    :cond_25
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object v1

    :cond_36
    if-eqz p3, :cond_3d

    sget-object v1, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_3d
    return-object v0
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_e

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_18

    monitor-exit v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 8

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    const-string/jumbo v2, "shortcutIds must be provided"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1c
    if-ltz v0, :cond_30

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_30
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_3b

    monitor-exit v3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method removeIconLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v5, "reportShortcutUsed: package %s doesn\'t have shortcut %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_3c

    monitor-exit v4

    return-void

    :cond_2e
    monitor-exit v4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    :try_start_33
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v4

    throw v1

    :catchall_3f
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method public requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 12

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method resetAllThrottlingInner()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveBaseState()V

    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "ShortcutManager: throttling counter reset for all users"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetThrottling()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystemOrShell()V

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    return-void
.end method

.method resetThrottlingInner(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is locked or not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_52

    monitor-exit v1

    return-void

    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->resetThrottling()V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_52

    monitor-exit v1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    const-string/jumbo v0, "ShortcutService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ShortcutManager: throttling counter reset for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_52
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restoreBitmapsFromBackupService(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->enforceSystem()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_5
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_3b
    .catchall {:try_start_5 .. :try_end_a} :catchall_30

    const/4 v6, 0x0

    :try_start_b
    invoke-virtual {p0, v6, p2, p3}, Lcom/android/server/pm/ShortcutService;->openIconFileForWriteSmartSwitch(ILjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    const/16 v6, 0x400

    new-array v0, v6, [B

    const/4 v5, 0x0

    :goto_14
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_28

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f
    .catchall {:try_start_b .. :try_end_1e} :catchall_38

    goto :goto_14

    :catch_1f
    move-exception v1

    move-object v2, v3

    :goto_21
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_27
    return-void

    :cond_28
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v3

    goto :goto_27

    :catchall_30
    move-exception v6

    :goto_31
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    :catchall_38
    move-exception v6

    move-object v2, v3

    goto :goto_31

    :catch_3b
    move-exception v1

    goto :goto_21
.end method

.method saveBaseStateLocked()V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Landroid/util/AtomicFile;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "last_reset_time"

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:J

    invoke-static {v2, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v4, "root"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_3d

    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    const-string/jumbo v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to write to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_3c
.end method

.method saveDirtyInfo()V
    .registers 6

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_2a

    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_b
    if-ltz v1, :cond_32

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_23

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseStateLocked()V

    :goto_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_23
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserLocked(I)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_20

    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v4

    throw v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    const-string/jumbo v3, "Exception in saveDirtyInfo"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_31
    return-void

    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_27

    :try_start_37
    monitor-exit v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_2a

    goto :goto_31
.end method

.method saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V
    .registers 10

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_31

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :cond_1e
    :try_start_1e
    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_31

    :try_start_20
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_72

    :pswitch_27
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v3

    :try_start_2d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    throw v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v3

    :pswitch_36
    :try_start_36
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ShortcutService;->injectValidateIconResPackage(Landroid/content/pm/ShortcutInfo;Landroid/graphics/drawable/Icon;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_2c

    :try_start_44
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_31

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :pswitch_4b
    :try_start_4b
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4f
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v7, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {v3, p1, v2, v6, v7}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_2c

    :try_start_58
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_31

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :pswitch_5f
    :try_start_5f
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v3, v2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_2c

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-int v2, v3

    goto :goto_4f

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_36
        :pswitch_27
        :pswitch_27
        :pswitch_5f
    .end packed-switch
.end method

.method scheduleSaveUser(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    return-void
.end method

.method public setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 12

    const/4 v7, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_f
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall()Z
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_5c

    move-result v5

    if-nez v5, :cond_28

    monitor-exit v6

    return v7

    :cond_28
    :try_start_28
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v4, :cond_3e

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()V

    const/4 v0, 0x0

    :goto_42
    if-ge v0, v4, :cond_50

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutPackage;->addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_50
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_5c

    monitor-exit v6

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    const/4 v5, 0x1

    return v5

    :catchall_5c
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method shouldBackupApp(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method shouldBackupApp(Ljava/lang/String;I)Z
    .registers 4

    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->isApplicationFlagSet(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method throwIfUserLockedL(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is locked or not running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method

.method updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v3, 0x1

    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/util/KeyValueListParser;-><init>(C)V

    :try_start_9
    invoke-virtual {v2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_88

    :goto_c
    const-string/jumbo v4, "save_delay_ms"

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    const-wide/16 v4, 0x1

    const-string/jumbo v6, "reset_interval_sec"

    const-wide/32 v8, 0x15180

    invoke-virtual {v2, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    const-string/jumbo v4, "max_updates_per_interval"

    const-wide/16 v6, 0xa

    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    const-string/jumbo v4, "max_shortcuts"

    const-wide/16 v6, 0x5

    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v4

    if-eqz v4, :cond_95

    const-string/jumbo v4, "max_icon_dimension_dp_lowram"

    const-wide/16 v6, 0x30

    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_61
    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    const-string/jumbo v4, "icon_format"

    sget-object v5, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    const-string/jumbo v4, "icon_quality"

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return v3

    :catch_88
    move-exception v0

    const-string/jumbo v4, "ShortcutService"

    const-string/jumbo v5, "Bad shortcut manager settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_95
    const-string/jumbo v4, "max_icon_dimension_dp"

    const-wide/16 v6, 0x60

    invoke-virtual {v2, v4, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v4, v4

    goto :goto_61
.end method

.method public updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 16

    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyCaller(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_e
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v1, v7}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall()Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_8f

    move-result v7

    if-nez v7, :cond_25

    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :cond_25
    :try_start_25
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->clearAllImplicitRanks()V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v4, :cond_94

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;Z)V

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    if-nez v6, :cond_45

    :cond_42
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_45
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v7

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v9

    if-eq v7, v9, :cond_58

    const-string/jumbo v7, "ShortcutService"

    const-string/jumbo v9, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    :cond_68
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-eqz v7, :cond_92

    const/4 v3, 0x1

    :goto_6f
    if-eqz v3, :cond_74

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutService;->removeIconLocked(Landroid/content/pm/ShortcutInfo;)V

    :cond_74
    invoke-virtual {v6, v5}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    if-eqz v3, :cond_83

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Landroid/content/pm/ShortcutInfo;)V

    :cond_83
    if-nez v3, :cond_8b

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v7

    if-eqz v7, :cond_42

    :cond_8b
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    :try_end_8e
    .catchall {:try_start_25 .. :try_end_8e} :catchall_8f

    goto :goto_42

    :catchall_8f
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_92
    const/4 v3, 0x0

    goto :goto_6f

    :cond_94
    :try_start_94
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_8f

    monitor-exit v8

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    const/4 v7, 0x1

    return v7
.end method

.method public validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    return-void
.end method

.method final verifyStates()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutService;->verifyStatesInner()V

    :cond_9
    return-void
.end method

.method waitForBitmapSavesForTest()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final wtf(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    if-nez p2, :cond_a

    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "Stacktrace"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "Last failure was logged here:"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_25

    monitor-exit v1

    const-string/jumbo v0, "ShortcutService"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method