.class public final Lcom/android/systemui/recents/misc/ForegroundThread;
.super Landroid/os/HandlerThread;
.source "ForegroundThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;


# direct methods
.method private constructor <init>()V
    .registers 2

    const-string/jumbo v0, "recents.fg"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 2

    sget-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ForegroundThread;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    sget-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ForegroundThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ForegroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sHandler:Landroid/os/Handler;

    :cond_1d
    return-void
.end method

.method public static get()Lcom/android/systemui/recents/misc/ForegroundThread;
    .registers 2

    const-class v1, Lcom/android/systemui/recents/misc/ForegroundThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sInstance:Lcom/android/systemui/recents/misc/ForegroundThread;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    const-class v1, Lcom/android/systemui/recents/misc/ForegroundThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/systemui/recents/misc/ForegroundThread;->sHandler:Landroid/os/Handler;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
