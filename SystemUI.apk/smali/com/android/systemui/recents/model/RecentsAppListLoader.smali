.class public Lcom/android/systemui/recents/model/RecentsAppListLoader;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsAppListLoader$1;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$2;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$3;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$4;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$5;,
        Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;
    }
.end annotation


# static fields
.field public static MAX_RECOMMENDATION_APPS_COUNT:I

.field public static SIZE_ICON_CACHE:I

.field public static mAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mRawResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# instance fields
.field COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private EXECUTE_COUNT_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

.field mApplicationContext:Landroid/content/Context;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBuildAppInfosRunnable:Ljava/lang/Runnable;

.field private mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPreloading:Z

.field private mKioskId:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

.field private mPreloadDataRunnable:Ljava/lang/Runnable;

.field private mPreloadLock:Ljava/lang/Object;

.field mRecommendationAppCount:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/util/LruCache;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->removeDrawableCache(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_RECOMMENDATION_APPS_COUNT:I

    const/16 v0, 0x28

    sput v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->SIZE_ICON_CACHE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mKioskId:I

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    iput v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    iput-boolean v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$1;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$2;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$5;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_RECOMMENDATION_APPS_COUNT:I

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->initLruCache()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Recents-AppListLoader"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addDrawableToMemCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getBadgedActivityIcon(Landroid/content/pm/ResolveInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v5, 0x0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_b

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_c

    :cond_b
    return-object v5

    :cond_c
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_28

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10d0000

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;
    .registers 2

    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    :cond_b
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    return-object v0
.end method

.method private initLruCache()V
    .registers 3

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->SIZE_ICON_CACHE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    return-void
.end method

.method private removeDrawableCache(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildAppInfos()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBuildAppInfosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppInfos(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_d
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_10
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->sortAppInfoList(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRecommendationAppCount()I
    .registers 4

    const-string/jumbo v0, "RecentsAppListLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFrequentlyUsedAppCount - count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRecommendationAppCount:I

    return v0
.end method

.method public isPreloaded()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v1, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_9
    sget-object v0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public loadAppInfoData(Lcom/android/systemui/recents/model/AppInfo;)V
    .registers 5

    iget-object v1, p1, Lcom/android/systemui/recents/model/AppInfo;->key:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getDrawableFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/AppInfo;->notifyDataLoaded(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;Lcom/android/systemui/recents/model/AppInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IconChangedEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public preload()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->buildAppInfos()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preloadData()V

    return-void
.end method

.method public preloadData()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mIsPreloading:Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mPreloadDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sortAppInfoList(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9

    const/4 v4, 0x0

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6b

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->EXECUTE_COUNT_ORDER:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    sget v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->MAX_RECOMMENDATION_APPS_COUNT:I

    if-ge v1, v3, :cond_36

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/AppInfo;

    iget v3, v0, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    if-nez v3, :cond_52

    :cond_36
    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4c
    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_52
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/recents/model/AppInfo;->isDisabled(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_68

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mTempList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/AppInfo;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_6b
    return v4
.end method
