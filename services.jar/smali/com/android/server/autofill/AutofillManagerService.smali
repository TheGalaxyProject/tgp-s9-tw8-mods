.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/SystemService;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerService$1;,
        Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;,
        Lcom/android/server/autofill/AutofillManagerService$LocalService;,
        Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final TAG:Ljava/lang/String; = "AutofillManagerService"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mRequestsHistory:Landroid/util/LocalLog;

.field private mServicesCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/autofill/AutofillManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/autofill/AutofillManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/autofill/AutofillManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    new-instance v8, Landroid/util/LocalLog;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    new-instance v8, Lcom/android/server/autofill/AutofillManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string/jumbo v8, "AutofillManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Setting debug to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v2, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    const-class v8, Landroid/os/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    const/4 v3, 0x0

    :goto_84
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_bf

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v6, v8, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v8, "no_autofill"

    invoke-virtual {v5, v6, v8}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    if-eqz v1, :cond_b7

    const-string/jumbo v8, "AutofillManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Disabling Autofill for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_bf
    new-instance v8, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;

    invoke-direct {v8, p0}, Lcom/android/server/autofill/-$Lambda$vJuxjgWyqc7YDAVrm5huZJMbjMg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->startTrackingPackageChanges()V

    return-void
.end method

.method private removeCachedServiceLocked(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    :cond_e
    return-void
.end method

.method private setDebugLocked(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    return-void
.end method

.method private setVerboseLocked(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    sput-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    return-void
.end method

.method private startTrackingPackageChanges()V
    .registers 6

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$2;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method private updateCachedServiceLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(IZ)V

    return-void
.end method

.method private updateCachedServiceLocked(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)V

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    :cond_12
    return-void
.end method


# virtual methods
.method destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 10

    const-string/jumbo v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroySessions() for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v6, "AutofillManagerService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, -0x1

    if-eq p1, v4, :cond_3f

    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_56

    :cond_34
    monitor-exit v5

    :try_start_35
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_59

    :goto_3e
    return-void

    :cond_3f
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_46
    if-ge v1, v3, :cond_34

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_56

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :catchall_56
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_59
    move-exception v0

    goto :goto_3e
.end method

.method getLogLevel()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_1f

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    monitor-exit v1

    return v0

    :cond_15
    :try_start_15
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1f

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    monitor-exit v1

    return v0

    :cond_1c
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMaxPartitions()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    sget v1, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v2, p1

    move v4, v3

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-nez v0, :cond_33

    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Z)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_33
    return-object v0
.end method

.method synthetic lambda$-com_android_server_autofill_AutofillManagerService_5890(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10

    const-string/jumbo v2, "no_autofill"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, v1, :cond_42

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_42

    const-string/jumbo v2, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Autofill restriction did not change for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/server/autofill/Helper;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_71

    monitor-exit v3

    return-void

    :cond_42
    :try_start_42
    const-string/jumbo v2, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updating Autofill for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(IZ)V
    :try_end_6f
    .catchall {:try_start_42 .. :try_end_6f} :catchall_71

    monitor-exit v3

    return-void

    :catchall_71
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 12

    const-string/jumbo v6, "AutofillManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "listSessions() for userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v8, "AutofillManagerService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v6, -0x1

    if-eq p1, v6, :cond_4a

    :try_start_35
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_61

    :cond_3e
    monitor-exit v7

    const-string/jumbo v6, "sessions"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    :try_start_46
    invoke-interface {p2, v6, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_64

    :goto_49
    return-void

    :cond_4a
    :try_start_4a
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_51
    if-ge v1, v5, :cond_3e

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v6, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_61

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :catchall_61
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_64
    move-exception v0

    goto :goto_49
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x258

    if-ne p1, v0, :cond_d

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;-><init>(Lcom/android/server/autofill/AutofillManagerService;Landroid/os/Handler;)V

    :cond_d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onStart()V
    .registers 4

    const-string/jumbo v0, "autofill"

    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "AutofillManagerService"

    const-string/jumbo v1, "Hiding UI when user switched"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v2, p1

    move v4, v3

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v0
.end method

.method reset()V
    .registers 6

    const-string/jumbo v2, "AutofillManagerService"

    const-string/jumbo v3, "reset()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v4, "AutofillManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_17
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v1, :cond_2e

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_35

    monitor-exit v3

    return-void

    :catchall_35
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setLogLevel(I)V
    .registers 7

    const-string/jumbo v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLogLevel(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v4, "AutofillManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_37

    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_2c
    :goto_2c
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2f
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setVerboseLocked(Z)V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3c

    monitor-exit v3

    return-void

    :cond_37
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2c

    const/4 v0, 0x1

    goto :goto_2c

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setMaxPartitions(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_AUTO_FILL"

    const-string/jumbo v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxPartitions(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_28
    sput p1, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
