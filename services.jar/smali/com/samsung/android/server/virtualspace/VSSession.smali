.class public Lcom/samsung/android/server/virtualspace/VSSession;
.super Lcom/samsung/android/virtualspace/IVSSession$Stub;
.source "VSSession.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private mClientToken:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIMEDisplayId:I

.field private mIMETargetDisplayId:I

.field private mKeyboardMode:I

.field private final mMainDisplayInfo:Landroid/view/DisplayInfo;

.field private final mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

.field private mMouseCursorVisibility:Z

.field private final mRealMainDisplayInfo:Landroid/view/DisplayInfo;

.field private mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private mRedirectingScreenDisplayId:I

.field private final mRedirects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreensMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/server/virtualspace/VSScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSManagerService;Landroid/os/IBinder;)V
    .registers 9

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRealMainDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    iput v5, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    iput v5, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    iput v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    iput-boolean v5, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMouseCursorVisibility:Z

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActivityToken:Landroid/os/IBinder;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "VSSessionHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/samsung/android/server/virtualspace/VSSession$1;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/virtualspace/VSSession$1;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    :try_start_59
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    invoke-interface {v2, p2}, Lcom/android/server/am/IActivityManagerServiceBridge;->getApplicationToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_6f} :catch_96

    :cond_6f
    :goto_6f
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getServiceHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_89
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSWM:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRealMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-interface {v2, v5, v3}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    return-void

    :catch_96
    move-exception v1

    goto :goto_6f
.end method

.method private closeScreens()V
    .registers 5

    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/server/virtualspace/VSScreen;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_19
    if-ge v2, v3, :cond_23

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_23
    return-void
.end method

.method private closeTask()V
    .registers 3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->closeScreens()V

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->removeAllRedirects()V

    const-string/jumbo v0, "debug.vs.non.redirect.display"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->sessionClosed()V

    return-void
.end method

.method private createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;
    .registers 11

    new-instance v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/virtualspace/VSScreen;-><init>(Lcom/samsung/android/server/virtualspace/VSSession;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->isValid()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    return-object v1

    :cond_12
    return-object v0
.end method

.method private getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeAllRedirects()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    goto :goto_3

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_15
    monitor-exit v1

    return-void
.end method

.method private removeMapping(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    monitor-enter v2

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_3

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_14
    monitor-exit v2

    return-void
.end method

.method private removeRedirects(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v2

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_3

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_14
    monitor-exit v2

    return-void
.end method


# virtual methods
.method addScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method assertRunOnHandlerThread()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Must run on VS handler thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_11
    return-void
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_38

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "VSSession: close()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mClientToken:Landroid/os/IBinder;
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createScreen(IIII)Lcom/samsung/android/virtualspace/IVSScreen;
    .registers 10

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "VSSession: createScreen(%d, %d, %d, %x)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/virtualspace/VSSession;->createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    return-object v0
.end method

.method public createScreenDefault(I)Lcom/samsung/android/virtualspace/IVSScreen;
    .registers 5

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: createScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMainDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->createScreenInternal(IIII)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v2, :cond_6

    return v3

    :cond_6
    sget-boolean v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string/jumbo v2, "VSManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VSSession: dispatchKeyEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_28
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/virtualspace/VSManagerService;->mIm:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/input/InputManagerService;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_35

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v2, "screens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/server/virtualspace/VSScreen;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_18
    if-ge v2, v3, :cond_22

    aget-object v0, v1, v2

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    return-void
.end method

.method getClientActivity()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getClientDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->getClientDisplayId()I

    move-result v0

    return v0
.end method

.method public getDisplayForWindow(I)I
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    :cond_13
    if-ltz v0, :cond_25

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/virtualspace/VSScreen;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_27

    move-result v2

    monitor-exit v3

    return v2

    :cond_25
    monitor-exit v3

    return v5

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getIMEDisplayId(I)I
    .registers 4

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    return v0
.end method

.method getManager()Lcom/samsung/android/server/virtualspace/VSManagerService;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    return-object v0
.end method

.method getMouseCursorVisibility()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMouseCursorVisibility:Z

    return v0
.end method

.method public getPriority(I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->getPriority()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method getRealMainDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRealMainDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_11013()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->sessionClosing()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_11063()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->closeTask()V

    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_13373(IIIII)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/server/virtualspace/VSScreen;->onBoundsUpdated(IIII)V

    :cond_9
    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_13741(II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onTopTaskUpdated(I)V

    :cond_9
    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_14118(II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/virtualspace/VSScreen;->onAppOrientationUpdated(I)V

    :cond_9
    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_14861(I)V
    .registers 4

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    if-eq v1, p1, :cond_1c

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    invoke-direct {p0, v1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->onIMETargetChanged(Z)V

    :cond_10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->onIMETargetChanged(Z)V

    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMETargetDisplayId:I

    :cond_1c
    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_16054(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayChanged()V

    :cond_9
    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_16392(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->getScreen(I)Lcom/samsung/android/server/virtualspace/VSScreen;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->onDisplayRemoved()V

    :cond_9
    return-void
.end method

.method synthetic lambda$-com_samsung_android_server_virtualspace_VSSession_3048()V
    .registers 3

    const-string/jumbo v0, "VSManagerService"

    const-string/jumbo v1, "VSSession: The client application died! Closing down the VS session..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->close()V

    return-void
.end method

.method public onAppOrientationUpdated(II)V
    .registers 4

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$6;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: onDisplayAdded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public onDisplayBoundsUpdated(ILandroid/graphics/Rect;)V
    .registers 10

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->notifyNonEmptyDisplay(I)V

    :cond_b
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;

    move v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$8;-><init>(IIIIILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: onDisplayChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$3;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: onDisplayRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$4;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShowVirtualKeyboard(I)Z
    .registers 4

    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$5;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onTopTaskUpdated(II)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: onTopTaskUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    new-instance v0, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$7;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$wYXLyHX4JNQqB1O6YCPeZbQDJx0$7;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->runTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method redirectIME(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v1

    if-eqz p2, :cond_18

    move v0, v1

    :cond_a
    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-eq v2, v0, :cond_17

    iget-object v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/server/virtualspace/VSManagerService;->redirectIME(II)V

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    :cond_17
    return-void

    :cond_18
    if-nez p2, :cond_a

    iget v2, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-eqz v2, :cond_a

    return-void
.end method

.method redirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: redirectMainDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-ne p1, v0, :cond_35

    return-void

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/virtualspace/VSSession;->unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    if-eqz p1, :cond_63

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/server/virtualspace/VSManagerService;->startRedirect(Landroid/os/IBinder;Z)Z

    move-result v0

    if-nez v0, :cond_47

    return-void

    :cond_47
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->setRedirectingDisplay(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->swapMainDisplayWith(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->setDisplayId(I)V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    :cond_63
    return-void
.end method

.method redirectSystemWindows(ILcom/samsung/android/server/virtualspace/VSScreen;Z)V
    .registers 9

    sget-boolean v3, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_7
    const/16 v3, 0x7db

    if-ne p1, v3, :cond_f

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectIME(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V

    return-void

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_12
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2d

    const/4 v2, 0x1

    :goto_1b
    if-eqz v2, :cond_2f

    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_44

    :goto_25
    if-eqz p3, :cond_38

    if-eqz v2, :cond_31

    if-ne v0, p2, :cond_31

    monitor-exit v4

    return-void

    :cond_2d
    const/4 v2, 0x0

    goto :goto_1b

    :cond_2f
    const/4 v0, 0x0

    goto :goto_25

    :cond_31
    :try_start_31
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_44

    :goto_36
    monitor-exit v4

    return-void

    :cond_38
    if-eqz v2, :cond_3c

    if-eq v0, p2, :cond_3e

    :cond_3c
    monitor-exit v4

    return-void

    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirects:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_44

    goto :goto_36

    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method removeScreen(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/server/virtualspace/VSScreen;->getDisplayId()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mIMEDisplayId:I

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/virtualspace/VSSession;->redirectIME(Lcom/samsung/android/server/virtualspace/VSScreen;Z)V

    :cond_18
    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->removeRedirects(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/server/virtualspace/VSSession;->removeMapping(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method runTask(Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mValid:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandlerThread:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_12
    return-void

    :cond_13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_12
.end method

.method public setMouseCursorVisibility(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: setMouseCursorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iput-boolean p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mMouseCursorVisibility:Z

    return-void
.end method

.method setScreen(ILcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/samsung/android/server/virtualspace/VSSession;->removeMapping(Lcom/samsung/android/server/virtualspace/VSScreen;)V

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mScreensMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVirtualKeyboardMode(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: setVirtualKeyboardMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iput p1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mKeyboardMode:I

    return-void
.end method

.method unredirectMainDisplay(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 6

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/server/virtualspace/VSSession;->assertRunOnHandlerThread()V

    :cond_8
    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string/jumbo v0, "VSManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSSession: unredirectMainDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    if-ne p1, v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->setDisplayId(I)V

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/virtualspace/VSManagerService;->swapMainDisplayWith(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mManager:Lcom/samsung/android/server/virtualspace/VSManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->mSAM:Lcom/android/server/am/IActivityManagerServiceBridge;

    iget v1, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreenDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/am/IActivityManagerServiceBridge;->setRedirectingDisplay(I)V

    iput-object v3, p0, Lcom/samsung/android/server/virtualspace/VSSession;->mRedirectingScreen:Lcom/samsung/android/server/virtualspace/VSScreen;

    :cond_4a
    return-void
.end method
