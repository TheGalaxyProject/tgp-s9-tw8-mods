.class public Lcom/android/systemui/splugins/SPluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "SPluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/splugins/SPluginManager;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;,
        Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;
    }
.end annotation


# instance fields
.field private final ACTION_GOODLOCK:Ljava/lang/String;

.field private final IGNORE_EXCEPTION:[Ljava/lang/String;

.field private final isDebuggable:Z

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

.field private mGoodLockPackageName:Ljava/lang/String;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<*>;",
            "Lcom/android/systemui/splugins/SPluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPluginPrefs:Lcom/android/systemui/splugins/SPluginPrefs;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/splugins/SPluginManagerImpl;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;-><init>()V

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 11

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.systemui.bixby"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.systemui.action.GOODLOCK"

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->ACTION_GOODLOCK:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    iput-boolean p3, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    new-instance v1, Lcom/android/systemui/splugins/SPluginPrefs;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/splugins/SPluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/android/systemui/splugins/SPluginPrefs;

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginVersions;->initVersion()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/splugins/-$Lambda$NfhudM_j5pLniMlnUhSBvaMK0Tw;

    invoke-direct {v2, p0}, Lcom/android/systemui/splugins/-$Lambda$NfhudM_j5pLniMlnUhSBvaMK0Tw;-><init>(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private startListening()V
    .registers 4

    iget-boolean v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const-string/jumbo v1, "SPluginManagerImpl"

    const-string/jumbo v2, "startListening"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListening()V
    .registers 3

    const-string/jumbo v0, "SPluginManagerImpl"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_12

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateGoodLockPackageName(Ljava/lang/String;)Z
    .registers 12

    const/4 v9, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.systemui.action.GOODLOCK"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    :try_start_e
    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.systemui.permission.SPLUGIN"

    invoke-virtual {v2, v6, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1d

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mGoodLockPackageName:Ljava/lang/String;

    const-string/jumbo v6, "SPluginManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Update GoodLockPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mGoodLockPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_54} :catch_56

    const/4 v6, 0x1

    return v6

    :catch_56
    move-exception v0

    :cond_57
    return v9
.end method


# virtual methods
.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/systemui/splugins/SPluginManager;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/android/systemui/splugins/SPluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/splugins/SPluginPrefs;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v6, p3

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/splugins/SPluginManagerImpl$SPluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/splugins/SPluginManagerImpl;)Lcom/android/systemui/splugins/SPluginInstanceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/splugins/SPluginInstanceManager;->loadAll()V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->startListening()V

    return-void
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    return v1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "GoodLock"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  PackageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mGoodLockPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/systemui/splugins/SPluginVersions;->dump(Ljava/io/PrintWriter;)V

    const-string/jumbo v2, "SPluginInstanceManager"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v0, p2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_32

    :cond_42
    return-void
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    return-object v1

    :cond_11
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_16

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    invoke-virtual {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    return-object v0
.end method

.method public handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method synthetic lambda$-com_android_systemui_splugins_SPluginManagerImpl_4877()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->updateGoodLockPackageName(Ljava/lang/String;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v9, 0x0

    const-string/jumbo v6, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->loadAll()V

    goto :goto_18

    :cond_28
    const-string/jumbo v6, "com.samsung.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_64
    return-void

    :cond_65
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/splugins/SPluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    const-string/jumbo v6, "SPluginManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c8

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    invoke-direct {p0, v4}, Lcom/android/systemui/splugins/SPluginManagerImpl;->updateGoodLockPackageName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    return-void

    :cond_ae
    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/splugins/SPluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_b8

    :cond_c8
    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mGoodLockPackageName:Ljava/lang/String;

    if-eqz v6, :cond_113

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mGoodLockPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_113

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_113

    const-string/jumbo v6, "SPluginManagerImpl"

    const-string/jumbo v7, "Uninstalled GoodLock"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mGoodLockPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f5
    :goto_f5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager;

    const-string/jumbo v6, "com.samsung.systemui.bixby.PLUGIN_EMSYSTEMUIMANAGER"

    invoke-virtual {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    invoke-virtual {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->disableAll()V

    goto :goto_f5

    :cond_112
    return-void

    :cond_113
    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/splugins/SPluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_11d
.end method

.method public removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<*>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/android/systemui/splugins/SPluginManagerImpl;->stopListening()V

    :cond_24
    return-void
.end method
