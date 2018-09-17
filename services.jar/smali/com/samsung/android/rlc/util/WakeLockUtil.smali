.class public Lcom/samsung/android/rlc/util/WakeLockUtil;
.super Ljava/lang/Object;
.source "WakeLockUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PCWCLIENTTRACE_WakeLockUtil"

.field private static final WAKELOCK_TIMEOUT:I = 0xea60

.field private static final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mLock:Ljava/lang/Object;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWakeLock(Landroid/content/Context;)V
    .registers 9

    sget-object v4, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    sget-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_29

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v3, "pcw wakelock"

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v3, "PCWCLIENTTRACE_WakeLockUtil"

    const-string/jumbo v5, "[WAKELOCK] pcw wakelock created"

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    sget-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string/jumbo v3, "PCWCLIENTTRACE_WakeLockUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WAKELOCK] pcw wakelock acquired : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_53
    .catchall {:try_start_3 .. :try_end_51} :catchall_58

    :goto_51
    monitor-exit v4

    return-void

    :catch_53
    move-exception v1

    :try_start_54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_51

    :catchall_58
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static releaseWakeLock()V
    .registers 6

    sget-object v3, Lcom/samsung/android/rlc/util/WakeLockUtil;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, -0x1

    :try_start_4
    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_45

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_29

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v2, "PCWCLIENTTRACE_WakeLockUtil"

    const-string/jumbo v4, "[WAKELOCK] pcw wakelock set null"

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const-string/jumbo v2, "PCWCLIENTTRACE_WakeLockUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[WAKELOCK] pcw wakelock released : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_58
    .catchall {:try_start_4 .. :try_end_43} :catchall_5d

    :goto_43
    monitor-exit v3

    return-void

    :cond_45
    :try_start_45
    sget-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/rlc/util/WakeLockUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v2, "PCWCLIENTTRACE_WakeLockUtil"

    const-string/jumbo v4, "[WAKELOCK] pcw wakelock set null"

    invoke-static {v2, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_57} :catch_58
    .catchall {:try_start_45 .. :try_end_57} :catchall_5d

    goto :goto_43

    :catch_58
    move-exception v1

    :try_start_59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_43

    :catchall_5d
    move-exception v2

    monitor-exit v3

    throw v2
.end method
