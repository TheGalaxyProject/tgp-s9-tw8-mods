.class public Lcom/android/server/retaildemo/RetailDemoModeService;
.super Lcom/android/server/SystemService;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/retaildemo/RetailDemoModeService$1;,
        Lcom/android/server/retaildemo/RetailDemoModeService$Injector;,
        Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;,
        Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;,
        Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_DEMO:Ljava/lang/String; = "com.android.server.retaildemo.ACTION_RESET_DEMO"

.field private static final DEBUG:Z = false

.field private static final DEMO_SESSION_COUNT:Ljava/lang/String; = "retail_demo_session_count"

.field private static final DEMO_SESSION_DURATION:Ljava/lang/String; = "retail_demo_session_duration"

.field private static final DEMO_USER_NAME:Ljava/lang/String; = "Demo"

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MSG_INACTIVITY_TIME_OUT:I = 0x1

.field private static final MSG_START_NEW_SESSION:I = 0x2

.field private static final MSG_TURN_SCREEN_ON:I = 0x0

.field private static final SCREEN_WAKEUP_DELAY:J = 0x9c4L

.field static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_INACTIVITY_TIMEOUT_DEFAULT:J = 0x15f90L

.field private static final USER_INACTIVITY_TIMEOUT_MIN:J = 0x2710L

.field static final VOLUME_STREAMS_TO_MUTE:[I

.field private static final WARNING_DIALOG_TIMEOUT_DEFAULT:J


# instance fields
.field final mActivityLock:Ljava/lang/Object;

.field private mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

.field private mCameraIdsWithFlash:[Ljava/lang/String;

.field mCurrentUserId:I

.field mDeviceInDemoMode:Z

.field mFirstUserActivityTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

.field mIsCarrierDemoMode:Z

.field mLastUserActivityTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mLocalService:Landroid/app/RetailDemoModeServiceInternal;

.field private mPackageVerifierEnableInitialState:I

.field private mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

.field private mSafeBootRestrictionInitialState:Z

.field mUserInactivityTimeout:J

.field mUserUntouched:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field mWarningDialogTimeout:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/RetailDemoModeService$Injector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/PreloadAppsInstaller;
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->deletePreloadsFolderContents()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/retaildemo/RetailDemoModeService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/retaildemo/RetailDemoModeService;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/retaildemo/RetailDemoModeService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService;->setupDemoUser(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->showInactivityCountdownDialog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->startDemoMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->stopDemoMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->VOLUME_STREAMS_TO_MUTE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/retaildemo/RetailDemoModeService;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService$Injector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/retaildemo/RetailDemoModeService$Injector;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$1;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLocalService:Landroid/app/RetailDemoModeServiceInternal;

    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    iput-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2a

    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearPrimaryCallLog()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleting call log failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private deletePreloadsFolderContents()Z
    .registers 11

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v5, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Deleting contents of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    array-length v6, v3

    :goto_2c
    if-ge v5, v6, :cond_9a

    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_56

    const/4 v4, 0x0

    sget-object v7, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot delete file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_59
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_56

    const/4 v4, 0x0

    sget-object v7, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot delete dir and its content "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_80
    sget-object v7, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping directory with file cache "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_9a
    return v4
.end method

.method private getCameraIdsWithFlash()[Ljava/lang/String;
    .registers 11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v3

    if-eqz v3, :cond_38

    :try_start_d
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_13
    if-ge v5, v7, :cond_38

    aget-object v1, v6, v5

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_2c} :catch_2f

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :catch_2f
    move-exception v4

    sget-object v5, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to access camera while getting camera id list"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private grantRuntimePermissionToCamera(Landroid/os/UserHandle;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v4}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/high16 v5, 0xc0000

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v4, v5, p1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v1

    goto :goto_29
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private muteVolumeStreams()V
    .registers 8

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->VOLUME_STREAMS_TO_MUTE:[I

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_1f

    aget v0, v3, v1

    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v5}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v6}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v6

    invoke-virtual {v5, v0, v6, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v1, :cond_15

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_15
    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;)V

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setupDemoUser(Landroid/content/pm/UserInfo;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    const-string/jumbo v3, "no_config_wifi"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_install_unknown_sources"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_config_mobile_networks"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_usb_file_transfer"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_modify_accounts"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_config_bluetooth"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_outgoing_calls"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    const-string/jumbo v3, "no_safe_boot"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v13, v3, v5, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-eqz v3, :cond_57

    const-string/jumbo v3, "no_sms"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4, v14}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "skip_first_use_hints"

    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/retaildemo/RetailDemoModeService;->grantRuntimePermissionToCamera(Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->clearPrimaryCallLog()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v3, :cond_b8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10401f7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_a0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v8, v4, v5, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_b7} :catch_123

    :cond_b7
    :goto_b7
    return-void

    :cond_b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10401e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-static {v3, v7, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10401e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_100

    const/4 v3, 0x0

    new-array v11, v3, [Ljava/lang/String;

    :goto_e3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v3, 0x0

    array-length v0, v11

    move/from16 v16, v0

    move v15, v3

    :goto_ec
    move/from16 v0, v16

    if-ge v15, v0, :cond_b7

    aget-object v2, v11, v15

    :try_start_f2
    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_fc} :catch_108

    :goto_fc
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_ec

    :cond_100
    const-string/jumbo v3, ","

    invoke-static {v10, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_e3

    :catch_108
    move-exception v12

    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error enabling application: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc

    :catch_123
    move-exception v12

    goto :goto_b7
.end method

.method private showInactivityCountdownDialog()V
    .registers 7

    new-instance v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWarningDialogTimeout:J

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;-><init>(Landroid/content/Context;JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$2;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$3;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setOnCountDownExpiredListener(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;)V

    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->show()V

    return-void
.end method

.method private startDemoMode()V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getPreloadAppsInstaller()Lcom/android/server/retaildemo/PreloadAppsInstaller;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->initializeWakeLock()V

    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    if-nez v3, :cond_1b

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getCameraIdsWithFlash()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->registerBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10401e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3e

    move v1, v2

    :cond_3e
    iput-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    const-string/jumbo v3, "sys.retaildemo.enabled"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    const-string/jumbo v3, "no_safe_boot"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSafeBootRestrictionInitialState:Z

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "package_verifier_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPackageVerifierEnableInitialState:I

    return-void
.end method

.method private stopDemoMode()V
    .registers 6

    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->destroyWakeLock()V

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->unregisterBroadcastReceiver()V

    iget-boolean v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "no_safe_boot"

    iget-boolean v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSafeBootRestrictionInitialState:Z

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "package_verifier_enable"

    iget v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPackageVerifierEnableInitialState:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_30
    iput-boolean v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    iput-boolean v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Lcom/android/server/retaildemo/RetailDemoModeService$IntentReceiver;

    :cond_10
    return-void
.end method


# virtual methods
.method isDemoLauncherDisabled()Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v4}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10401f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iget v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    invoke-interface {v2, v4, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_21

    move-result v1

    :goto_1c
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2b

    const/4 v4, 0x1

    :goto_20
    return v4

    :catch_21
    move-exception v3

    sget-object v4, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error retrieving demo launcher enabled setting"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_2b
    const/4 v4, 0x0

    goto :goto_20
.end method

.method logSessionDuration()V
    .registers 9

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-wide v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    iget-wide v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    long-to-int v0, v4

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->logSessionDuration(I)V

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 4

    sparse-switch p1, :sswitch_data_20

    :cond_3
    :goto_3
    return-void

    :sswitch_4
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->register()V

    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V

    goto :goto_3

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->startDemoMode()V

    goto :goto_3

    :sswitch_data_20
    .sparse-switch
        0x258 -> :sswitch_4
        0x3e8 -> :sswitch_12
    .end sparse-switch
.end method

.method public onStart()V
    .registers 5

    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLocalService:Landroid/app/RetailDemoModeServiceInternal;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->publishLocalService(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/app/RetailDemoModeServiceInternal;)V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 9

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Should not allow switch to non-demo user in demo mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    iget-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->isWakeLockHeld()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->acquireWakeLock()V

    :cond_32
    iput p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v2}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getSystemUsersConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityManagerInternal;->updatePersistentConfigurationForUser(Landroid/content/res/Configuration;I)V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->turnOffAllFlashLights([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->muteVolumeStreams()V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_62
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    iget-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mIsCarrierDemoMode:Z

    if-nez v1, :cond_a1

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v3}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->createResetNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_8a
    iput-boolean v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_a2

    monitor-exit v1

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mInjector:Lcom/android/server/retaildemo/RetailDemoModeService$Injector;

    invoke-virtual {v1, v6}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->logSessionCount(I)V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/retaildemo/RetailDemoModeService$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService$4;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a1
    return-void

    :catchall_a2
    move-exception v2

    monitor-exit v1

    throw v2
.end method
