.class public Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
.super Landroid/content/BroadcastReceiver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;
    }
.end annotation


# static fields
.field private static final LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# instance fields
.field private mAODLockSettingsObserver:Landroid/database/ContentObserver;

.field private final mClockCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextForUser:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;I)Landroid/content/Context;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->handleClockPackageUpdated()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->handleClockSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_trial_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;

    sget-object v4, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const-string/jumbo v4, "ExternalClockProvider"

    const-string/jumbo v5, "ExternalClockProvider() created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-virtual {v3, v4, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_71
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V

    const-string/jumbo v6, "ExternalClockProvider"

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_80} :catch_d0

    :goto_80
    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateSALog()V

    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z

    if-nez v4, :cond_cf

    :try_start_93
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_cf
    .catch Ljava/lang/SecurityException; {:try_start_93 .. :try_end_cf} :catch_d5

    :cond_cf
    :goto_cf
    return-void

    :catch_d0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_80

    :catch_d5
    move-exception v1

    const-string/jumbo v4, "ExternalClockProvider"

    const-string/jumbo v5, "SecurityException occurred while registering com.samsung.android.app.clockpack.provider"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf
.end method

.method private getContextForUser(I)Landroid/content/Context;
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
    .registers 2

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    :cond_b
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    return-object v0
.end method

.method private getPaletteInfo()[I
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_34

    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v8, v1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v8, v1
    :try_end_31
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_31} :catch_4f
    .catchall {:try_start_15 .. :try_end_31} :catchall_57

    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPaletteInfo() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_4f
    move-exception v7

    :try_start_50
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_57

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_57
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getThemeClockPackage()Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThemeClockPackage() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (TRIAL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-object v0

    :cond_2e
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThemeClockPackage() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private handleClockPackageUpdated()V
    .registers 5

    const-string/jumbo v2, "ExternalClockProvider"

    const-string/jumbo v3, "handleClockPackageUpdated()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.samsung.android.app.aodservice"

    const-string/jumbo v3, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockPackageChanged()V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_39
    return-void
.end method

.method private handleClockSettingsChanged(Landroid/net/Uri;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_6a

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3b

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_38

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockStyleChanged()V

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_3b
    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v4, :cond_6a

    :try_start_47
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "lockscreen_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "9008"

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v7

    const/4 v8, 0x2

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockName(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6a
    .catch Lcom/samsung/android/clockpack/plugins/exception/PluginException; {:try_start_47 .. :try_end_6a} :catch_6b
    .catch Lcom/samsung/android/clockpack/plugins/exception/CategoryException; {:try_start_47 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    return-void

    :catch_6b
    move-exception v1

    const-string/jumbo v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Plugin|CategoryException: getClockName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_92
    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const/4 v2, 0x0

    :goto_9b
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_b9

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_b6

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockColorChanged()V

    :cond_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    :cond_b9
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v3

    aget v4, v3, v6

    if-nez v4, :cond_f2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "lockscreen_pref"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "9009"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Color "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_6a

    :cond_f2
    aget v4, v3, v6

    if-ne v4, v8, :cond_6a

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "lockscreen_pref"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "9009"

    const-string/jumbo v6, "Color picker"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_6a
.end method

.method private isMonoClock(I)Z
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .registers 13

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :try_start_8
    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    new-instance v0, Ldalvik/system/PathClassLoader;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v7, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v8, 0x1

    invoke-static {v1, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-interface {v5, v8, v7}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->onCreate(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_36} :catch_37

    return-object v5

    :catch_37
    move-exception v2

    const-string/jumbo v8, "ExternalClockProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t load plugin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    return-object v8
.end method

.method private queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x200

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_32

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v4

    return-object v4

    :cond_32
    const-string/jumbo v4, "ExternalClockProvider"

    const-string/jumbo v5, "queryPlugin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private querySingleString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    const-string/jumbo v8, ""

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_28

    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_25

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_24} :catch_33
    .catchall {:try_start_14 .. :try_end_24} :catchall_3b

    move-result-object v8

    :cond_25
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_28
    :goto_28
    const-string/jumbo v0, "null"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v8, 0x0

    :cond_32
    return-object v8

    :catch_33
    move-exception v7

    :try_start_34
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_3b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_16

    const-string/jumbo v3, "ExternalClockProvider"

    const-string/jumbo v4, "setPreDefineOrCustomColor() set default color to dual clock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setPaletteIndex(I)V

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v1

    aget v2, v1, v5

    aget v0, v1, v6

    if-nez v2, :cond_49

    invoke-virtual {p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setPaletteIndex(I)V

    :cond_23
    :goto_23
    const-string/jumbo v3, "ExternalClockProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreDefineOrCustomColor() type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", indexOrColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    if-ne v2, v6, :cond_23

    invoke-virtual {p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setCustomColor(I)V

    goto :goto_23
.end method

.method private updateSALog()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "ExternalClockProvider"

    const-string/jumbo v6, "updateSALog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "Adaptive color"

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lock_adaptive_color"

    const/4 v7, -0x2

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v9, :cond_81

    const/4 v2, 0x1

    :goto_1f
    if-nez v2, :cond_41

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v4

    aget v5, v4, v8

    if-nez v5, :cond_83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Color "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v9

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_41
    :goto_41
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "lockscreen_pref"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v5, :cond_b2

    :try_start_52
    const-string/jumbo v5, "9008"

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v7

    const/4 v8, 0x2

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockName(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_67
    .catch Lcom/samsung/android/clockpack/plugins/exception/PluginException; {:try_start_52 .. :try_end_67} :catch_8b
    .catch Lcom/samsung/android/clockpack/plugins/exception/CategoryException; {:try_start_52 .. :try_end_67} :catch_8b

    :goto_67
    const-string/jumbo v5, "9009"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v6, "9010"

    if-eqz v2, :cond_bc

    const-string/jumbo v5, "1"

    :goto_79
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_81
    const/4 v2, 0x0

    goto :goto_1f

    :cond_83
    aget v5, v4, v8

    if-ne v5, v9, :cond_41

    const-string/jumbo v3, "Color picker"

    goto :goto_41

    :catch_8b
    move-exception v0

    const-string/jumbo v5, "ExternalClockProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Plugin|CategoryException: getClockName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :cond_b2
    const-string/jumbo v5, "9008"

    const-string/jumbo v6, "Type 1"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_67

    :cond_bc
    const-string/jumbo v5, "0"

    goto :goto_79
.end method


# virtual methods
.method public getClockType()I
    .registers 10

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_27

    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_24

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_23} :catch_42
    .catchall {:try_start_13 .. :try_end_23} :catchall_4a

    move-result v6

    :cond_24
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_27
    :goto_27
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getClockType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_42
    move-exception v8

    :try_start_43
    invoke-virtual {v8}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_27

    :catchall_4a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getClockView(I)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v2, :cond_15

    :try_start_5
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockView(II)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    const-string/jumbo v2, "ExternalClockProvider"

    const-string/jumbo v3, "VERSION_CODE = 12"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Lcom/samsung/android/clockpack/plugins/exception/PluginException; {:try_start_5 .. :try_end_15} :catch_21
    .catch Lcom/samsung/android/clockpack/plugins/exception/NoSuchClockException; {:try_start_5 .. :try_end_15} :catch_21
    .catch Lcom/samsung/android/clockpack/plugins/exception/CategoryException; {:try_start_5 .. :try_end_15} :catch_21

    :cond_15
    :goto_15
    if-nez v0, :cond_26

    const-string/jumbo v2, "ExternalClockProvider"

    const-string/jumbo v3, "getClockView returns null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-object v0

    :catch_21
    move-exception v1

    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_15

    :cond_26
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    goto :goto_20
.end method

.method public getDateColor()I
    .registers 10

    const/4 v2, 0x0

    const v6, -0x50506

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_29

    :try_start_15
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_26

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_25} :catch_44
    .catchall {:try_start_15 .. :try_end_25} :catchall_4c

    move-result v6

    :cond_26
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_29
    :goto_29
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDateColor() color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_44
    move-exception v8

    :try_start_45
    invoke-virtual {v8}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_4c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_29

    :catchall_4c
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    if-nez v0, :cond_16

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.clockpack.plugins"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    return-object v0
.end method

.method public isThemeClockEnabled()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getThemeClockPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string/jumbo v4, "reason"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_41

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4b

    :cond_41
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    const-string/jumbo v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_9d
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4b
.end method

.method public registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1a

    return-void

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldUseDefaultColor()Z
    .registers 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v4, v3, :cond_25

    const/4 v0, 0x1

    :goto_10
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-nez v2, :cond_27

    if-nez v1, :cond_27

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_10

    :cond_27
    move v0, v3

    goto :goto_24
.end method

.method public unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_8
    if-ltz v1, :cond_22

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 8

    const-string/jumbo v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClockColor() adaptiveColors="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isMonoClock(I)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3b

    if-eqz p2, :cond_3c

    iget v1, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    iget v2, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    iget v3, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    iget v4, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setAdaptiveColors(IIII)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;)V

    goto :goto_3b
.end method
