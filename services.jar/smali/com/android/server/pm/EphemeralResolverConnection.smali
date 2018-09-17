.class final Lcom/android/server/pm/EphemeralResolverConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;,
        Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;,
        Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;,
        Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_TIMEOUT_MS:J

.field private static final CALL_SERVICE_TIMEOUT_MS:J

.field private static final DEBUG_EPHEMERAL:Z

.field private static final STATE_BINDING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private mBindState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/app/IInstantAppResolver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()J
    .registers 2

    sget-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    return-wide v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/EphemeralResolverConnection;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/EphemeralResolverConnection;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/app/IInstantAppResolver;)Landroid/app/IInstantAppResolver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/EphemeralResolverConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->handleBinderDiedLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x1f4

    :goto_d
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0xc8

    :goto_1d
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/pm/EphemeralResolverConnection;->CALL_SERVICE_TIMEOUT_MS:J

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    return-void

    :cond_25
    const/16 v0, 0x12c

    goto :goto_d

    :cond_28
    const/16 v0, 0x64

    goto :goto_1d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-direct {v0}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_6
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_7f

    monitor-exit v6

    return-object v5

    :cond_e
    :try_start_e
    iget v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    if-ne v5, v7, :cond_44

    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_37

    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Previous bind timed out; waiting for connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_7f

    :cond_37
    :try_start_37
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_37 .. :try_end_40} :catch_42
    .catchall {:try_start_37 .. :try_end_40} :catchall_7f

    monitor-exit v6

    return-object v5

    :catch_42
    move-exception v1

    const/4 v0, 0x1

    :cond_44
    :try_start_44
    iget v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    if-ne v5, v9, :cond_82

    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_6d

    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Another thread is binding; waiting for connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v5, :cond_78

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_76
    .catchall {:try_start_44 .. :try_end_76} :catchall_7f

    monitor-exit v6

    return-object v5

    :cond_78
    :try_start_78
    new-instance v5, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v5
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_82
    const/4 v5, 0x1

    :try_start_83
    iput v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_7f

    monitor-exit v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b6

    :try_start_8a
    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_af

    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Previous connection never established; rebinding"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_b6
    sget-boolean v5, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v5, :cond_db

    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Binding to instant app resolver"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    const v2, 0x4000001

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v9, 0x4000001

    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_125

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_f2
    .catchall {:try_start_8a .. :try_end_f2} :catchall_113

    :try_start_f2
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->waitForBindLocked(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;
    :try_end_f7
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_110

    :try_start_f7
    monitor-exit v6
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_113

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v4, :cond_109

    if-nez v3, :cond_109

    const/4 v5, 0x2

    :try_start_100
    iput v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    :goto_102
    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_107
    .catchall {:try_start_100 .. :try_end_107} :catchall_10d

    monitor-exit v6

    return-object v3

    :cond_109
    const/4 v5, 0x0

    :try_start_10a
    iput v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_10d

    goto :goto_102

    :catchall_10d
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_110
    move-exception v5

    :try_start_111
    monitor-exit v6

    throw v5
    :try_end_113
    .catchall {:try_start_111 .. :try_end_113} :catchall_113

    :catchall_113
    move-exception v5

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v4, :cond_153

    if-nez v3, :cond_153

    const/4 v7, 0x2

    :try_start_11c
    iput v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    :goto_11e
    iget-object v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V
    :try_end_123
    .catchall {:try_start_11c .. :try_end_123} :catchall_157

    monitor-exit v6

    throw v5

    :cond_125
    :try_start_125
    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] Failed to bind to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v5
    :try_end_153
    .catchall {:try_start_125 .. :try_end_153} :catchall_113

    :cond_153
    const/4 v7, 0x0

    :try_start_154
    iput v7, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I
    :try_end_156
    .catchall {:try_start_154 .. :try_end_156} :catchall_157

    goto :goto_11e

    :catchall_157
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection;->bind(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private handleBinderDiedLocked()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v1, :cond_f

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    invoke-interface {v1}, Landroid/app/IInstantAppResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_f
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_f} :catch_12

    :cond_f
    :goto_f
    iput-object v3, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    return-void

    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    return-void
.end method

.method private waitForBindLocked(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :goto_4
    iget v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mBindState:I

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mRemoteInstance:Landroid/app/IInstantAppResolver;

    if-eqz v6, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    sget-wide v6, Lcom/android/server/pm/EphemeralResolverConnection;->BIND_SERVICE_TIMEOUT_MS:J

    sub-long v2, v6, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3e

    new-instance v6, Ljava/util/concurrent/TimeoutException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Didn\'t bind to resolver in time!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3e
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_4
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    sget-boolean v0, Lcom/android/server/pm/EphemeralResolverConnection;->DEBUG_EPHEMERAL:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Binder to instant app resolver died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->handleBinderDiedLocked()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/EphemeralResolverConnection$1;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;J)V

    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Landroid/app/IInstantAppResolver;->getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Landroid/os/IRemoteCallback;)V
    :try_end_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_11} :catch_1a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_11} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_22

    :goto_11
    return-void

    :catch_12
    move-exception v6

    new-instance v1, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v1

    :catch_1a
    move-exception v7

    new-instance v1, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v1

    :catch_22
    move-exception v8

    goto :goto_11
.end method

.method public final getInstantAppResolveInfoList([ILjava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/EphemeralResolverConnection;->throwIfCalledOnMainThread()V

    const/4 v3, 0x0

    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/pm/EphemeralResolverConnection;->getRemoteInstanceLazy(Ljava/lang/String;)Landroid/app/IInstantAppResolver;
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_7} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_18
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    move-result-object v3

    :try_start_8
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mGetEphemeralResolveInfoCaller:Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;

    invoke-virtual {v4, v3, p1, p2}, Lcom/android/server/pm/EphemeralResolverConnection$GetEphemeralResolveInfoCaller;->getEphemeralResolveInfoList(Landroid/app/IInstantAppResolver;[ILjava/lang/String;)Ljava/util/List;
    :try_end_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_d} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_3e
    .catchall {:try_start_8 .. :try_end_d} :catchall_20

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_11
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_33

    monitor-exit v5

    return-object v4

    :catch_18
    move-exception v0

    :try_start_19
    new-instance v4, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v4
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v4

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_24
    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_4d

    monitor-exit v5

    throw v4

    :catch_2b
    move-exception v1

    :try_start_2c
    new-instance v4, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v4
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_20

    :catchall_33
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_36
    move-exception v1

    :try_start_37
    new-instance v4, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;-><init>(I)V

    throw v4
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_20

    :catch_3e
    move-exception v2

    iget-object v5, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_42
    iget-object v4, p0, Lcom/android/server/pm/EphemeralResolverConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4a

    monitor-exit v5

    const/4 v4, 0x0

    return-object v4

    :catchall_4a
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_4d
    move-exception v4

    monitor-exit v5

    throw v4
.end method
