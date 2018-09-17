.class public Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;,
        Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;
    }
.end annotation


# static fields
.field private static final KEY_STATUSBAR_EXPANSION:Ljava/lang/String; = "knoxmdm_key_statusbar_disable_expansion"

.field public static final SYSTEM_UI_PACAKGAE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "SystemUIAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# instance fields
.field private adapterUserId:I

.field private isCallbackDied:Z

.field private isFistcalled:Z

.field private mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

.field mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistedCount:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registPersonaObserver(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->unregistPersonaObserver(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    iput v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    iput-boolean v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    iput v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBar:Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBar:Landroid/app/StatusBarManager;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->registerKnoxModeChangeObserver()V

    return-void
.end method

.method private getCurrentUserId()I
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    if-eq v1, v4, :cond_10

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_14
    .catchall {:try_start_5 .. :try_end_10} :catchall_19

    :cond_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_13
    return v1

    :catch_14
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    :cond_12
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;
    .registers 3

    const-string/jumbo v1, "security_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_11

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private isCalledFromSystem()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_2a

    const-string/jumbo v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCalledFromSystem() : no permission because non-system : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method private isCalledFromSystemUI()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_49

    move-result-object v0

    :cond_21
    :goto_21
    if-eqz v0, :cond_2e

    const-string/jumbo v3, "android.uid.systemui"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_55

    :cond_2e
    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCalledFromSystemUI() : no permission because not systemui : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_49
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "isCalledFromSystemUI() : fail to get caller name. "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_21

    :cond_55
    const/4 v3, 0x1

    return v3
.end method

.method private isComContainerExistOnDevice()Z
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerExistOnDevice()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_13
    .catchall {:try_start_5 .. :try_end_e} :catchall_21

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_12
    return v1

    :catch_13
    move-exception v0

    :try_start_14
    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "isComContainerExistOnDevice() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private onKeyguardLaunched()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getSecurityPolicy()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/knox/ISecurityPolicy;->onKeyguardLaunched()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1c
    .catchall {:try_start_4 .. :try_end_18} :catchall_2a

    :cond_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string/jumbo v1, "SystemUIAdapter"

    const-string/jumbo v4, "onKeyguardLaunched() has failed."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private registPersonaObserver(I)V
    .registers 10

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registPersonaObserver() - try to regist persona observer - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_24
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_61

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v3

    if-eqz v3, :cond_61

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v2, p0, v3, p1, v6}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registPersonaObserver() - persona observer has registed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_61} :catch_65
    .catchall {:try_start_24 .. :try_end_61} :catchall_73

    :cond_61
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_64
    return-void

    :catch_65
    move-exception v0

    :try_start_66
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v6, "registPersonaObserver() error occurs."

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_73

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    :catchall_73
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 5

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_19

    :try_start_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "SystemUIAdapter"

    const-string/jumbo v3, "registerKnoxModeChangeObserver() error occurs."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method private unregistPersonaObserver(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIPersonaObserver;->unregisterPersonaObserverReceiver()V

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method


# virtual methods
.method public clearAllNotificationsAsUser(I)Z
    .registers 10

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "clearAllNotificationsAsUser() userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x0

    return v3

    :cond_22
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_27
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_36
    .catchall {:try_start_27 .. :try_end_2a} :catchall_45

    move-result-object v2

    if-nez v2, :cond_32

    const/4 v1, 0x0

    :goto_2e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_31
    return v1

    :cond_32
    :try_start_32
    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_45

    goto :goto_2e

    :catch_36
    move-exception v0

    :try_start_37
    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v6, "clearAllNotificationsAsUser failed with Exception"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_45

    const/4 v1, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    :catchall_45
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public excludeExternalStorageForFailedPasswordsWipeAsUser(IZ)V
    .registers 10

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "excludeExternalStorageForFailedPasswordsWipeAsUser() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", exclude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_2c

    return-void

    :cond_2c
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMultifactorAuthEnabled() excludeExternalStorageForFailedPasswordsWipeAsUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v4

    if-eq p1, v4, :cond_5a

    if-eqz v3, :cond_5a

    return-void

    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->excludeExternalStorageForFailedPasswordsWipe(Z)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_5f} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_76

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "excludeExternalStorageForFailedPasswordsWipe() Failed with RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_6b
    move-exception v1

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "excludeExternalStorageForFailedPasswordsWipe() failed with NullPointerException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_76
    move-exception v2

    goto :goto_5f
.end method

.method public getAdapterId()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    return v0
.end method

.method public getRegistedCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    return v0
.end method

.method public isComContainerId(I)Z
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isComContainerId(I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_2f
    .catchall {:try_start_5 .. :try_end_e} :catchall_3d

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_12
    if-eqz v1, :cond_2e

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isComContainerId() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return v1

    :catch_2f
    move-exception v0

    :try_start_30
    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "isComContainerId() has failed. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_3d

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    :catchall_3d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isKnoxStateMonitorRegisted()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .registers 11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystemUI()Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v6, "registerSystemUICallback() has failed because it\'s only allowed to call by SystemUI "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_13
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    if-eqz v4, :cond_34

    const-string/jumbo v5, "SystemUIAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerSystemUICallback() has failed because it\'s only allowed user_system, but userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_34
    if-eqz p1, :cond_85

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    :try_start_38
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v5}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;

    iget v7, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    invoke-direct {v6, p0, v7}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4d} :catch_8f

    :goto_4d
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    const/4 v1, 0x1

    const-string/jumbo v5, "SystemUIAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerSystemUICallback() callback has registed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegistedCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v5, 0x0

    :try_start_71
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7b
    .catchall {:try_start_71 .. :try_end_74} :catchall_80

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_77
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->onKeyguardLaunched()V

    :goto_7a
    return v1

    :catch_7b
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_77

    :catchall_80
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_85
    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v6, "registerSystemUICallback() has failed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catch_8f
    move-exception v0

    goto :goto_4d
.end method

.method public setAirplaneModeAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAirplaneModeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setAirplaneModeAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setAirplaneModeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setAirplaneModeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setApplicationNameControlEnabledAsUser(IZ)V
    .registers 8

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setApplicationNameEnabledAsUser()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_17

    return-void

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setApplicationNameControlEnabled(Z)V
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_1c} :catch_33
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v2

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setApplicationNameEnabledAsUser() Failed with Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_28
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setApplicationNameEnabledAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_33
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setApplicationNameEnabledAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public setBluetoothAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setBluetoothAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setBluetoothAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setBluetoothAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setCellularDataAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCellularDataAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setCellularDataAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setCellularDataAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setCellularDataAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setGPSStateChangeAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGPSStateChangeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setGPSStateChangeAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setGPSStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setGPSStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setKioskModeEnabledAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKioskModeEnabled() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setKioskModeEnabled(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setKioskModeEnabled() failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setKioskModeEnabled() failed with NullPointerException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setLocationProviderAllowedAsUser(ILjava/lang/String;Z)V
    .registers 10

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLocationProviderAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_37

    return-void

    :cond_37
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_3e

    return-void

    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2, p3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLocationProviderAllowed(Ljava/lang/String;Z)V
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_43} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_5a

    :goto_43
    return-void

    :catch_44
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLocationProviderAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_4f
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLocationProviderAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :catch_5a
    move-exception v2

    goto :goto_43
.end method

.method public setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLockedIccIdsAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    :cond_21
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_28

    return-void

    :cond_28
    :try_start_28
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockedIccIds([Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2d} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_44

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockedIccIdsAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_39
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockedIccIdsAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :catch_44
    move-exception v2

    goto :goto_2d
.end method

.method public setLockscreenInvisibleOverlayAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLockscreenInvisibleOverlayAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    :cond_21
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_28

    return-void

    :cond_28
    :try_start_28
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenInvisibleOverlay(Z)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2d} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_44

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenInvisibleOverlayAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_39
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenInvisibleOverlayAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :catch_44
    move-exception v2

    goto :goto_2d
.end method

.method public setLockscreenWallpaperAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLockscreenWallpaperAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_21

    return-void

    :cond_21
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_28

    return-void

    :cond_28
    :try_start_28
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setLockscreenWallpaper(Z)V
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2d} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_44

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenWallpaperAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_39
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setLockscreenWallpaperAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :catch_44
    move-exception v2

    goto :goto_2d
.end method

.method public setMaximumFailedPasswordsForDisableAsUser(II)V
    .registers 10

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMaximumFailedPasswordsForDisableAsUser() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_2c

    return-void

    :cond_2c
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMaximumFailedPasswordsForDisableAsUser() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v4

    if-eq p1, v4, :cond_5a

    if-eqz v3, :cond_5a

    return-void

    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMaximumFailedPasswordsForDisable(I)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_5f} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_76

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setMaximumFailedPasswordsForDisable() Failed with RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_6b
    move-exception v1

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setMaximumFailedPasswordsForDisable() failed with NullPointerException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_76
    move-exception v2

    goto :goto_5f
.end method

.method public setMultifactorAuthEnabled(IZ)V
    .registers 10

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setMultifactorAuthEnabled()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_10

    return-void

    :cond_10
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMultifactorAuthEnabled() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v4

    if-eq p1, v4, :cond_3e

    if-eqz v3, :cond_3e

    return-void

    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setMultifactorAuthEnabled(Z)V
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_43} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_44

    :goto_43
    return-void

    :catch_44
    move-exception v2

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setApplicationNameEnabledAsUser() Failed with Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_4f
    move-exception v0

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setApplicationNameEnabledAsUser() Failed with RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_5a
    move-exception v1

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setApplicationNameEnabledAsUser() failed with NullPointerException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method public setNFCAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNFCAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setNFCStateChangeAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNFCStateChangeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNFCStateChangeAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNFCStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setNavigationBarHiddenAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNavigationBarHiddenAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hidden = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_3d

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setNavigationBarHidden(Z)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_42} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_59

    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNavigationBarHidden() failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_4e
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setNavigationBarHidden() failed with NullPointerException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_59
    move-exception v2

    goto :goto_42
.end method

.method public setPasswordLockDelayAsUser(II)V
    .registers 10

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPasswordLockDelayAsUser() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_2c

    return-void

    :cond_2c
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMultifactorAuthEnabled() setPasswordLockDelayAsUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v4

    if-eq p1, v4, :cond_5a

    if-eqz v3, :cond_5a

    return-void

    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordLockDelay(I)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_5f} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_76

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setPasswordLockDelay() Failed with RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_6b
    move-exception v1

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setPasswordLockDelay() failed with NullPointerException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_76
    move-exception v2

    goto :goto_5f
.end method

.method public setPasswordVisibilityEnabledAsUser(IZ)V
    .registers 10

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPasswordVisibilityEnabledAsUser() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", allow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_2c

    return-void

    :cond_2c
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPasswordVisibilityEnabledAsUser() isSeparateProfileChallengeEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v4

    if-eq p1, v4, :cond_5a

    if-eqz v3, :cond_5a

    return-void

    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPasswordVisibilityEnabled(Z)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_5f} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_76

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setPasswordVisibilityEnabled() Failed with RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_6b
    move-exception v1

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setPasswordVisibilityEnabled() failed with NullPointerException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_76
    move-exception v2

    goto :goto_5f
.end method

.method public setPwdChangeRequestedAsUser(II)V
    .registers 10

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPwdChangeRequestedAsUser() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", flag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_2c

    return-void

    :cond_2c
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMultifactorAuthEnabled() setPwdChangeRequestedAsUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v4

    if-eq p1, v4, :cond_5a

    if-eqz v3, :cond_5a

    return-void

    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v4, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setPwdChangeRequested(I)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_5f} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_76

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setPwdChangeRequested() Failed with RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :catch_6b
    move-exception v1

    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "setPwdChangeRequested() failed with NullPointerException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_76
    move-exception v2

    goto :goto_5f
.end method

.method public setSettingsChangeAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSettingsChangeAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setSettingsChangeAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setSettingsChangeAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setSettingsChangeAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setStatusBarExpansionAllowedAsUser(IZ)V
    .registers 13

    const-string/jumbo v5, "SystemUIAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarExpansionAllowedAsUser() userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isAllowed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v5

    if-nez v5, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v5

    if-nez v5, :cond_39

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v5

    if-eq p1, v5, :cond_3d

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    :cond_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_41
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    if-eqz v4, :cond_52

    if-eqz p2, :cond_5b

    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    const-string/jumbo v8, "knoxmdm_key_statusbar_disable_expansion"

    const/4 v9, 0x0

    invoke-interface {v4, v9, v5, v8, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_66
    .catchall {:try_start_41 .. :try_end_52} :catchall_74

    :cond_52
    :goto_52
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_55
    :try_start_55
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v5, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarExpansionAllowed(Z)V
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_5a} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_79
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_8f

    :goto_5a
    return-void

    :cond_5b
    :try_start_5b
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mToken:Landroid/os/IBinder;

    const-string/jumbo v8, "knoxmdm_key_statusbar_disable_expansion"

    const/high16 v9, 0x10000

    invoke-interface {v4, v9, v5, v8, p1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_65} :catch_66
    .catchall {:try_start_5b .. :try_end_65} :catchall_74

    goto :goto_52

    :catch_66
    move-exception v1

    :try_start_67
    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v8, "setStatusBarExpansionAllowedAsUser() failed."

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_74

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_55

    :catchall_74
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_79
    move-exception v0

    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v8, "setStatusBarExpansionAllowedAsUser() Failed with RemoteException"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    :catch_84
    move-exception v2

    const-string/jumbo v5, "SystemUIAdapter"

    const-string/jumbo v8, "setStatusBarExpansionAllowedAsUser() failed with NullPointerException."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catch_8f
    move-exception v3

    goto :goto_5a
.end method

.method public setStatusBarHiddenAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarHiddenAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hidden = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isComContainerId(I)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_3d

    return-void

    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result p1

    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setStatusBarHidden(Z)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_42} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_59

    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarHidden() failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_4e
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setStatusBarHidden() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catch_59
    move-exception v2

    goto :goto_42
.end method

.method public setWifiAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setWifiStateChangeAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiStateChangeAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiStateChangeAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiStateChangeAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiStateChangeAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public setWifiTetheringAllowedAsUser(IZ)V
    .registers 9

    const-string/jumbo v3, "SystemUIAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiTetheringAllowedAsUser() userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_33

    return-void

    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallback:Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    invoke-interface {v3, p2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->setWifiTetheringAllowed(Z)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_4f

    :goto_38
    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiTetheringAllowedAsUser() Failed with RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_44
    move-exception v1

    const-string/jumbo v3, "SystemUIAdapter"

    const-string/jumbo v4, "setWifiTetheringAllowedAsUser() failed with NullPointerException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_4f
    move-exception v2

    goto :goto_38
.end method

.method public updateSystemUIMonitor(I)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCalledFromSystem()Z

    move-result v4

    if-nez v4, :cond_21

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSystemUIMonitor() has failed because not system call, userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    if-ltz p1, :cond_50

    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    if-eq v4, p1, :cond_4e

    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSystemUIMonitor() userId has changed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_54
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_77

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    iget v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->adapterUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_73} :catch_81
    .catchall {:try_start_54 .. :try_end_73} :catchall_a0

    :goto_73
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_76
    return-void

    :cond_77
    :try_start_77
    const-string/jumbo v4, "SystemUIAdapter"

    const-string/jumbo v5, "updateSystemUIMonitor() cannot call because context is null. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_81
    .catchall {:try_start_77 .. :try_end_80} :catchall_a0

    goto :goto_73

    :catch_81
    move-exception v0

    :try_start_82
    const-string/jumbo v4, "SystemUIAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSystemUIMonitor() userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_a0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_76

    :catchall_a0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
