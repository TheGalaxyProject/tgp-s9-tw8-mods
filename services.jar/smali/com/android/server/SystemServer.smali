.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/BootTimingsTraceLog;

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final COVER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cover.CoverManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030405

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRIENDS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.friends.FrsService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SDP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.SdpManagerService$Lifecycle"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLOW_DISPATCH_THRESHOLD_MS:I = 0x3e8

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIMA_KEYSTORE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final isMobilePaymentAllowed:Z = true

.field private static final isRLLAllowed:Z = false

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field SCEPPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

.field ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field pkmService:Lcom/android/server/PKMService;

.field safeModeValueForTheme:Z

.field timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method static synthetic -com_android_server_SystemServer-mthref-0()V
    .registers 0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/BootTimingsTraceLog;

    const-string/jumbo v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/BootTimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/BootTimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    iput-object v1, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iput-object v1, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->SCEPPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    return-void
.end method

.method private createSystemContext()V
    .registers 5

    const v3, 0x1030405

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method static synthetic lambda$-com_android_server_SystemServer_40481()V
    .registers 4

    new-instance v0, Landroid/util/BootTimingsTraceLog;

    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/BootTimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/BootTimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    invoke-virtual {v0}, Landroid/util/BootTimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_SystemServer_47521()V
    .registers 6

    :try_start_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "SecondaryZygotePreload"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/BootTimingsTraceLog;

    const-string/jumbo v2, "SystemServerTimingAsync"

    const-wide/32 v4, 0x80000

    invoke-direct {v1, v2, v4, v5}, Landroid/util/BootTimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v2, "SecondaryZygotePreload"

    invoke-virtual {v1, v2}, Landroid/util/BootTimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Unable to preload default resources"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-virtual {v1}, Landroid/util/BootTimingsTraceLog;->traceEnd()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "Exception preloading default resources"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method static synthetic lambda$-com_android_server_SystemServer_64851(Landroid/content/Context;)V
    .registers 9

    const-string/jumbo v5, "Hqm Service"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string/jumbo v5, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v5, "com.samsung.android.hqm.HqmManagerService"

    invoke-virtual {v2, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v5, "HqmManagerService"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_3b

    :goto_37
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void

    :catch_3b
    move-exception v4

    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v6, "hqm.jar not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method static synthetic lambda$-com_android_server_SystemServer_76926()V
    .registers 1

    const-string/jumbo v0, "StartHidlServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_81

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_81

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_6f

    const/4 v4, 0x1

    :goto_1e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_71

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    if-eqz v3, :cond_7e

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7e

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_48
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_73

    move-result-object v1

    :goto_4c
    if-eqz v1, :cond_7e

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7e

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    const/4 v4, 0x0

    goto :goto_1e

    :cond_71
    const/4 v3, 0x0

    goto :goto_2c

    :catch_73
    move-exception v0

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    :cond_7e
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :cond_81
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .registers 15

    const-wide/32 v2, 0x5265c00

    const/4 v13, 0x0

    :try_start_4
    const-string/jumbo v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_21
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_30

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_30
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Timezone not set; setting to GMT."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.timezone"

    const-string/jumbo v1, "GMT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v12, v0

    const/16 v0, 0xbc2

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(II)I

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_9a

    const-string/jumbo v0, "boot_system_server_init"

    const/4 v1, 0x0

    invoke-static {v1, v0, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_9a
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_c8
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Looper;->setSlowDispatchThresholdMs(J)V

    :cond_113
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_12d
    .catchall {:try_start_4 .. :try_end_12d} :catchall_1c7

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_130
    const-string/jumbo v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_142
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_142} :catch_1cc
    .catchall {:try_start_130 .. :try_end_142} :catchall_1e0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_154

    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_154
    :try_start_154
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.voc"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/16 v3, 0x80

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_170

    const-string/jumbo v0, "sys.members.installed"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_170} :catch_1e5

    :cond_170
    :goto_170
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_1a9

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v12, v0

    const-string/jumbo v0, "boot_system_server_ready"

    invoke-static {v13, v0, v12}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const v6, 0xea60

    const v0, 0xea60

    if-le v12, v0, :cond_1a9

    const-string/jumbo v0, "SystemServerTiming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a9
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.boot.loop_forever"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1c7
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    :catch_1cc
    move-exception v8

    :try_start_1cd
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v8
    :try_end_1e0
    .catchall {:try_start_1cd .. :try_end_1e0} :catchall_1e0

    :catchall_1e0
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    :catch_1e5
    move-exception v7

    goto :goto_170
.end method

.method private startBootstrapServices()V
    .registers 14

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Reading configuration..."

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ReadingSystemConfig"

    const-string/jumbo v6, "ReadingSystemConfig"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v9, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;

    invoke-direct {v9}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo;-><init>()V

    const-string/jumbo v10, "ReadingSystemConfig"

    invoke-virtual {v6, v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartInstaller"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "DeviceIdentifiersPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartActivityManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "startMultiScreenManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/am/MultiScreenManagerService;

    invoke-direct {v5}, Lcom/android/server/am/MultiScreenManagerService;-><init>()V

    const-string/jumbo v6, "MultiScreen"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v6, v9}, Lcom/android/server/am/MultiScreenManagerService;->setSystemService(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartPowerManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "InitPowerManagement"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "config.disable_noncore"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_c6

    const-string/jumbo v6, "StartRecoverySystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c6
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    const-string/jumbo v6, "StartLightsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/lights/LightsService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartDisplayManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "WaitForDisplay"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_210

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_11b
    :goto_11b
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v6, :cond_12a

    const-string/jumbo v6, "boot_package_manager_init_start"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-static {v12, v6, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_12a
    const-string/jumbo v6, "StartPackageManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "!@Boot: Start PackageManagerService"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_226

    move v6, v7

    :goto_140
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v9, v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "!@Boot: End PackageManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "sys.boot.end_package"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v6, :cond_184

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_184

    const-string/jumbo v6, "boot_package_manager_init_ready"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    long-to-int v7, v10

    invoke-static {v12, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_184
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_1a1

    const-string/jumbo v6, "config.disable_otadexopt"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a1

    const-string/jumbo v6, "StartOtaDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_197
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v7}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_19e} :catch_229
    .catchall {:try_start_197 .. :try_end_19e} :catchall_235

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1a1
    :goto_1a1
    sget-boolean v6, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v6, :cond_1b7

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enhanced Zygote ASLR setprop zygote.aslr.agent64 starting"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "zygote.aslr.agent64"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b7
    const-string/jumbo v6, "StartUserManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "InitAttributerCache"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "SetSystemProcess"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    const-string/jumbo v6, "StartOverlayManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v7, Lcom/android/server/om/OverlayManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;

    invoke-direct {v7}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$1;-><init>()V

    const-string/jumbo v8, "StartSensorService"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    return-void

    :cond_210
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11b

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Device encrypted - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_11b

    :cond_226
    move v6, v8

    goto/16 :goto_140

    :catch_229
    move-exception v3

    :try_start_22a
    const-string/jumbo v6, "starting OtaDexOptService"

    invoke-direct {p0, v6, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_230
    .catchall {:try_start_22a .. :try_end_230} :catchall_235

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_1a1

    :catchall_235
    move-exception v6

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v6
.end method

.method private startCoreServices()V
    .registers 3

    const-string/jumbo v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_27
    :try_start_27
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const-string/jumbo v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 223

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/16 v212, 0x0

    const/16 v201, 0x0

    const/16 v165, 0x0

    const/16 v170, 0x0

    const/16 v166, 0x0

    const/16 v52, 0x0

    const/16 v168, 0x0

    const/16 v193, 0x0

    const/16 v218, 0x0

    const/16 v190, 0x0

    const/16 v171, 0x0

    const/16 v49, 0x0

    const/16 v121, 0x0

    const/16 v204, 0x0

    const/16 v59, 0x0

    const/16 v64, 0x0

    const/16 v137, 0x0

    const/16 v23, 0x0

    const/16 v113, 0x0

    const/16 v147, 0x0

    const/16 v139, 0x0

    const/16 v148, 0x0

    const/16 v141, 0x0

    const/16 v196, 0x0

    const/16 v194, 0x0

    const/16 v89, 0x0

    const/16 v83, 0x0

    const/16 v85, 0x0

    const/16 v216, 0x0

    const/16 v189, 0x0

    const/16 v187, 0x0

    const/16 v135, 0x0

    const/16 v133, 0x0

    const/16 v180, 0x0

    const/16 v176, 0x0

    const/16 v100, 0x0

    const-string/jumbo v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    const-string/jumbo v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    const-string/jumbo v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v69

    const-string/jumbo v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v79

    const-string/jumbo v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v73

    const-string/jumbo v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v71

    const-string/jumbo v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    const-string/jumbo v6, "config.disable_rtt"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    const-string/jumbo v6, "config.disable_mediaproj"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v70

    const-string/jumbo v6, "config.disable_serial"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v77

    const-string/jumbo v6, "config.disable_searchmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v76

    const-string/jumbo v6, "config.disable_trustmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v81

    const-string/jumbo v6, "config.disable_textservices"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v80

    const-string/jumbo v6, "config.disable_samplingprof"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    const-string/jumbo v6, "config.disable_consumerir"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v68

    const-string/jumbo v6, "config.disable_vrmanager"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v82

    const-string/jumbo v6, "config.disable_cameraservice"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v123

    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_f6

    const-string/jumbo v6, "debug.crash_system"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f6

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    :cond_f6
    :try_start_f6
    const-string/jumbo v30, "SecondaryZygotePreload"

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;

    invoke-direct {v7}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$2;-><init>()V

    const-string/jumbo v8, "SecondaryZygotePreload"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v6, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "sec_key_att_app_id_provider"

    new-instance v7, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v7, v4}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartKeyChainSystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartSchedulingPolicyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartTelecomLoaderService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartTelephonyRegistry"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v205, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v205

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_166
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_166} :catch_2599

    :try_start_166
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v205

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/RuntimeException; {:try_start_166 .. :try_end_189} :catch_1cc1

    :try_start_189
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v147

    const-string/jumbo v6, "persona"

    move-object/from16 v0, v147

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19e
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_19e} :catch_1cb3
    .catch Ljava/lang/RuntimeException; {:try_start_189 .. :try_end_19e} :catch_1cc1

    :goto_19e
    const/16 v96, 0x1

    :try_start_1a0
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxMUMContainerPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v140, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v140

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_1a0 .. :try_end_1b0} :catch_1cdc
    .catch Ljava/lang/RuntimeException; {:try_start_1a0 .. :try_end_1b0} :catch_1cc1

    :try_start_1b0
    const-string/jumbo v6, "mum_container_policy"

    move-object/from16 v0, v140

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b8
    .catch Ljava/lang/Throwable; {:try_start_1b0 .. :try_end_1b8} :catch_25da
    .catch Ljava/lang/RuntimeException; {:try_start_1b0 .. :try_end_1b8} :catch_259e

    move-object/from16 v139, v140

    :goto_1ba
    :try_start_1ba
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxMUMRCPPolicyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v142, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    move-object/from16 v0, v142

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_1ca
    .catch Ljava/lang/Throwable; {:try_start_1ba .. :try_end_1ca} :catch_1cea
    .catch Ljava/lang/RuntimeException; {:try_start_1ba .. :try_end_1ca} :catch_1cc1

    :try_start_1ca
    const-string/jumbo v6, "mum_container_rcp_policy"

    move-object/from16 v0, v142

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d2
    .catch Ljava/lang/Throwable; {:try_start_1ca .. :try_end_1d2} :catch_25d5
    .catch Ljava/lang/RuntimeException; {:try_start_1ca .. :try_end_1d2} :catch_25a7

    move-object/from16 v141, v142

    :goto_1d4
    :try_start_1d4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1d7
    .catch Ljava/lang/RuntimeException; {:try_start_1d4 .. :try_end_1d7} :catch_1cc1

    :try_start_1d7
    const-string/jumbo v6, "EDMService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "spd_control_policy"

    new-instance v7, Lcom/android/server/enterprise/restriction/SPDControlPolicy;

    invoke-direct {v7, v4}, Lcom/android/server/enterprise/restriction/SPDControlPolicy;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1ec} :catch_1cf8
    .catch Ljava/lang/RuntimeException; {:try_start_1d7 .. :try_end_1ec} :catch_1cc1

    :goto_1ec
    :try_start_1ec
    const-string/jumbo v6, "SEAMS"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v4}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_1ec .. :try_end_209} :catch_1d06
    .catch Ljava/lang/RuntimeException; {:try_start_1ec .. :try_end_209} :catch_1cc1

    :goto_209
    :try_start_209
    const-string/jumbo v6, "SEDenial"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v4}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_226
    .catch Ljava/lang/Throwable; {:try_start_209 .. :try_end_226} :catch_1d14
    .catch Ljava/lang/RuntimeException; {:try_start_209 .. :try_end_226} :catch_1cc1

    :goto_226
    :try_start_226
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "DeviceRootKeyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_235
    .catch Ljava/lang/RuntimeException; {:try_start_226 .. :try_end_235} :catch_1cc1

    :try_start_235
    const-string/jumbo v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v4}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_240
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_240} :catch_1d20
    .catch Ljava/lang/RuntimeException; {:try_start_235 .. :try_end_240} :catch_1cc1

    :goto_240
    :try_start_240
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "2"

    const-string/jumbo v7, "ro.config.ifaaversion"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[ro.config.ifaaversion] value is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_270
    .catch Ljava/lang/RuntimeException; {:try_start_240 .. :try_end_270} :catch_1cc1

    if-eqz v35, :cond_29b

    :try_start_272
    const-string/jumbo v6, "com.android.server.IfaaService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v119

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v119

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v118

    const-string/jumbo v7, "IfaaService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    move-object/from16 v0, v118

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29b
    .catch Ljava/lang/Throwable; {:try_start_272 .. :try_end_29b} :catch_1d2f
    .catch Ljava/lang/RuntimeException; {:try_start_272 .. :try_end_29b} :catch_1cc1

    :cond_29b
    :goto_29b
    :try_start_29b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "TigerSskdsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "3"

    const-string/jumbo v7, "ro.config.tigerversion"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v208

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Tiger need start service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v208

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d1
    .catch Ljava/lang/RuntimeException; {:try_start_29b .. :try_end_2d1} :catch_1cc1

    if-eqz v208, :cond_349

    :try_start_2d3
    const-string/jumbo v6, "com.samsung.android.service.TigerSskdsService.SskdsDevice"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v207

    const-string/jumbo v6, "isDeviceRegistered"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    move-object/from16 v0, v207

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v124

    invoke-virtual/range {v207 .. v207}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, v124

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v122

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Tiger Device Registered: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v122

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v122, :cond_349

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Start TigerSskdsService..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.android.server.TigerSskdsService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v32

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v206

    const-string/jumbo v7, "TigerSskdsService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    move-object/from16 v0, v206

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_349
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d3 .. :try_end_349} :catch_1d68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d3 .. :try_end_349} :catch_1d5a
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_349} :catch_1d4c
    .catch Ljava/lang/Throwable; {:try_start_2d3 .. :try_end_349} :catch_1d3e
    .catch Ljava/lang/RuntimeException; {:try_start_2d3 .. :try_end_349} :catch_1cc1

    :cond_349
    :goto_349
    :try_start_349
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "ActivationTeeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ro.product.name"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v179

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "EngineeringModeService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_36b
    .catch Ljava/lang/RuntimeException; {:try_start_349 .. :try_end_36b} :catch_1cc1

    :try_start_36b
    const-string/jumbo v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v4}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_376
    .catch Ljava/lang/Throwable; {:try_start_36b .. :try_end_376} :catch_1d76
    .catch Ljava/lang/RuntimeException; {:try_start_36b .. :try_end_376} :catch_1cc1

    :goto_376
    :try_start_376
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "SamsungKeyProvisioningManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SamsungKeyProvisioningManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_388
    .catch Ljava/lang/RuntimeException; {:try_start_376 .. :try_end_388} :catch_1cc1

    :try_start_388
    const-string/jumbo v6, "SamsungKeyProvisioningManagerService"

    new-instance v7, Lcom/android/server/SamsungKeyProvisioningManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/SamsungKeyProvisioningManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_393
    .catch Ljava/lang/Throwable; {:try_start_388 .. :try_end_393} :catch_1d85
    .catch Ljava/lang/RuntimeException; {:try_start_388 .. :try_end_393} :catch_1cc1

    :goto_393
    :try_start_393
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.authfw"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.feature.samsungfidouaf"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3cd

    :cond_3b0
    const-string/jumbo v6, "SemAuthnrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAuthnrService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bf
    .catch Ljava/lang/RuntimeException; {:try_start_393 .. :try_end_3bf} :catch_1cc1

    :try_start_3bf
    const-string/jumbo v6, "SemAuthnrService"

    new-instance v7, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    invoke-direct {v7, v4}, Lcom/samsung/android/authnrservice/service/SemAuthnrService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3ca
    .catch Ljava/lang/Throwable; {:try_start_3bf .. :try_end_3ca} :catch_1d94
    .catch Ljava/lang/RuntimeException; {:try_start_3bf .. :try_end_3ca} :catch_1cc1

    :goto_3ca
    :try_start_3ca
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_3cd
    const-string/jumbo v6, "SemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "GEMALTO"

    const-string/jumbo v7, "GEMALTO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f7

    const-string/jumbo v6, "GEMALTO"

    const-string/jumbo v7, "NXP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f7

    const-string/jumbo v6, "GEMALTO"

    const-string/jumbo v7, "OBERTHUR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40b

    :cond_3f7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_400
    .catch Ljava/lang/RuntimeException; {:try_start_3ca .. :try_end_400} :catch_1cc1

    :try_start_400
    const-string/jumbo v6, "SemService"

    new-instance v7, Lcom/android/server/SemService;

    invoke-direct {v7, v4}, Lcom/android/server/SemService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40b
    .catch Ljava/lang/Throwable; {:try_start_400 .. :try_end_40b} :catch_1da3
    .catch Ljava/lang/RuntimeException; {:try_start_400 .. :try_end_40b} :catch_1cc1

    :cond_40b
    :goto_40b
    :try_start_40b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "Reactive Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41d
    .catch Ljava/lang/RuntimeException; {:try_start_40b .. :try_end_41d} :catch_1cc1

    :try_start_41d
    const-string/jumbo v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v4}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_428
    .catch Ljava/lang/Throwable; {:try_start_41d .. :try_end_428} :catch_1db2
    .catch Ljava/lang/RuntimeException; {:try_start_41d .. :try_end_428} :catch_1cc1

    :goto_428
    :try_start_428
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "VaultKeeper Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "0"

    const-string/jumbo v7, "ro.security.vaultkeeper.feature"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1dcd

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VaultKeeper Service Enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44d
    .catch Ljava/lang/RuntimeException; {:try_start_428 .. :try_end_44d} :catch_1cc1

    :try_start_44d
    const-string/jumbo v6, "VaultKeeperService"

    new-instance v7, Lcom/android/server/VaultKeeperService;

    invoke-direct {v7, v4}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_458
    .catch Ljava/lang/Throwable; {:try_start_44d .. :try_end_458} :catch_1dbe
    .catch Ljava/lang/RuntimeException; {:try_start_44d .. :try_end_458} :catch_1cc1

    :goto_458
    :try_start_458
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "Remote Mobile Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Remote Mobile Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46a
    .catch Ljava/lang/RuntimeException; {:try_start_458 .. :try_end_46a} :catch_1cc1

    const/4 v6, 0x0

    const/16 v7, 0xe

    :try_start_46d
    invoke-static {v4, v6, v7}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_470
    .catch Ljava/lang/Throwable; {:try_start_46d .. :try_end_470} :catch_1dd8
    .catch Ljava/lang/RuntimeException; {:try_start_46d .. :try_end_470} :catch_1cc1

    :goto_470
    :try_start_470
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "Secure AT Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_482
    .catch Ljava/lang/RuntimeException; {:try_start_470 .. :try_end_482} :catch_1cc1

    :try_start_482
    const-string/jumbo v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v4}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48d
    .catch Ljava/lang/Throwable; {:try_start_482 .. :try_end_48d} :catch_1de4
    .catch Ljava/lang/RuntimeException; {:try_start_482 .. :try_end_48d} :catch_1cc1

    :goto_48d
    :try_start_48d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "getContentResolver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v67, :cond_4be

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Camera Service Proxy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "StartCameraServiceProxy"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_4be
    const-string/jumbo v6, "Encryption service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v65, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_4cb
    .catch Ljava/lang/RuntimeException; {:try_start_48d .. :try_end_4cb} :catch_1cc1

    :try_start_4cb
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_4d9

    const-string/jumbo v6, "DirEncryptService"

    move-object/from16 v0, v65

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d9
    .catch Ljava/lang/Throwable; {:try_start_4cb .. :try_end_4d9} :catch_1df0
    .catch Ljava/lang/RuntimeException; {:try_start_4cb .. :try_end_4d9} :catch_25b0

    :cond_4d9
    move-object/from16 v64, v65

    :goto_4db
    :try_start_4db
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartAccountManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartContentService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "InstallSystemProviders"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartVibratorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v213, Lcom/android/server/VibratorService;

    move-object/from16 v0, v213

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_521
    .catch Ljava/lang/RuntimeException; {:try_start_4db .. :try_end_521} :catch_1cc1

    :try_start_521
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v213

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v68, :cond_548

    const-string/jumbo v6, "StartConsumerIrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v60, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_53b
    .catch Ljava/lang/RuntimeException; {:try_start_521 .. :try_end_53b} :catch_1e24

    :try_start_53b
    const-string/jumbo v6, "consumer_ir"

    move-object/from16 v0, v60

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_546
    .catch Ljava/lang/RuntimeException; {:try_start_53b .. :try_end_546} :catch_25b9

    move-object/from16 v59, v60

    :cond_548
    :try_start_548
    const-string/jumbo v6, "StartAlarmManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_584

    const-string/jumbo v6, "SemMlDapService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_56d
    .catch Ljava/lang/RuntimeException; {:try_start_548 .. :try_end_56d} :catch_1e24

    :try_start_56d
    const-string/jumbo v6, "SemMLDAPService"

    new-instance v7, Lcom/samsung/android/dapservice/MlDapService;

    invoke-direct {v7, v4}, Lcom/samsung/android/dapservice/MlDapService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemMlDapService(SemMirrorLinkDapService) added"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_581
    .catch Ljava/lang/Throwable; {:try_start_56d .. :try_end_581} :catch_1e00
    .catch Ljava/lang/RuntimeException; {:try_start_56d .. :try_end_581} :catch_1e24

    :goto_581
    :try_start_581
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_584
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58d
    .catch Ljava/lang/RuntimeException; {:try_start_581 .. :try_end_58d} :catch_1e24

    :try_start_58d
    const-string/jumbo v6, "SSRM Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v40, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v39

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/app/IActivityManager;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v41

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v198

    check-cast v198, Landroid/os/IBinder;

    const-string/jumbo v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v198

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_5e1
    .catch Ljava/lang/Exception; {:try_start_58d .. :try_end_5e1} :catch_1e2d
    .catch Ljava/lang/RuntimeException; {:try_start_58d .. :try_end_5e1} :catch_1e24

    :goto_5e1
    :try_start_5e1
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$6;

    invoke-direct {v7, v4}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$6;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v8, "Hqm Service"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    const-string/jumbo v6, "off"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DMF_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_648

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Dmf Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60d
    .catch Ljava/lang/RuntimeException; {:try_start_5e1 .. :try_end_60d} :catch_1e24

    :try_start_60d
    new-instance v27, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/dmf.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.dmf.DmfManagerService"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v28

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/IBinder;

    const-string/jumbo v6, "DmfManagerService"

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_648
    .catch Ljava/lang/Exception; {:try_start_60d .. :try_end_648} :catch_1e3c
    .catch Ljava/lang/RuntimeException; {:try_start_60d .. :try_end_648} :catch_1e24

    :cond_648
    :goto_648
    :try_start_648
    const-string/jumbo v6, "InitWatchdog"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v215

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v215

    invoke-virtual {v0, v4, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartInputManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/input/InputManagerService;

    invoke-direct {v5, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_669
    .catch Ljava/lang/RuntimeException; {:try_start_648 .. :try_end_669} :catch_1e24

    :try_start_669
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_696

    const-string/jumbo v6, "Context Aware Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_696
    .catch Ljava/lang/RuntimeException; {:try_start_669 .. :try_end_696} :catch_1e59

    :cond_696
    :try_start_696
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6b0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6fb

    :cond_6b0
    const-string/jumbo v6, "SemContextService  Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemContextService Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v186, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v186

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.hardware.context.SemContextService"

    move-object/from16 v0, v186

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v45

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_6fb
    .catch Ljava/lang/Exception; {:try_start_696 .. :try_end_6fb} :catch_1e4b
    .catch Ljava/lang/RuntimeException; {:try_start_696 .. :try_end_6fb} :catch_1e59

    :cond_6fb
    :goto_6fb
    :try_start_6fb
    const-string/jumbo v6, "StartGearVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_710
    .catch Ljava/lang/RuntimeException; {:try_start_6fb .. :try_end_710} :catch_1e59

    const/16 v115, 0x0

    :try_start_712
    new-instance v116, Lcom/android/server/IcccManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V
    :try_end_719
    .catch Ljava/lang/Exception; {:try_start_712 .. :try_end_719} :catch_25d2
    .catch Ljava/lang/RuntimeException; {:try_start_712 .. :try_end_719} :catch_1e59

    :try_start_719
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v116

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72a
    .catch Ljava/lang/Exception; {:try_start_719 .. :try_end_72a} :catch_1e6f
    .catch Ljava/lang/RuntimeException; {:try_start_719 .. :try_end_72a} :catch_1e59

    :try_start_72a
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v117

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getTrustedBootData result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v117

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74a
    .catch Ljava/lang/Exception; {:try_start_72a .. :try_end_74a} :catch_1e60
    .catch Ljava/lang/RuntimeException; {:try_start_72a .. :try_end_74a} :catch_1e59

    :goto_74a
    move-object/from16 v115, v116

    :goto_74c
    :try_start_74c
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_75c
    .catch Ljava/lang/RuntimeException; {:try_start_74c .. :try_end_75c} :catch_1e59

    move-result v209

    :try_start_75d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    const-string/jumbo v6, "TIMA Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/TimaService;

    invoke-direct {v6, v4}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    const-string/jumbo v6, "tima"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_790
    .catch Ljava/lang/Throwable; {:try_start_75d .. :try_end_790} :catch_1e80
    .catch Ljava/lang/RuntimeException; {:try_start_75d .. :try_end_790} :catch_1e59

    :goto_790
    const/16 v6, -0x13

    :try_start_792
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_795
    .catch Ljava/lang/RuntimeException; {:try_start_792 .. :try_end_795} :catch_1e59

    :try_start_795
    const-string/jumbo v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v125

    invoke-virtual/range {v125 .. v125}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_7cd

    const-string/jumbo v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7cd
    .catch Ljava/lang/Exception; {:try_start_795 .. :try_end_7cd} :catch_1e8d
    .catch Ljava/lang/RuntimeException; {:try_start_795 .. :try_end_7cd} :catch_1e59

    :cond_7cd
    :goto_7cd
    if-eqz v209, :cond_1ec7

    :try_start_7cf
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PKM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/PKMService;

    invoke-direct {v6, v4}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    const-string/jumbo v6, "pkm"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7eb
    .catch Ljava/lang/Throwable; {:try_start_7cf .. :try_end_7eb} :catch_1e9c
    .catch Ljava/lang/RuntimeException; {:try_start_7cf .. :try_end_7eb} :catch_1e59

    :goto_7eb
    const/16 v6, -0x13

    :try_start_7ed
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_7f0
    .catch Ljava/lang/RuntimeException; {:try_start_7ed .. :try_end_7f0} :catch_1e59

    :try_start_7f0
    const-string/jumbo v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v210

    if-eqz v210, :cond_86d

    const/16 v115, 0x0

    const-string/jumbo v6, "iccc"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v115

    check-cast v115, Lcom/android/server/IcccManagerService;

    if-nez v115, :cond_828

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Create new ICCC Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v115, Lcom/android/server/IcccManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v115

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_828
    .catch Ljava/lang/Exception; {:try_start_7f0 .. :try_end_828} :catch_1eb8
    .catch Ljava/lang/RuntimeException; {:try_start_7f0 .. :try_end_828} :catch_1e59

    :cond_828
    :try_start_828
    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TIMA Version write result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, -0xdffffe

    const/16 v219, 0x3

    move-object/from16 v0, v115

    move/from16 v1, v219

    invoke-virtual {v0, v8, v1}, Lcom/android/server/IcccManagerService;->setSecureData(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84f
    .catch Ljava/lang/Exception; {:try_start_828 .. :try_end_84f} :catch_1ea9
    .catch Ljava/lang/RuntimeException; {:try_start_828 .. :try_end_84f} :catch_1e59

    :goto_84f
    :try_start_84f
    new-instance v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const-string/jumbo v6, "knox_ccm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "knox_ccm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_86d
    .catch Ljava/lang/Exception; {:try_start_84f .. :try_end_86d} :catch_1eb8
    .catch Ljava/lang/RuntimeException; {:try_start_84f .. :try_end_86d} :catch_1e59

    :cond_86d
    :goto_86d
    :try_start_86d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_877
    .catch Ljava/lang/RuntimeException; {:try_start_86d .. :try_end_877} :catch_1e59

    move-result v6

    if-eqz v6, :cond_892

    :try_start_87a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v37, Landroid/app/BarBeamService;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "barbeam"

    move-object/from16 v0, v37

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_892
    .catch Ljava/lang/Throwable; {:try_start_87a .. :try_end_892} :catch_1ef2
    .catch Ljava/lang/RuntimeException; {:try_start_87a .. :try_end_892} :catch_1e59

    :cond_892
    :goto_892
    :try_start_892
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v4}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a6
    .catch Ljava/lang/Throwable; {:try_start_892 .. :try_end_8a6} :catch_1f00
    .catch Ljava/lang/RuntimeException; {:try_start_892 .. :try_end_8a6} :catch_1e59

    :goto_8a6
    :try_start_8a6
    const-string/jumbo v6, "StartWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v7, "StartSensorService"

    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1f0e

    const/4 v6, 0x1

    :goto_8c3
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v9, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v9}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v218

    const-string/jumbo v6, "window"

    move-object/from16 v0, v218

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "input"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$3;

    invoke-direct {v7}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$3;-><init>()V

    const-string/jumbo v8, "StartHidlServices"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v82, :cond_90a

    const-string/jumbo v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_90a
    const-string/jumbo v6, "startDesktopModeService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "startMultiWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v192, Lcom/android/server/am/MultiWindowManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v192

    move-object/from16 v1, v218

    invoke-direct {v0, v6, v1}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V

    const-string/jumbo v6, "multiwindow"

    move-object/from16 v0, v192

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "SetWindowManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v218

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual/range {v218 .. v218}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual {v5}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v123, :cond_1f11

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "bluetooth_secure_mode_manager"

    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v4}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "IpConnectivityMetrics"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    sget-boolean v6, Lcom/android/internal/os/Zygote;->isEnhancedZygoteASLREnabled:Z

    if-eqz v6, :cond_9c8

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enhanced Zygote ASLR setprop zygote.aslr.agent32 starting"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "zygote.aslr.agent32"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c8
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d1
    .catch Ljava/lang/RuntimeException; {:try_start_8a6 .. :try_end_9d1} :catch_1e59

    :try_start_9d1
    new-instance v149, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v149

    invoke-direct {v0, v4}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9d8
    .catch Ljava/lang/Throwable; {:try_start_9d1 .. :try_end_9d8} :catch_1f5c
    .catch Ljava/lang/RuntimeException; {:try_start_9d1 .. :try_end_9d8} :catch_1e59

    :try_start_9d8
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v149

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9e0
    .catch Ljava/lang/Throwable; {:try_start_9d8 .. :try_end_9e0} :catch_25cd
    .catch Ljava/lang/RuntimeException; {:try_start_9d8 .. :try_end_9e0} :catch_25c4

    move-object/from16 v148, v149

    :goto_9e2
    :try_start_9e2
    const-string/jumbo v6, "OcfKeyService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "OcfKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f1
    .catch Ljava/lang/RuntimeException; {:try_start_9e2 .. :try_end_9f1} :catch_1e59

    :try_start_9f1
    const-string/jumbo v6, "OcfKeyService"

    new-instance v7, Lcom/android/server/OcfKeyService;

    invoke-direct {v7, v4}, Lcom/android/server/OcfKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9fc
    .catch Ljava/lang/Throwable; {:try_start_9f1 .. :try_end_9fc} :catch_1f6a
    .catch Ljava/lang/RuntimeException; {:try_start_9f1 .. :try_end_9fc} :catch_1e59

    :goto_9fc
    :try_start_9fc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_9ff
    .catch Ljava/lang/RuntimeException; {:try_start_9fc .. :try_end_9ff} :catch_1e59

    move-object/from16 v204, v205

    move-object/from16 v212, v213

    :goto_a03
    const/16 v199, 0x0

    const/16 v173, 0x0

    const/16 v128, 0x0

    const/16 v182, 0x0

    const/16 v61, 0x0

    const/16 v130, 0x0

    const/16 v156, 0x0

    const/16 v98, 0x0

    const/16 v126, 0x0

    const/16 v131, 0x0

    const/16 v143, 0x0

    const/16 v145, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a48

    const-string/jumbo v6, "StartInputMethodManagerLifecycle"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartAccessibilityManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a3a
    const-string/jumbo v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a45
    .catch Ljava/lang/Throwable; {:try_start_a3a .. :try_end_a45} :catch_1f8e

    :goto_a45
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_a48
    const-string/jumbo v6, "MakeDisplayReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a4e
    invoke-virtual/range {v218 .. v218}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_a51
    .catch Ljava/lang/Throwable; {:try_start_a4e .. :try_end_a51} :catch_1f9b

    :goto_a51
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "FMRadio"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_a88

    :try_start_a6b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Add SEM_FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a88
    .catch Ljava/lang/Throwable; {:try_start_a6b .. :try_end_a88} :catch_1fa8

    :cond_a88
    :goto_a88
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "mDNIe"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a91
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v154, 0x0

    const-string/jumbo v6, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v154

    if-nez v154, :cond_1fb5

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aae
    .catch Ljava/lang/Throwable; {:try_start_a91 .. :try_end_aae} :catch_1fdb

    :goto_aae
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "SemDisplaySolution"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ab7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemDisplaySolution Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v87, 0x0

    const-string/jumbo v6, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v87

    if-nez v87, :cond_1fe8

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemDisplaySolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad4
    .catch Ljava/lang/Throwable; {:try_start_ab7 .. :try_end_ad4} :catch_200e

    :goto_ad4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "SemAllAroundSensing"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_add
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAllAroundSensing Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v33, 0x0

    const-string/jumbo v6, "com.samsung.android.allaroundsensing.SemAllAroundSensingManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v33

    if-nez v33, :cond_201b

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemAllAroundSensing Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_afa
    .catch Ljava/lang/Throwable; {:try_start_add .. :try_end_afa} :catch_2041

    :goto_afa
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b2a

    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b21

    const-string/jumbo v6, "1"

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_204e

    :cond_b21
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2a
    :goto_b2a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_b96

    if-nez v78, :cond_b96

    const-string/jumbo v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_b96

    const-string/jumbo v6, "StartStorageManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b4b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_b5f
    .catch Ljava/lang/Throwable; {:try_start_b4b .. :try_end_b5f} :catch_206b

    move-result-object v201

    :goto_b60
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartStorageStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b69
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b73
    .catch Ljava/lang/Throwable; {:try_start_b69 .. :try_end_b73} :catch_2078

    :goto_b73
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "DirEncryptSerrvice"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_b7c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v64, :cond_b93

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v64 .. v64}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_b93
    .catch Ljava/lang/Throwable; {:try_start_b7c .. :try_end_b93} :catch_2085

    :cond_b93
    :goto_b93
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_b96
    :try_start_b96
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v174

    if-eqz v174, :cond_c08

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v174

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c08

    const-string/jumbo v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v174

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c08

    const-string/jumbo v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v174

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c08

    new-instance v160, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v160

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.gesture.MotionRecognitionService"

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v44

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v56

    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c08
    .catch Ljava/lang/Exception; {:try_start_b96 .. :try_end_c08} :catch_2092

    :cond_c08
    :goto_c08
    const-string/jumbo v6, "StartUiModeManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_c30

    const-string/jumbo v6, "UpdatePackagesIfNeeded"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_c2d
    .catch Ljava/lang/Throwable; {:try_start_c26 .. :try_end_c2d} :catch_20a0

    :goto_c2d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c30
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1633

    if-nez v73, :cond_caf

    const-string/jumbo v6, "StartLockSettingsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c3f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v6, "lock_settings"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_c53
    .catch Ljava/lang/Throwable; {:try_start_c3f .. :try_end_c53} :catch_20ad

    move-result-object v130

    :goto_c54
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c8b

    const-string/jumbo v6, "StartPersistentDataBlock"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartOemLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/OemLockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c8b
    const-string/jumbo v6, "StartDeviceIdleController"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartDevicePolicyManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_caf
    :try_start_caf
    const-string/jumbo v6, "HarmonyEAS service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v138, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v138

    invoke-direct {v0, v4}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_cc5
    .catch Ljava/lang/Throwable; {:try_start_caf .. :try_end_cc5} :catch_20ba

    :try_start_cc5
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v138

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_cd9
    .catch Ljava/lang/Throwable; {:try_start_cc5 .. :try_end_cd9} :catch_2594

    move-object/from16 v137, v138

    :goto_cdb
    :try_start_cdb
    const-string/jumbo v6, "SdpManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.SdpManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v6, "sdp"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v189

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_d02
    .catch Ljava/lang/Throwable; {:try_start_cdb .. :try_end_d02} :catch_20c8

    :goto_d02
    :try_start_d02
    const-string/jumbo v6, "SdpLogService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v188, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v188

    invoke-direct {v0, v4}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_d18
    .catch Ljava/lang/Throwable; {:try_start_d02 .. :try_end_d18} :catch_20d5

    :try_start_d18
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v188

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_d23
    .catch Ljava/lang/Throwable; {:try_start_d18 .. :try_end_d23} :catch_258f

    move-object/from16 v187, v188

    :goto_d25
    :try_start_d25
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "DualAppManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object v89

    const-string/jumbo v6, "dual_app"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d3a
    .catch Ljava/lang/Throwable; {:try_start_d25 .. :try_end_d3a} :catch_20e3

    :goto_d3a
    :try_start_d3a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Instantiating and register DLPManagerPolicyService to EnterpriseDeviceManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;-><init>(Landroid/content/Context;)V
    :try_end_d4a
    .catch Ljava/lang/Throwable; {:try_start_d3a .. :try_end_d4a} :catch_20f0

    :try_start_d4a
    const-string/jumbo v6, "enterprise_dlp_service"

    const/4 v7, 0x1

    move-object/from16 v0, v84

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Instantiating and register DLPManagerService  to EnterpriseDeviceManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v86, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v86

    invoke-direct {v0, v4}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d63
    .catch Ljava/lang/Throwable; {:try_start_d4a .. :try_end_d63} :catch_2583

    :try_start_d63
    const-string/jumbo v6, "dlp"

    const/4 v7, 0x1

    move-object/from16 v0, v86

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_d6c
    .catch Ljava/lang/Throwable; {:try_start_d63 .. :try_end_d6c} :catch_2588

    move-object/from16 v85, v86

    move-object/from16 v83, v84

    :goto_d70
    if-nez v73, :cond_d91

    :try_start_d72
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v98

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d91
    .catch Ljava/lang/Throwable; {:try_start_d72 .. :try_end_d91} :catch_20fd

    :cond_d91
    :goto_d91
    if-nez v73, :cond_dbf

    :try_start_d93
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxCustom Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v127, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V
    :try_end_da3
    .catch Ljava/lang/Throwable; {:try_start_d93 .. :try_end_da3} :catch_210a

    :try_start_da3
    const-string/jumbo v6, "knoxcustom"

    move-object/from16 v0, v127

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "knoxcustom"

    const/4 v7, 0x0

    move-object/from16 v0, v127

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KnoxCustom Policy added."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dbd
    .catch Ljava/lang/Throwable; {:try_start_da3 .. :try_end_dbd} :catch_257e

    move-object/from16 v126, v127

    :cond_dbf
    :goto_dbf
    if-nez v73, :cond_dd5

    if-eqz v98, :cond_dd5

    :try_start_dc3
    new-instance v136, Lcom/android/server/enterprise/sso/GenericSSOService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_dca
    .catch Ljava/lang/Throwable; {:try_start_dc3 .. :try_end_dca} :catch_2118

    :try_start_dca
    const-string/jumbo v6, "genericssoservice"

    const/4 v7, 0x1

    move-object/from16 v0, v136

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_dd3
    .catch Ljava/lang/Throwable; {:try_start_dca .. :try_end_dd3} :catch_2579

    move-object/from16 v135, v136

    :cond_dd5
    :goto_dd5
    if-nez v73, :cond_deb

    if-eqz v98, :cond_deb

    :try_start_dd9
    new-instance v134, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V
    :try_end_de0
    .catch Ljava/lang/Throwable; {:try_start_dd9 .. :try_end_de0} :catch_2126

    :try_start_de0
    const-string/jumbo v6, "enterprise_shared_device_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v134

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_de9
    .catch Ljava/lang/Throwable; {:try_start_de0 .. :try_end_de9} :catch_2574

    move-object/from16 v133, v134

    :cond_deb
    :goto_deb
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v6

    if-eqz v6, :cond_e01

    :try_start_df1
    new-instance v97, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "enterprise_billing_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v97

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_e01
    .catch Ljava/lang/Throwable; {:try_start_df1 .. :try_end_e01} :catch_2134

    :cond_e01
    :goto_e01
    if-nez v79, :cond_e1f

    const-string/jumbo v6, "StartStatusBarManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_e09
    new-instance v200, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v200

    move-object/from16 v1, v218

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_e12
    .catch Ljava/lang/Throwable; {:try_start_e09 .. :try_end_e12} :catch_2142

    :try_start_e12
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v200

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e1a
    .catch Ljava/lang/Throwable; {:try_start_e12 .. :try_end_e1a} :catch_256f

    move-object/from16 v199, v200

    :goto_e1c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_e1f
    if-nez v73, :cond_e33

    const-string/jumbo v6, "StartClipboardService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_e33
    xor-int/lit8 v6, v73, 0x1

    if-eqz v6, :cond_e54

    :try_start_e37
    const-string/jumbo v6, "SemClipboardService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemClipboardService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "semclipboard"

    new-instance v7, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v7, v4}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_e54
    .catch Ljava/lang/Throwable; {:try_start_e37 .. :try_end_e54} :catch_214f

    :cond_e54
    :goto_e54
    if-nez v71, :cond_e6b

    const-string/jumbo v6, "StartNetworkManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_e5c
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v165

    const-string/jumbo v6, "network_management"

    move-object/from16 v0, v165

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e68
    .catch Ljava/lang/Throwable; {:try_start_e5c .. :try_end_e68} :catch_215c

    :goto_e68
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_e6b
    if-nez v73, :cond_eb7

    if-eqz v98, :cond_eb7

    :try_start_e6f
    const-string/jumbo v6, "Adding EnterprisePremiumVpnService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding EnterprisePremiumVpnService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v132, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    move-object/from16 v0, v132

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V
    :try_end_e85
    .catch Ljava/lang/Throwable; {:try_start_e6f .. :try_end_e85} :catch_2169

    :try_start_e85
    const-string/jumbo v6, "enterprise_premium_vpn_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v132

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "Adding KnoxVpnEngineService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding KnoxVpnEngineService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v144, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V
    :try_end_ea7
    .catch Ljava/lang/Throwable; {:try_start_e85 .. :try_end_ea7} :catch_2563

    :try_start_ea7
    const-string/jumbo v6, "knox_vpn_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v144

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_eb3
    .catch Ljava/lang/Throwable; {:try_start_ea7 .. :try_end_eb3} :catch_2568

    move-object/from16 v143, v144

    move-object/from16 v131, v132

    :cond_eb7
    :goto_eb7
    if-nez v73, :cond_edf

    if-eqz v98, :cond_edf

    :try_start_ebb
    const-string/jumbo v6, "Adding NetworkAnalyticsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Adding NetworkAnalyticsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v146, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    move-object/from16 v0, v146

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V
    :try_end_ed1
    .catch Ljava/lang/Throwable; {:try_start_ebb .. :try_end_ed1} :catch_2177

    :try_start_ed1
    const-string/jumbo v6, "knoxnap"

    const/4 v7, 0x1

    move-object/from16 v0, v146

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_edd
    .catch Ljava/lang/Throwable; {:try_start_ed1 .. :try_end_edd} :catch_255e

    move-object/from16 v145, v146

    :cond_edf
    :goto_edf
    if-nez v73, :cond_ef7

    xor-int/lit8 v6, v80, 0x1

    if-eqz v6, :cond_ef7

    const-string/jumbo v6, "StartTextServicesManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_ef7
    if-nez v71, :cond_1037

    const-string/jumbo v6, "StartNetworkScoreService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_eff
    new-instance v169, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v169

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_f06
    .catch Ljava/lang/Throwable; {:try_start_eff .. :try_end_f06} :catch_2185

    :try_start_f06
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v169

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f0e
    .catch Ljava/lang/Throwable; {:try_start_f06 .. :try_end_f0e} :catch_2559

    move-object/from16 v168, v169

    :goto_f10
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartNetworkStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_f19
    move-object/from16 v0, v165

    invoke-static {v4, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v170

    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v170

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f27
    .catch Ljava/lang/Throwable; {:try_start_f19 .. :try_end_f27} :catch_2192

    :goto_f27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartNetworkPolicyManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_f30
    new-instance v167, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v167

    move-object/from16 v1, v170

    move-object/from16 v2, v165

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_f3f
    .catch Ljava/lang/Throwable; {:try_start_f30 .. :try_end_f3f} :catch_219f

    :try_start_f3f
    const-string/jumbo v6, "netpolicy"

    move-object/from16 v0, v167

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f47
    .catch Ljava/lang/Throwable; {:try_start_f3f .. :try_end_f47} :catch_2554

    move-object/from16 v166, v167

    :goto_f49
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartWifi"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartWifiScanning"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v74, :cond_f87

    const-string/jumbo v6, "StartWifiRtt"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_f87
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.aware"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21ac

    const-string/jumbo v6, "StartWifiAware"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_fa7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.wifi.direct"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_fc7

    const-string/jumbo v6, "StartWifiP2P"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_fc7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_fe1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ff4

    :cond_fe1
    const-string/jumbo v6, "StartEthernet"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_ff4
    const-string/jumbo v6, "StartConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ffa
    new-instance v53, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v53

    move-object/from16 v1, v165

    move-object/from16 v2, v170

    move-object/from16 v3, v166

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1007
    .catch Ljava/lang/Throwable; {:try_start_ffa .. :try_end_1007} :catch_21b7

    :try_start_1007
    const-string/jumbo v6, "connectivity"

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v170

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v166

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_101d
    .catch Ljava/lang/Throwable; {:try_start_1007 .. :try_end_101d} :catch_254f

    move-object/from16 v52, v53

    :goto_101f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartNsdService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1028
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v193

    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v193

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1034
    .catch Ljava/lang/Throwable; {:try_start_1028 .. :try_end_1034} :catch_21c4

    :goto_1034
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1037
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_105e

    :try_start_1044
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v217, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v217

    invoke-direct {v0, v4}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_1054
    .catch Ljava/lang/Throwable; {:try_start_1044 .. :try_end_1054} :catch_21d1

    :try_start_1054
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v217

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_105c
    .catch Ljava/lang/Throwable; {:try_start_1054 .. :try_end_105c} :catch_254a

    move-object/from16 v216, v217

    :cond_105e
    :goto_105e
    if-nez v73, :cond_1074

    const-string/jumbo v6, "StartUpdateLockService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1066
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1071
    .catch Ljava/lang/Throwable; {:try_start_1066 .. :try_end_1071} :catch_21de

    :goto_1071
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1074
    if-eqz v201, :cond_108a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_108a

    const-string/jumbo v6, "WaitForAsecScan"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1084
    invoke-interface/range {v201 .. v201}, Landroid/os/storage/IStorageManager;->waitForAsecScan()V
    :try_end_1087
    .catch Landroid/os/RemoteException; {:try_start_1084 .. :try_end_1087} :catch_21eb

    :goto_1087
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_108a
    const-string/jumbo v6, "StartNotificationManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v173

    move-object/from16 v0, v166

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartDeviceMonitor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v69, :cond_10f9

    const-string/jumbo v6, "StartLocationManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_10cb
    new-instance v129, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10d2
    .catch Ljava/lang/Throwable; {:try_start_10cb .. :try_end_10d2} :catch_21ee

    :try_start_10d2
    const-string/jumbo v6, "location"

    move-object/from16 v0, v129

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10da
    .catch Ljava/lang/Throwable; {:try_start_10d2 .. :try_end_10da} :catch_2545

    move-object/from16 v128, v129

    :goto_10dc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartCountryDetectorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_10e5
    new-instance v62, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_10ec
    .catch Ljava/lang/Throwable; {:try_start_10e5 .. :try_end_10ec} :catch_21fb

    :try_start_10ec
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v62

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10f4
    .catch Ljava/lang/Throwable; {:try_start_10ec .. :try_end_10f4} :catch_2540

    move-object/from16 v61, v62

    :goto_10f6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_10f9
    const-string/jumbo v6, "StartSLocationService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_10ff
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "com.samsung.android.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v183

    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/16 v219, 0x0

    aput-object v8, v7, v219

    move-object/from16 v0, v183

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v112

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, v112

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v182, v0

    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v182

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_113b
    .catch Ljava/lang/Throwable; {:try_start_10ff .. :try_end_113b} :catch_2208

    :goto_113b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_1157

    xor-int/lit8 v6, v76, 0x1

    if-eqz v6, :cond_1157

    const-string/jumbo v6, "StartSearchManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_114a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1154
    .catch Ljava/lang/Throwable; {:try_start_114a .. :try_end_1154} :catch_2229

    :goto_1154
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1157
    if-nez v73, :cond_1179

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1179

    const-string/jumbo v6, "StartWallpaperManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1179
    const-string/jumbo v6, "StartAudioService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_11bf

    const-string/jumbo v6, "StartDockObserver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11bf

    const-string/jumbo v6, "StartThermalObserver"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_11bf
    const-string/jumbo v6, "StartWiredAccessoryManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_11c5
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v6, v4, v5}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_11cd
    .catch Ljava/lang/Throwable; {:try_start_11c5 .. :try_end_11cd} :catch_2236

    :goto_11cd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_1255

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11f2

    const-string/jumbo v6, "StartMidiManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_11f2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_120c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_121f

    :cond_120c
    const-string/jumbo v6, "StartUsbService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_121f
    if-nez v77, :cond_123b

    const-string/jumbo v6, "StartSerialService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1227
    new-instance v191, Lcom/android/server/SerialService;

    move-object/from16 v0, v191

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_122e
    .catch Ljava/lang/Throwable; {:try_start_1227 .. :try_end_122e} :catch_2243

    :try_start_122e
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v191

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1236
    .catch Ljava/lang/Throwable; {:try_start_122e .. :try_end_1236} :catch_253b

    move-object/from16 v190, v191

    :goto_1238
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_123b
    const-string/jumbo v6, "StartHardwarePropertiesManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1241
    new-instance v114, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v4}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1248
    .catch Ljava/lang/Throwable; {:try_start_1241 .. :try_end_1248} :catch_2251

    :try_start_1248
    const-string/jumbo v6, "hardware_properties"

    move-object/from16 v0, v114

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1250
    .catch Ljava/lang/Throwable; {:try_start_1248 .. :try_end_1250} :catch_2536

    move-object/from16 v113, v114

    :goto_1252
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1255
    const-string/jumbo v6, "StartTwilightService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {v4}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_127f

    const-string/jumbo v6, "StartNightDisplay"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_127f
    const-string/jumbo v6, "StartJobScheduler"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartSoundTrigger"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_1366

    if-nez v81, :cond_12b9

    const-string/jumbo v6, "StartTrustManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_12b9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12d9

    const-string/jumbo v6, "StartBackupManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_12d9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12f3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1306

    :cond_12f3
    const-string/jumbo v6, "StartAppWidgerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1306
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1326

    const-string/jumbo v6, "StartVoiceRecognitionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1326
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_1342

    const-string/jumbo v6, "StartGestureLauncher"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1342
    const-string/jumbo v6, "StartSensorNotification"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartContextHubSystemService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1366
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "false"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13b1

    :try_start_1394
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v95, 0x0

    const-string/jumbo v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v95

    if-nez v95, :cond_225f

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b1
    .catch Ljava/lang/Throwable; {:try_start_1394 .. :try_end_13b1} :catch_2290

    :cond_13b1
    :goto_13b1
    const-string/jumbo v6, "StartDiskStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_13b7
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13c2
    .catch Ljava/lang/Throwable; {:try_start_13b7 .. :try_end_13c2} :catch_229e

    :goto_13c2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v75, :cond_13db

    const-string/jumbo v6, "StartSamplingProfilerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_13cd
    const-string/jumbo v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13d8
    .catch Ljava/lang/Throwable; {:try_start_13cd .. :try_end_13d8} :catch_22ab

    :goto_13d8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_13db
    if-nez v71, :cond_13fb

    xor-int/lit8 v6, v72, 0x1

    if-eqz v6, :cond_13fb

    const-string/jumbo v6, "StartNetworkTimeUpdateService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_13e7
    new-instance v172, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v172

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_13ee
    .catch Ljava/lang/Throwable; {:try_start_13e7 .. :try_end_13ee} :catch_22b8

    :try_start_13ee
    const-string/jumbo v6, "network_time_update_service"

    move-object/from16 v0, v172

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13f6
    .catch Ljava/lang/Throwable; {:try_start_13ee .. :try_end_13f6} :catch_2531

    move-object/from16 v171, v172

    :goto_13f8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_13fb
    const-string/jumbo v6, "StartCommonTimeManagementService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1401
    new-instance v50, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_1408
    .catch Ljava/lang/Throwable; {:try_start_1401 .. :try_end_1408} :catch_22c5

    :try_start_1408
    const-string/jumbo v6, "commontime_management"

    move-object/from16 v0, v50

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1410
    .catch Ljava/lang/Throwable; {:try_start_1408 .. :try_end_1410} :catch_252c

    move-object/from16 v49, v50

    :goto_1412
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v71, :cond_1427

    const-string/jumbo v6, "CertBlacklister"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_141d
    new-instance v38, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_1424
    .catch Ljava/lang/Throwable; {:try_start_141d .. :try_end_1424} :catch_22d2

    :goto_1424
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1427
    if-nez v71, :cond_143f

    xor-int/lit8 v6, v73, 0x1

    if-eqz v6, :cond_143f

    const-string/jumbo v6, "StartEmergencyAffordanceService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_143f
    if-nez v73, :cond_1453

    const-string/jumbo v6, "StartDreamManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1453
    if-nez v73, :cond_1469

    const-string/jumbo v6, "AddGraphicsStatsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v4}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1469
    if-nez v73, :cond_1483

    sget-boolean v6, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v6, :cond_1483

    const-string/jumbo v6, "AddCoverageService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "coverage"

    new-instance v7, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v7}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1483
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14a3

    const-string/jumbo v6, "StartPrintManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_14a3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.companion_device_setup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14c3

    const-string/jumbo v6, "StartCompanionDeviceManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_14c3
    const-string/jumbo v6, "StartRestrictionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "CocktailBarService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartMediaSessionService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1519

    const-string/jumbo v6, "StartHdmiControlService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1519
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1533

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1545

    :cond_1533
    const-string/jumbo v6, "StartTvInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1545
    const-string/jumbo v6, "StartMediaResourceMonitor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.leanback"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1576

    const-string/jumbo v6, "StartTvRemoteService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1576
    if-nez v73, :cond_15c9

    const-string/jumbo v6, "StartMediaRouterService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_157e
    new-instance v157, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v157

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_1585
    .catch Ljava/lang/Throwable; {:try_start_157e .. :try_end_1585} :catch_22df

    :try_start_1585
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v157

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_158d
    .catch Ljava/lang/Throwable; {:try_start_1585 .. :try_end_158d} :catch_2527

    move-object/from16 v156, v157

    :goto_158f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.hardware.fingerprint"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15b1

    const-string/jumbo v6, "StartFingerprintSensor"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_15b1
    const-string/jumbo v6, "StartBackgroundDexOptService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_15b7
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_15ba
    .catch Ljava/lang/Throwable; {:try_start_15b7 .. :try_end_15ba} :catch_22ec

    :goto_15ba
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartPruneInstantAppsJobService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_15c3
    invoke-static {v4}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_15c6
    .catch Ljava/lang/Throwable; {:try_start_15c3 .. :try_end_15c6} :catch_22f9

    :goto_15c6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_15c9
    const-string/jumbo v6, "StartShortcutServiceLifecycle"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_15fa

    :try_start_15dd
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "SemExecute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SemExecutableService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "execute"

    new-instance v7, Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/execute/SemExecuteManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_15fa
    .catch Ljava/lang/Throwable; {:try_start_15dd .. :try_end_15fa} :catch_2306

    :cond_15fa
    :goto_15fa
    const-string/jumbo v6, "StartLauncherAppsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1633

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PermissionMonitorService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1622
    new-instance v177, Lcom/android/server/PermissionMonitor;

    move-object/from16 v0, v177

    invoke-direct {v0, v4}, Lcom/android/server/PermissionMonitor;-><init>(Landroid/content/Context;)V
    :try_end_1629
    .catch Ljava/lang/Throwable; {:try_start_1622 .. :try_end_1629} :catch_2313

    :try_start_1629
    const-string/jumbo v6, "permission.monitor"

    move-object/from16 v0, v177

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1631
    .catch Ljava/lang/Throwable; {:try_start_1629 .. :try_end_1631} :catch_2522

    move-object/from16 v176, v177

    :cond_1633
    :goto_1633
    if-nez v73, :cond_164b

    xor-int/lit8 v6, v70, 0x1

    if-eqz v6, :cond_164b

    const-string/jumbo v6, "StartMediaProjectionManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_164b
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_168a

    const-string/jumbo v6, "StartWearConnectivityService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_168a

    const-string/jumbo v6, "StartWearTimeService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_168a
    const-string/jumbo v6, "StartSpenGestureManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1690
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v218

    invoke-direct {v7, v4, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_169d
    .catch Ljava/lang/Throwable; {:try_start_1690 .. :try_end_169d} :catch_2320

    :goto_169d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v73, :cond_16b5

    const-string/jumbo v6, "StartAODService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.aod.AODManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_16b5
    :try_start_16b5
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16c9
    .catch Ljava/lang/Throwable; {:try_start_16b5 .. :try_end_16c9} :catch_232d

    :goto_16c9
    :try_start_16c9
    const-string/jumbo v6, "Samsung Accessory Manager getPackageManager();"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v178

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v178, :cond_170b

    const-string/jumbo v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v178

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_170b

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Samsung Accessory Manager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v181, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v181

    invoke-direct {v0, v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_16f9
    .catch Ljava/lang/Throwable; {:try_start_16c9 .. :try_end_16f9} :catch_2339

    :try_start_16f9
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v181

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v181

    invoke-virtual {v5, v0}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1709
    .catch Ljava/lang/Throwable; {:try_start_16f9 .. :try_end_1709} :catch_251d

    move-object/from16 v180, v181

    :cond_170b
    :goto_170b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_172b

    const-string/jumbo v6, "StartFriendsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.friends.FrsService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_172b
    xor-int/lit8 v6, v73, 0x1

    if-eqz v6, :cond_1741

    const-string/jumbo v6, "VSManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/samsung/android/server/virtualspace/VSManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1741
    invoke-virtual/range {v218 .. v218}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v184

    move/from16 v0, v184

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    if-eqz v184, :cond_2346

    const-string/jumbo v6, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_1764
    const-string/jumbo v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v185

    const-string/jumbo v6, "KTC"

    move-object/from16 v0, v185

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1781

    const-string/jumbo v6, "KOO"

    move-object/from16 v0, v185

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_179b

    :cond_1781
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-nez v6, :cond_179b

    :try_start_1787
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "KT UCA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "ktuca"

    new-instance v7, Landroid/ktuca/KtUcaService;

    invoke-direct {v7, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_179b
    .catch Ljava/lang/Throwable; {:try_start_1787 .. :try_end_179b} :catch_2358

    :cond_179b
    :goto_179b
    const-string/jumbo v6, "StartMmsService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v23

    check-cast v23, Lcom/android/server/MmsServiceBroker;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_17b0
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mobile Payment Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "mobile_payment"

    new-instance v7, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17c4
    .catch Ljava/lang/Throwable; {:try_start_17b0 .. :try_end_17c4} :catch_2366

    :goto_17c4
    const-string/jumbo v6, "StartSamsungHealthService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/shealth/SamsungHealthService;

    invoke-direct {v6, v4}, Lcom/android/server/shealth/SamsungHealthService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartRetailDemoModeService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "android.software.autofill"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1808

    const-string/jumbo v6, "StartAutoFillService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1808
    :try_start_1808
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameSDKService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v109, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/gamesdk.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v109

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.gamesdk.GameSDKService"

    move-object/from16 v0, v109

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v108

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/app/IActivityManager;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, v108

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v110

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, v110

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/os/IBinder;

    const-string/jumbo v6, "gamesdk"

    move-object/from16 v0, v111

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameSDKService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1865
    .catch Ljava/lang/Throwable; {:try_start_1808 .. :try_end_1865} :catch_2374

    :goto_1865
    :try_start_1865
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GameManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v105, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v105

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v105

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v104

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v104

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v106

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v106

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/os/IBinder;

    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v107

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_18bf
    .catch Ljava/lang/Throwable; {:try_start_1865 .. :try_end_18bf} :catch_2382

    :goto_18bf
    :try_start_18bf
    const-string/jumbo v6, "UCM Policy Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const-string/jumbo v6, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "knox_ucsm_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_18e6
    .catch Ljava/lang/Exception; {:try_start_18bf .. :try_end_18e6} :catch_2390

    :goto_18e6
    :try_start_18e6
    const-string/jumbo v6, "CredentialManagerService Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v6, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1902
    .catch Ljava/lang/Exception; {:try_start_18e6 .. :try_end_1902} :catch_239e

    :goto_1902
    :try_start_1902
    const-string/jumbo v6, "EnterpriseCertEnrollPolicy Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->SCEPPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const-string/jumbo v6, "knox_scep_policy"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->SCEPPolicy:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP is enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1928
    .catch Ljava/lang/Throwable; {:try_start_1902 .. :try_end_1928} :catch_23ac

    :goto_1928
    :try_start_1928
    const-string/jumbo v6, "cepproxyks Service"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1945
    .catch Ljava/lang/Throwable; {:try_start_1928 .. :try_end_1945} :catch_23b8

    :goto_1945
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v7, "com.samsung.feature.hdr_capable"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_196c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_SMARTFITTING"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_196c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DOLBY_AUDIO"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a4

    :cond_196c
    :try_start_196c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolutionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "CodecSolutionService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v48, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/codecsolution.jar"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.codecsolution.CodecSolutionManagerService"

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v47

    if-nez v47, :cond_23c6

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolution Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19a1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_19a4
    .catch Ljava/lang/Throwable; {:try_start_196c .. :try_end_19a4} :catch_2401

    :cond_19a4
    :goto_19a4
    const-string/jumbo v6, "MakeVibratorServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_19aa
    invoke-virtual/range {v212 .. v212}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_19ad
    .catch Ljava/lang/Throwable; {:try_start_19aa .. :try_end_19ad} :catch_240f

    :goto_19ad
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakeLockSettingsServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v130, :cond_19bb

    :try_start_19b8
    invoke-interface/range {v130 .. v130}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_19bb
    .catch Ljava/lang/Throwable; {:try_start_19b8 .. :try_end_19bb} :catch_241c

    :cond_19bb
    :goto_19bb
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartBootPhaseLockSettingsReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "StartBootPhaseSystemServicesReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakeWindowManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_19e8
    invoke-virtual/range {v218 .. v218}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_19eb
    .catch Ljava/lang/Throwable; {:try_start_19e8 .. :try_end_19eb} :catch_2429

    :goto_19eb
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v6, :cond_19fb

    :try_start_19f4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_19fb
    .catch Ljava/lang/Exception; {:try_start_19f4 .. :try_end_19fb} :catch_2436

    :cond_19fb
    :goto_19fb
    if-eqz v184, :cond_1a04

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_1a04
    const/4 v6, 0x0

    move-object/from16 v0, v218

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v51

    new-instance v158, Landroid/util/DisplayMetrics;

    invoke-direct/range {v158 .. v158}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v214

    check-cast v214, Landroid/view/WindowManager;

    invoke-interface/range {v214 .. v214}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v158

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v51

    move-object/from16 v1, v158

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v203

    invoke-virtual/range {v203 .. v203}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    if-eqz v6, :cond_1a3a

    invoke-virtual/range {v203 .. v203}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_1a3a
    const-string/jumbo v6, "MakePowerManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1a40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_1a4f
    .catch Ljava/lang/Throwable; {:try_start_1a40 .. :try_end_1a4f} :catch_2444

    :goto_1a4f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakePackageManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1a58
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_1a5f
    .catch Ljava/lang/Throwable; {:try_start_1a58 .. :try_end_1a5f} :catch_2451

    :goto_1a5f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v6, "MakeDisplayManagerServiceReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1a68
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v184

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_1a75
    .catch Ljava/lang/Throwable; {:try_start_1a68 .. :try_end_1a75} :catch_245e

    :goto_1a75
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1ad7

    :try_start_1a87
    const-string/jumbo v6, "SmartBondingServiceReady"

    const-wide/32 v220, 0x80000

    move-wide/from16 v0, v220

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v42

    const-string/jumbo v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v46

    const-string/jumbo v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v58

    const/4 v6, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    move-object/from16 v0, v58

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1ad7
    .catch Ljava/lang/Throwable; {:try_start_1a87 .. :try_end_1ad7} :catch_246b

    :cond_1ad7
    :goto_1ad7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v101

    if-eqz v101, :cond_1b3f

    const-string/jumbo v6, "hongbao"

    move-object/from16 v0, v101

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b3f

    :try_start_1aef
    const-string/jumbo v6, "HongbaoModeServiceReady"

    const-wide/32 v220, 0x80000

    move-wide/from16 v0, v220

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v42

    const-string/jumbo v6, "com.samsung.android.hongbaomode.HongbaoModeService"

    const/4 v7, 0x1

    move-object/from16 v0, v42

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v43

    const-string/jumbo v6, "HONGBAO_MODE_SERVICE"

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v102

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v55

    const/4 v6, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    move-object/from16 v0, v55

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1b3f
    .catch Ljava/lang/Throwable; {:try_start_1aef .. :try_end_1b3f} :catch_2478

    :cond_1b3f
    :goto_1b3f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b91

    :try_start_1b4c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v162, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v162

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v162

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v161

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v161

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v163

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v163

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Landroid/os/IBinder;

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b91
    .catch Ljava/lang/Throwable; {:try_start_1b4c .. :try_end_1b91} :catch_2485

    :cond_1b91
    :goto_1b91
    :try_start_1b91
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "bigdata mdcService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v151, Ldalvik/system/PathClassLoader;

    const-string/jumbo v6, "/system/framework/mdcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v151

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v6, "com.samsung.android.mdc.MdcService"

    move-object/from16 v0, v151

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v150

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v150

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v152

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v152

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/os/IBinder;

    const-string/jumbo v6, "mdc_service"

    move-object/from16 v0, v153

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "bigdata mdc loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bde
    .catch Ljava/lang/Throwable; {:try_start_1b91 .. :try_end_1bde} :catch_2492

    :goto_1bde
    :try_start_1bde
    invoke-interface/range {v189 .. v189}, Landroid/os/ISdpManagerService;->systemReady()V
    :try_end_1be1
    .catch Ljava/lang/Throwable; {:try_start_1bde .. :try_end_1be1} :catch_249f

    :goto_1be1
    :try_start_1be1
    invoke-virtual/range {v187 .. v187}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_1be4
    .catch Ljava/lang/Throwable; {:try_start_1be1 .. :try_end_1be4} :catch_24ac

    :goto_1be4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v184

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    :try_start_1bed
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_1bf0
    .catch Ljava/lang/Throwable; {:try_start_1bed .. :try_end_1bf0} :catch_24b9

    :goto_1bf0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v211

    const-string/jumbo v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v211

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c29

    :try_start_1c06
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_1c09
    .catch Ljava/lang/Throwable; {:try_start_1c06 .. :try_end_1c09} :catch_24c6

    :goto_1c09
    :try_start_1c09
    invoke-virtual/range {v139 .. v139}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_1c0c
    .catch Ljava/lang/Throwable; {:try_start_1c09 .. :try_end_1c0c} :catch_24d3

    :goto_1c0c
    if-eqz v98, :cond_1c29

    :try_start_1c0e
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy is not null"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "mum_container_policy"

    const/4 v7, 0x0

    move-object/from16 v0, v139

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v6, "mum_container_rcp_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v141

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1c29
    .catch Ljava/lang/Throwable; {:try_start_1c0e .. :try_end_1c29} :catch_24e0

    :cond_1c29
    :goto_1c29
    if-eqz v98, :cond_1c61

    :try_start_1c2b
    new-instance v195, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    move-object/from16 v0, v195

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1c32
    .catch Ljava/lang/Throwable; {:try_start_1c2b .. :try_end_1c32} :catch_24ed

    :try_start_1c32
    const-string/jumbo v6, "smartcard_browser_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v195

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v6, "smartcard_browser_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v195

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    new-instance v197, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    move-object/from16 v0, v197

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V
    :try_end_1c4b
    .catch Ljava/lang/Throwable; {:try_start_1c32 .. :try_end_1c4b} :catch_2513

    :try_start_1c4b
    const-string/jumbo v6, "smartcard_email_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v197

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v6, "smartcard_email_policy"

    const/4 v7, 0x1

    move-object/from16 v0, v197

    invoke-static {v6, v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_1c5d
    .catch Ljava/lang/Throwable; {:try_start_1c4b .. :try_end_1c5d} :catch_2517

    move-object/from16 v194, v195

    move-object/from16 v196, v197

    :cond_1c61
    :goto_1c61
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v6

    if-eqz v6, :cond_2508

    const-string/jumbo v6, "MdfService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1c6d
    const-string/jumbo v6, "MdfService"

    new-instance v7, Lcom/android/server/MdfService;

    invoke-direct {v7, v4}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c78
    .catch Ljava/lang/Throwable; {:try_start_1c6d .. :try_end_1c78} :catch_24fa

    :goto_1c78
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_1c7b
    move-object/from16 v11, v165

    move-object/from16 v13, v170

    move-object/from16 v12, v166

    move-object/from16 v14, v52

    move-object/from16 v10, v168

    move-object/from16 v15, v128

    move-object/from16 v16, v182

    move-object/from16 v17, v61

    move-object/from16 v18, v171

    move-object/from16 v19, v49

    move-object/from16 v20, v5

    move-object/from16 v21, v204

    move-object/from16 v22, v156

    move-object/from16 v159, v23

    move-object/from16 v9, v218

    move-object/from16 v24, v180

    move-object/from16 v175, v176

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v219, v0

    new-instance v6, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-direct/range {v6 .. v24}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/BootTimingsTraceLog;

    move-object/from16 v0, v219

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/BootTimingsTraceLog;)V

    return-void

    :catch_1cb3
    move-exception v94

    :try_start_1cb4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1cbf
    .catch Ljava/lang/RuntimeException; {:try_start_1cb4 .. :try_end_1cbf} :catch_1cc1

    goto/16 :goto_19e

    :catch_1cc1
    move-exception v93

    move-object/from16 v204, v205

    move-object/from16 v5, v121

    :goto_1cc6
    const-string/jumbo v6, "System"

    const-string/jumbo v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "System"

    const-string/jumbo v7, "************ Failure starting core service"

    move-object/from16 v0, v93

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a03

    :catch_1cdc
    move-exception v94

    :goto_1cdd
    :try_start_1cdd
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KnoxMUMContainerPolicy Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1ba

    :catch_1cea
    move-exception v94

    :goto_1ceb
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KnoxMUMRCPPolicyService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d4

    :catch_1cf8
    move-exception v99

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure registering SPDControlPolicy service with EDM service"

    move-object/from16 v0, v99

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1ec

    :catch_1d06
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_209

    :catch_1d14
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_226

    :catch_1d20
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_240

    :catch_1d2f
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add IfaaService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_29b

    :catch_1d3e
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add TigerSskdsService."

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_349

    :catch_1d4c
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to get device status, error "

    move-object/from16 v0, v91

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_349

    :catch_1d5a
    move-exception v92

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Tiger \'isDeviceRegistered()\' method not found."

    move-object/from16 v0, v92

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_349

    :catch_1d68
    move-exception v90

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Class TigerSskdsService.SskdsDevice not found!"

    move-object/from16 v0, v90

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_349

    :catch_1d76
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_376

    :catch_1d85
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SamsungKeyProvisioningManagerService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_393

    :catch_1d94
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SemAuthnrService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3ca

    :catch_1da3
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SemService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_40b

    :catch_1db2
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_428

    :catch_1dbe
    move-exception v94

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add VaultKeeper Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_458

    :cond_1dcd
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "VaultKeeper Service Disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_458

    :catch_1dd8
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add Remote Mobile Manager."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_470

    :catch_1de4
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dee
    .catch Ljava/lang/RuntimeException; {:try_start_1cdd .. :try_end_1dee} :catch_1cc1

    goto/16 :goto_48d

    :catch_1df0
    move-exception v94

    :try_start_1df1
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1dfc
    .catch Ljava/lang/RuntimeException; {:try_start_1df1 .. :try_end_1dfc} :catch_25b0

    const/16 v64, 0x0

    goto/16 :goto_4db

    :catch_1e00
    move-exception v94

    :try_start_1e01
    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Registration of MlDap service failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_581

    :catch_1e24
    move-exception v93

    move-object/from16 v204, v205

    move-object/from16 v5, v121

    move-object/from16 v212, v213

    goto/16 :goto_1cc6

    :catch_1e2d
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5e1

    :catch_1e3c
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "dmf.jar error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e49
    .catch Ljava/lang/RuntimeException; {:try_start_1e01 .. :try_end_1e49} :catch_1e24

    goto/16 :goto_648

    :catch_1e4b
    move-exception v91

    :try_start_1e4c
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SemContextService"

    move-object/from16 v0, v91

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e57
    .catch Ljava/lang/RuntimeException; {:try_start_1e4c .. :try_end_1e57} :catch_1e59

    goto/16 :goto_6fb

    :catch_1e59
    move-exception v93

    move-object/from16 v204, v205

    move-object/from16 v212, v213

    goto/16 :goto_1cc6

    :catch_1e60
    move-exception v91

    :try_start_1e61
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e6d
    .catch Ljava/lang/Exception; {:try_start_1e61 .. :try_end_1e6d} :catch_1e6f
    .catch Ljava/lang/RuntimeException; {:try_start_1e61 .. :try_end_1e6d} :catch_1e59

    goto/16 :goto_74a

    :catch_1e6f
    move-exception v91

    move-object/from16 v115, v116

    :goto_1e72
    :try_start_1e72
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add ICCC Service "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_74c

    :catch_1e80
    move-exception v94

    const-string/jumbo v6, "starting TimaService except PKM service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_790

    :catch_1e8d
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7cd

    :catch_1e9c
    move-exception v94

    const-string/jumbo v6, "starting pkmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1ea7
    .catch Ljava/lang/RuntimeException; {:try_start_1e72 .. :try_end_1ea7} :catch_1e59

    goto/16 :goto_7eb

    :catch_1ea9
    move-exception v91

    :try_start_1eaa
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1eb6
    .catch Ljava/lang/Exception; {:try_start_1eaa .. :try_end_1eb6} :catch_1eb8
    .catch Ljava/lang/RuntimeException; {:try_start_1eaa .. :try_end_1eb6} :catch_1e59

    goto/16 :goto_84f

    :catch_1eb8
    move-exception v91

    :try_start_1eb9
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ec5
    .catch Ljava/lang/RuntimeException; {:try_start_1eb9 .. :try_end_1ec5} :catch_1e59

    goto/16 :goto_86d

    :cond_1ec7
    :try_start_1ec7
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "PKM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/PKMService;

    invoke-direct {v6, v4}, Lcom/android/server/PKMService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    const-string/jumbo v6, "pkm"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1ee3
    .catch Ljava/lang/Throwable; {:try_start_1ec7 .. :try_end_1ee3} :catch_1ee5
    .catch Ljava/lang/RuntimeException; {:try_start_1ec7 .. :try_end_1ee3} :catch_1e59

    goto/16 :goto_86d

    :catch_1ee5
    move-exception v94

    :try_start_1ee6
    const-string/jumbo v6, "starting pkmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_86d

    :catch_1ef2
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_892

    :catch_1f00
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8a6

    :cond_1f0e
    const/4 v6, 0x0

    goto/16 :goto_8c3

    :cond_1f11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f23

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_97a

    :cond_1f23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f3b

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_97a

    :cond_1f3b
    if-eqz v66, :cond_1f48

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_97a

    :cond_1f48
    const-string/jumbo v6, "StartBluetoothService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_97a

    :catch_1f5c
    move-exception v94

    :goto_1f5d
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9e2

    :catch_1f6a
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to add OcfKeyService. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f8c
    .catch Ljava/lang/RuntimeException; {:try_start_1ee6 .. :try_end_1f8c} :catch_1e59

    goto/16 :goto_9fc

    :catch_1f8e
    move-exception v94

    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a45

    :catch_1f9b
    move-exception v94

    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a51

    :catch_1fa8
    move-exception v94

    const-string/jumbo v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a88

    :cond_1fb5
    const/4 v6, 0x1

    :try_start_1fb6
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v154

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v155

    check-cast v155, Landroid/os/IBinder;

    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v155

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1fd9
    .catch Ljava/lang/Throwable; {:try_start_1fb6 .. :try_end_1fd9} :catch_1fdb

    goto/16 :goto_aae

    :catch_1fdb
    move-exception v94

    const-string/jumbo v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aae

    :cond_1fe8
    const/4 v6, 0x1

    :try_start_1fe9
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v87

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/os/IBinder;

    const-string/jumbo v6, "DisplaySolution"

    move-object/from16 v0, v88

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_200c
    .catch Ljava/lang/Throwable; {:try_start_1fe9 .. :try_end_200c} :catch_200e

    goto/16 :goto_ad4

    :catch_200e
    move-exception v94

    const-string/jumbo v6, "Failed To Start SemDisplaySolution Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ad4

    :cond_201b
    const/4 v6, 0x1

    :try_start_201c
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/IBinder;

    const-string/jumbo v6, "AAS"

    move-object/from16 v0, v34

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_203f
    .catch Ljava/lang/Throwable; {:try_start_201c .. :try_end_203f} :catch_2041

    goto/16 :goto_afa

    :catch_2041
    move-exception v94

    const-string/jumbo v6, "Failed To Start SemAllAroundSensing Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_afa

    :cond_204e
    if-nez v73, :cond_b2a

    invoke-static {v4}, Lcom/samsung/android/cover/CoverFeatures;->hasCoverSystemFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b2a

    const-string/jumbo v6, "StartCoverService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v7, "com.android.server.cover.CoverManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_b2a

    :catch_206b
    move-exception v94

    const-string/jumbo v6, "starting StorageManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b60

    :catch_2078
    move-exception v94

    const-string/jumbo v6, "starting StorageStatsService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b73

    :catch_2085
    move-exception v94

    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b93

    :catch_2092
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v91

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c08

    :catch_20a0
    move-exception v94

    const-string/jumbo v6, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c2d

    :catch_20ad
    move-exception v94

    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c54

    :catch_20ba
    move-exception v94

    :goto_20bb
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cdb

    :catch_20c8
    move-exception v94

    const-string/jumbo v6, "starting SdpManagerService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d02

    :catch_20d5
    move-exception v94

    :goto_20d6
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d25

    :catch_20e3
    move-exception v94

    const-string/jumbo v6, "unable to start DualAppManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d3a

    :catch_20f0
    move-exception v94

    :goto_20f1
    const-string/jumbo v6, "unable to start DLPManagerPolicyService or DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d70

    :catch_20fd
    move-exception v94

    const-string/jumbo v6, "starting EnterpriseDeviceManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d91

    :catch_210a
    move-exception v94

    :goto_210b
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Fail KnoxCustom Policy."

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_dbf

    :catch_2118
    move-exception v94

    :goto_2119
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX SSO services"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_dd5

    :catch_2126
    move-exception v94

    :goto_2127
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding KNOX Shared Device service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_deb

    :catch_2134
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure registering EnterpriseBillingPolicy service with EDM service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e01

    :catch_2142
    move-exception v94

    :goto_2143
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e1c

    :catch_214f
    move-exception v94

    const-string/jumbo v6, "starting SemClipboardService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e54

    :catch_215c
    move-exception v94

    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e68

    :catch_2169
    move-exception v94

    :goto_216a
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting EnterprisePremiumVpnService and KnoxVpnEngineService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_eb7

    :catch_2177
    move-exception v94

    :goto_2178
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting EnterprisePremiumVpnService and NetworkAnalyticsService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_edf

    :catch_2185
    move-exception v94

    :goto_2186
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f10

    :catch_2192
    move-exception v94

    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f27

    :catch_219f
    move-exception v94

    :goto_21a0
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f49

    :cond_21ac
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "No Wi-Fi Aware Service (Aware support Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa7

    :catch_21b7
    move-exception v94

    :goto_21b8
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_101f

    :catch_21c4
    move-exception v94

    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1034

    :catch_21d1
    move-exception v94

    :goto_21d2
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_105e

    :catch_21de
    move-exception v94

    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1071

    :catch_21eb
    move-exception v120

    goto/16 :goto_1087

    :catch_21ee
    move-exception v94

    :goto_21ef
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10dc

    :catch_21fb
    move-exception v94

    :goto_21fc
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10f6

    :catch_2208
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v94 .. v94}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_113b

    :catch_2229
    move-exception v94

    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1154

    :catch_2236
    move-exception v94

    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11cd

    :catch_2243
    move-exception v94

    :goto_2244
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting SerialService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1238

    :catch_2251
    move-exception v94

    :goto_2252
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1252

    :cond_225f
    :try_start_225f
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v36, v0

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v36, v7

    move-object/from16 v0, v95

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    const-string/jumbo v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_228e
    .catch Ljava/lang/Throwable; {:try_start_225f .. :try_end_228e} :catch_2290

    goto/16 :goto_13b1

    :catch_2290
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting eds Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13b1

    :catch_229e
    move-exception v94

    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13c2

    :catch_22ab
    move-exception v94

    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13d8

    :catch_22b8
    move-exception v94

    :goto_22b9
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13f8

    :catch_22c5
    move-exception v94

    :goto_22c6
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1412

    :catch_22d2
    move-exception v94

    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1424

    :catch_22df
    move-exception v94

    :goto_22e0
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_158f

    :catch_22ec
    move-exception v94

    const-string/jumbo v6, "starting StartBackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15ba

    :catch_22f9
    move-exception v94

    const-string/jumbo v6, "StartPruneInstantAppsJobService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15c6

    :catch_2306
    move-exception v94

    const-string/jumbo v6, "starting SemExecute Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15fa

    :catch_2313
    move-exception v94

    :goto_2314
    const-string/jumbo v6, "launch permission monitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1633

    :catch_2320
    move-exception v94

    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_169d

    :catch_232d
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16c9

    :catch_2339
    move-exception v94

    :goto_233a
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_170b

    :cond_2346
    const-string/jumbo v6, "StartJitCompilation"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_1764

    :catch_2358
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting KT UCA Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_179b

    :catch_2366
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting Payment Manager Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17c4

    :catch_2374
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add GameSDKService."

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1865

    :catch_2382
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add GameManagerService."

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18bf

    :catch_2390
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding UniversalCredentialManagerService"

    move-object/from16 v0, v91

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18e6

    :catch_239e
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure adding CredentialManagerService"

    move-object/from16 v0, v91

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1902

    :catch_23ac
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CEP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1928

    :catch_23b8
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1945

    :cond_23c6
    const/4 v6, 0x2

    :try_start_23c7
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/app/IActivityManager;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v202

    check-cast v202, Landroid/os/IBinder;

    const-string/jumbo v6, "CodecSolution"

    move-object/from16 v0, v202

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "CodecSolution Service loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23ff
    .catch Ljava/lang/Throwable; {:try_start_23c7 .. :try_end_23ff} :catch_2401

    goto/16 :goto_19a1

    :catch_2401
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed To Start CodecSolution Service "

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19a4

    :catch_240f
    move-exception v94

    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19ad

    :catch_241c
    move-exception v94

    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19bb

    :catch_2429
    move-exception v94

    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19eb

    :catch_2436
    move-exception v91

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to call UCMService systemReady"

    move-object/from16 v0, v91

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19fb

    :catch_2444
    move-exception v94

    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a4f

    :catch_2451
    move-exception v94

    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a5f

    :catch_245e
    move-exception v94

    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a75

    :catch_246b
    move-exception v94

    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1ad7

    :catch_2478
    move-exception v94

    const-string/jumbo v6, "starting HongbaoModeService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b3f

    :catch_2485
    move-exception v94

    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b91

    :catch_2492
    move-exception v94

    const-string/jumbo v6, "failed to start mdcService"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1bde

    :catch_249f
    move-exception v94

    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1be1

    :catch_24ac
    move-exception v94

    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1be4

    :catch_24b9
    move-exception v94

    const-string/jumbo v6, "making DualAppManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1bf0

    :catch_24c6
    move-exception v94

    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c09

    :catch_24d3
    move-exception v94

    const-string/jumbo v6, "making KnoxMUMContainerPolicy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c0c

    :catch_24e0
    move-exception v94

    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c29

    :catch_24ed
    move-exception v94

    :goto_24ee
    const-string/jumbo v6, "making enterprise manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c61

    :catch_24fa
    move-exception v94

    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Failed to add MdfService"

    move-object/from16 v0, v94

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c78

    :cond_2508
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "MdfService is ready"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c7b

    :catch_2513
    move-exception v94

    move-object/from16 v194, v195

    goto :goto_24ee

    :catch_2517
    move-exception v94

    move-object/from16 v194, v195

    move-object/from16 v196, v197

    goto :goto_24ee

    :catch_251d
    move-exception v94

    move-object/from16 v180, v181

    goto/16 :goto_233a

    :catch_2522
    move-exception v94

    move-object/from16 v176, v177

    goto/16 :goto_2314

    :catch_2527
    move-exception v94

    move-object/from16 v156, v157

    goto/16 :goto_22e0

    :catch_252c
    move-exception v94

    move-object/from16 v49, v50

    goto/16 :goto_22c6

    :catch_2531
    move-exception v94

    move-object/from16 v171, v172

    goto/16 :goto_22b9

    :catch_2536
    move-exception v94

    move-object/from16 v113, v114

    goto/16 :goto_2252

    :catch_253b
    move-exception v94

    move-object/from16 v190, v191

    goto/16 :goto_2244

    :catch_2540
    move-exception v94

    move-object/from16 v61, v62

    goto/16 :goto_21fc

    :catch_2545
    move-exception v94

    move-object/from16 v128, v129

    goto/16 :goto_21ef

    :catch_254a
    move-exception v94

    move-object/from16 v216, v217

    goto/16 :goto_21d2

    :catch_254f
    move-exception v94

    move-object/from16 v52, v53

    goto/16 :goto_21b8

    :catch_2554
    move-exception v94

    move-object/from16 v166, v167

    goto/16 :goto_21a0

    :catch_2559
    move-exception v94

    move-object/from16 v168, v169

    goto/16 :goto_2186

    :catch_255e
    move-exception v94

    move-object/from16 v145, v146

    goto/16 :goto_2178

    :catch_2563
    move-exception v94

    move-object/from16 v131, v132

    goto/16 :goto_216a

    :catch_2568
    move-exception v94

    move-object/from16 v143, v144

    move-object/from16 v131, v132

    goto/16 :goto_216a

    :catch_256f
    move-exception v94

    move-object/from16 v199, v200

    goto/16 :goto_2143

    :catch_2574
    move-exception v94

    move-object/from16 v133, v134

    goto/16 :goto_2127

    :catch_2579
    move-exception v94

    move-object/from16 v135, v136

    goto/16 :goto_2119

    :catch_257e
    move-exception v94

    move-object/from16 v126, v127

    goto/16 :goto_210b

    :catch_2583
    move-exception v94

    move-object/from16 v83, v84

    goto/16 :goto_20f1

    :catch_2588
    move-exception v94

    move-object/from16 v85, v86

    move-object/from16 v83, v84

    goto/16 :goto_20f1

    :catch_258f
    move-exception v94

    move-object/from16 v187, v188

    goto/16 :goto_20d6

    :catch_2594
    move-exception v94

    move-object/from16 v137, v138

    goto/16 :goto_20bb

    :catch_2599
    move-exception v93

    move-object/from16 v5, v121

    goto/16 :goto_1cc6

    :catch_259e
    move-exception v93

    move-object/from16 v139, v140

    move-object/from16 v204, v205

    move-object/from16 v5, v121

    goto/16 :goto_1cc6

    :catch_25a7
    move-exception v93

    move-object/from16 v141, v142

    move-object/from16 v204, v205

    move-object/from16 v5, v121

    goto/16 :goto_1cc6

    :catch_25b0
    move-exception v93

    move-object/from16 v64, v65

    move-object/from16 v204, v205

    move-object/from16 v5, v121

    goto/16 :goto_1cc6

    :catch_25b9
    move-exception v93

    move-object/from16 v59, v60

    move-object/from16 v204, v205

    move-object/from16 v5, v121

    move-object/from16 v212, v213

    goto/16 :goto_1cc6

    :catch_25c4
    move-exception v93

    move-object/from16 v148, v149

    move-object/from16 v204, v205

    move-object/from16 v212, v213

    goto/16 :goto_1cc6

    :catch_25cd
    move-exception v94

    move-object/from16 v148, v149

    goto/16 :goto_1f5d

    :catch_25d2
    move-exception v91

    goto/16 :goto_1e72

    :catch_25d5
    move-exception v94

    move-object/from16 v141, v142

    goto/16 :goto_1ceb

    :catch_25da
    move-exception v94

    move-object/from16 v139, v140

    goto/16 :goto_1cdd
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method

.method private startThemeService()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.themecenter"

    const-string/jumbo v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/BootTimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/BootTimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method private static traceEnd()V
    .registers 1

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/BootTimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/BootTimingsTraceLog;->traceEnd()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_SystemServer_153450(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 31

    const-string/jumbo v9, "SystemServer"

    const-string/jumbo v10, "Making services ready"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "StartActivityManagerReadyPhase"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x226

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "StartObservingNativeCrashes"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1f
    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_1bd

    :goto_24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v1, "WebViewFactoryPreparation"

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v9, :cond_3f

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v9

    new-instance v10, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$5;

    invoke-direct {v10, p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$5;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v11, "WebViewFactoryPreparation"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v8

    :cond_3f
    const-string/jumbo v9, "StartSystemUI"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_45
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_1c6

    :goto_48
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_4b
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startThemeService()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_1cf

    :goto_4e
    const-string/jumbo v9, "MakeNetworkScoreReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p3, :cond_59

    :try_start_56
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_1d8

    :cond_59
    :goto_59
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeNetworkManagementServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_62
    const-string/jumbo v9, "SystemServer"

    const-string/jumbo v10, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_70

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/NetworkManagementService;->systemReady()V

    :cond_70
    const-string/jumbo v9, "SystemServer"

    const-string/jumbo v10, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_79} :catch_1e1

    :goto_79
    const/4 v5, 0x0

    if-eqz p5, :cond_80

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    :cond_80
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeNetworkStatsServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p6, :cond_8e

    :try_start_8b
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8e} :catch_1ea

    :cond_8e
    :goto_8e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeConnectivityServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p7, :cond_9c

    :try_start_99
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_1f3

    :cond_9c
    :goto_9c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeNetworkPolicyServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p5, :cond_ac

    :try_start_a7
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_ac} :catch_1fc

    :cond_ac
    :goto_ac
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz p4, :cond_b4

    :try_start_b1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/NetworkManagementService;->enableStrict()V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_205

    :cond_b4
    :goto_b4
    const-string/jumbo v9, "StartWatchdog"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/Watchdog;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v9, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    const-string/jumbo v9, "PhaseThirdPartyAppsCanStart"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v8, :cond_d7

    const-string/jumbo v9, "WebViewFactoryPreparation"

    invoke-static {v8, v9}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_d7
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeLocationServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p8, :cond_ec

    :try_start_e9
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ec} :catch_20e

    :cond_ec
    :goto_ec
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "SLocationServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p9, :cond_11f

    :try_start_f7
    const-string/jumbo v9, "com.samsung.android.location.SLocationLoader"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v9, "systemReady"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-class v11, Landroid/os/IBinder;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_11f} :catch_217

    :cond_11f
    :goto_11f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeCountryDetectionServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p10, :cond_12d

    :try_start_12a
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_12a .. :try_end_12d} :catch_238

    :cond_12d
    :goto_12d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeNetworkTimeUpdateReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p11, :cond_13b

    :try_start_138
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_13b} :catch_241

    :cond_13b
    :goto_13b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeCommonTimeManagementServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p12, :cond_149

    :try_start_146
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_149} :catch_24a

    :cond_149
    :goto_149
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeInputManagerServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p13, :cond_157

    :try_start_154
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_157
    .catch Ljava/lang/Throwable; {:try_start_154 .. :try_end_157} :catch_253

    :cond_157
    :goto_157
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeTelephonyRegistryReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p14, :cond_165

    :try_start_162
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_165} :catch_25c

    :cond_165
    :goto_165
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeMediaRouterServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p15, :cond_173

    :try_start_170
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_170 .. :try_end_173} :catch_265

    :cond_173
    :goto_173
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_176
    invoke-static {p1}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_26e

    :goto_179
    const-string/jumbo v9, "MakeMmsServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p16, :cond_184

    :try_start_181
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_184} :catch_277

    :cond_184
    :goto_184
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "MakeNetworkScoreServiceReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p3, :cond_192

    :try_start_18f
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_192
    .catch Ljava/lang/Throwable; {:try_start_18f .. :try_end_192} :catch_280

    :cond_192
    :goto_192
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "IncidentDaemonReady"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_19b
    const-string/jumbo v9, "incident"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v4

    if-eqz v4, :cond_1ab

    invoke-interface {v4}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_1ab
    .catch Ljava/lang/Throwable; {:try_start_19b .. :try_end_1ab} :catch_289

    :cond_1ab
    :goto_1ab
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v9, "SAccessoryManager"

    invoke-static {v9}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p17, :cond_1b9

    :try_start_1b6
    invoke-virtual/range {p17 .. p17}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1b9} :catch_292

    :cond_1b9
    :goto_1b9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void

    :catch_1bd
    move-exception v3

    const-string/jumbo v9, "observing native crashes"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    :catch_1c6
    move-exception v3

    const-string/jumbo v9, "starting System UI"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    :catch_1cf
    move-exception v3

    const-string/jumbo v9, "starting Theme Service"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    :catch_1d8
    move-exception v3

    const-string/jumbo v9, "making Network Score Service ready"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    :catch_1e1
    move-exception v3

    const-string/jumbo v9, "making Network Managment Service ready"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_79

    :catch_1ea
    move-exception v3

    const-string/jumbo v9, "making Network Stats Service ready"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e

    :catch_1f3
    move-exception v3

    const-string/jumbo v9, "making Connectivity Service ready"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9c

    :catch_1fc
    move-exception v3

    const-string/jumbo v9, "making Network Policy Service ready"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ac

    :catch_205
    move-exception v3

    const-string/jumbo v9, "enableStrict"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b4

    :catch_20e
    move-exception v3

    const-string/jumbo v9, "Notifying Location Service running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ec

    :catch_217
    move-exception v3

    const-string/jumbo v9, "SystemServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "making SLocation Service ready :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11f

    :catch_238
    move-exception v3

    const-string/jumbo v9, "Notifying CountryDetectorService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12d

    :catch_241
    move-exception v3

    const-string/jumbo v9, "Notifying NetworkTimeService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13b

    :catch_24a
    move-exception v3

    const-string/jumbo v9, "Notifying CommonTimeManagementService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_149

    :catch_253
    move-exception v3

    const-string/jumbo v9, "Notifying InputManagerService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_157

    :catch_25c
    move-exception v3

    const-string/jumbo v9, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_165

    :catch_265
    move-exception v3

    const-string/jumbo v9, "Notifying MediaRouterService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_173

    :catch_26e
    move-exception v2

    const-string/jumbo v9, "Notifying EmergencyModeService running"

    invoke-direct {p0, v9, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_179

    :catch_277
    move-exception v3

    const-string/jumbo v9, "Notifying MmsService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_184

    :catch_280
    move-exception v3

    const-string/jumbo v9, "Notifying NetworkScoreService running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_192

    :catch_289
    move-exception v3

    const-string/jumbo v9, "Notifying incident daemon running"

    invoke-direct {p0, v9, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1ab

    :catch_292
    move-exception v2

    const-string/jumbo v9, "Notifying SAccessoryManager running"

    invoke-direct {p0, v9, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b9
.end method

.method synthetic lambda$-com_android_server_SystemServer_154355()V
    .registers 5

    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "WebViewFactoryPreparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/BootTimingsTraceLog;

    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/BootTimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/BootTimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string/jumbo v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    invoke-virtual {v0}, Landroid/util/BootTimingsTraceLog;->traceEnd()V

    return-void
.end method
