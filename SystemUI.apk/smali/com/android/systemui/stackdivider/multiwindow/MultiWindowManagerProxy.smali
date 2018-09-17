.class public Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
.super Ljava/lang/Object;
.source "MultiWindowManagerProxy.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby/PluginMultiWindow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mSnapCaller:Ljava/lang/String;

.field private mSnapTarget:I

.field private mSnapViewCropRect:Landroid/graphics/Rect;

.field private mStartSnapMode:Z

.field private final mStartSnapModeRunnable:Ljava/lang/Runnable;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapTarget:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
    .registers 1

    sget-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public addAppPairOnHomeScreen()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->addAppPairOnHomeScreen()I

    const/4 v0, 0x0

    return v0
.end method

.method public addAppPairShortcut()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->addAppPairShortcut()V

    return-void
.end method

.method public animatingDockedStackForResizableHome(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->animatingDockedStackForResizableHome(Z)V

    return-void
.end method

.method public canAnimateExpandDockedStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->canAnimateExpandDockedStack()Z

    move-result v0

    return v0
.end method

.method public closeTask(I)V
    .registers 5

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_1c

    :pswitch_4
    const-string/jumbo v0, "MultiWindowManagerProxy"

    const-string/jumbo v1, "closeTask() failure. reason: invalid stackId"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V

    goto :goto_d

    :pswitch_15
    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V

    goto :goto_d

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method public enterFreeformTask(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveTopTaskToFreeformStack(I)V

    return-void
.end method

.method public exitDockedMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->exitDockedMode()Z

    move-result v0

    return v0
.end method

.method public getFocusedStackId()I
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getPackageNameOfDockedStack()Landroid/app/ActivityManager$StackInfo;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public getPluginDividerPanel(Landroid/content/Context;)Lcom/samsung/systemui/splugins/bixby/PluginDividerPanel;
    .registers 4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/bixby/PluginDividerPanel;

    return-object v1
.end method

.method public getPluginSystemServiceProxy()Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
    .registers 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    return-object v0
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetStackRect(ILandroid/graphics/Rect;)V
    .registers 5

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method public isDexModeSupport()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isExpandedDockedStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v0

    return v0
.end method

.method public isFreeformSupport()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    return v0
.end method

.method public isMultiWindowEnabled()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    return v0
.end method

.method public isMultiWindowSupport()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPairAppSupportLauncher()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isPairAppSupportLauncher()Z

    move-result v0

    return v0
.end method

.method public isSnapTargetHideStatusbar()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowRunning()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowSupport()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    return v0
.end method

.method public maximizeTopTask()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->maximizeTopTask()Z

    move-result v0

    return v0
.end method

.method public minimizeAllFreeformTasks(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeformTasks(I)Z

    move-result v0

    return v0
.end method

.method public minimizeSearchedTask(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeSearchedTask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public minimizeTopTask()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTopTask()Z

    move-result v0

    return v0
.end method

.method public moveDockedTasksToFullscreenStack(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V

    return-void
.end method

.method public moveTopTaskToFreeformStack(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveTopTaskToFreeformStack(I)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    return-void
.end method

.method public removeFocusedTask()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask()Z

    move-result v0

    return v0
.end method

.method public removeFreeformTasks(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFreeformTasks(I)Z

    move-result v0

    return v0
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFreeform()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startFreeform()I

    move-result v0

    return v0
.end method

.method public startSnapMode(ZZILandroid/graphics/Rect;Ljava/lang/String;)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_15

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapMode:Z

    iput-object p4, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapViewCropRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapTarget:I

    iput-object p5, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mSnapCaller:Ljava/lang/String;

    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mStartSnapModeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public swapTasks()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->swapDockedAndFullscreenStack()V

    return-void
.end method
