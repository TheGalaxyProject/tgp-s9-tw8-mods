.class Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageChangeMonitor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_settings_search_DynamicIndexableContentMonitor$PackageChangeMonitor_11925(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->onPackageAvailable(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->onPackageAvailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_settings_search_DynamicIndexableContentMonitor$PackageChangeMonitor_12291(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->onPackageUnavailable(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->onPackageUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method private postPackageAvailable(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->getRegisteredHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/-$Lambda$WgKB5cCADUyeMHY3N6-59xOMID8;

    invoke-direct {v1, p1}, Lcom/android/settings/search/-$Lambda$WgKB5cCADUyeMHY3N6-59xOMID8;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postPackageUnavailable(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->getRegisteredHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/-$Lambda$WgKB5cCADUyeMHY3N6-59xOMID8$1;

    invoke-direct {v1, p1}, Lcom/android/settings/search/-$Lambda$WgKB5cCADUyeMHY3N6-59xOMID8$1;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->postPackageAvailable(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->postPackageUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_12

    :try_start_4
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->postPackageAvailable(Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->postPackageUnavailable(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_12

    :catch_17
    move-exception v0

    sget-object v2, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public registerMonitor(Landroid/content/Context;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_18

    if-eqz v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, v2, v0, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterMonitor()V
    .registers 3

    iget-object v1, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$PackageChangeMonitor;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
