.class Lcom/android/server/retaildemo/RetailDemoModeService$Injector;
.super Ljava/lang/Object;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/retaildemo/RetailDemoModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mAmi:Landroid/app/ActivityManagerInternal;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mNm:Landroid/app/NotificationManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

.field private mResetDemoPendingIntent:Landroid/app/PendingIntent;

.field private mSystemUserConfiguration:Landroid/content/res/Configuration;

.field private mUm:Landroid/os/UserManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPowerManager:Landroid/os/PowerManager;

    :cond_13
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private getResetDemoPendingIntent()Landroid/app/PendingIntent;
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_17

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    :cond_17
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    return-object v1
.end method


# virtual methods
.method acquireWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method createResetNotification()Landroid/app/Notification;
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->RETAIL_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104089a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040899

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080637

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getResetDemoPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10601bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method destroyWakeLock()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAmi:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAmi:Landroid/app/ActivityManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAmi:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAudioManager:Landroid/media/AudioManager;

    :cond_12
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getCameraManager()Landroid/hardware/camera2/CameraManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_13
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDataPreloadsDirectory()Ljava/io/File;
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getDataPreloadsFileCacheDirectory()Ljava/io/File;
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mNm:Landroid/app/NotificationManager;

    :cond_e
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mNm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPm:Landroid/content/pm/PackageManager;

    :cond_e
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method getPreloadAppsInstaller()Lcom/android/server/retaildemo/PreloadAppsInstaller;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/server/retaildemo/PreloadAppsInstaller;

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/retaildemo/PreloadAppsInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    :cond_f
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    return-object v0
.end method

.method getSystemUsersConfiguration()Landroid/content/res/Configuration;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mUm:Landroid/os/UserManager;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mUm:Landroid/os/UserManager;

    :cond_12
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method initializeWakeLock()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_15

    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_15
    return-void
.end method

.method isWakeLockHeld()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method logSessionCount(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "retail_demo_session_count"

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method logSessionDuration(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "retail_demo_session_duration"

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method publishLocalService(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/app/RetailDemoModeServiceInternal;)V
    .registers 4

    const-class v0, Landroid/app/RetailDemoModeServiceInternal;

    invoke-static {p1, v0, p2}, Lcom/android/server/retaildemo/RetailDemoModeService;->-wrap2(Lcom/android/server/retaildemo/RetailDemoModeService;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method releaseWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method switchUser(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_c

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAms:Lcom/android/server/am/ActivityManagerService;

    :cond_c
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->switchUser(I)Z

    return-void
.end method

.method systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method turnOffAllFlashLights([Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_35

    aget-object v0, p1, v2

    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService$Injector;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_e} :catch_11

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_11
    move-exception v1

    invoke-static {}, Lcom/android/server/retaildemo/RetailDemoModeService;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to access camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " while turning off flash"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :cond_35
    return-void
.end method
