.class public Lcom/android/server/am/MultiWindowManagerService;
.super Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$H;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I = null

.field private static final DEBUG:Z

.field private static final EXTRA_DOCKED_APP_LABEL:Ljava/lang/String; = "dockedAppLabel"

.field private static final EXTRA_FULL_APP_LABEL:Ljava/lang/String; = "fullAppLabel"

.field private static final MIN_ASPECT:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static final TAG_BIXBY:Ljava/lang/String; = "MultiWindowManager_Bixby"

.field private static sService:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowCallback;",
            ">;"
        }
    .end annotation
.end field

.field mCanAnimateExpandDockedStack:Z

.field private mDefaultDisplayRotation:I

.field private mDeferredDetachDockStack:Z

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

.field private final mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

.field private final mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

.field private final mFreeformController:Lcom/android/server/am/FreeformStackController;

.field final mH:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mLastGlobalDensity:I

.field private mLaunchingPairActivities:Z

.field private mMaxMultiInstanceCnt:I

.field private mMovingAllTasksToFreeform:Z

.field private final mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPairedRecentTasksController:Lcom/android/server/am/PairedRecentTasksController;

.field private final mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

.field private final mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mSystemResources:Landroid/content/res/Resources;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ScreenFreezeAnimationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method private static synthetic -getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/server/am/ActivityStack$ActivityState;->values()[Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_74

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_72

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_70

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_6e

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_6c

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_6a

    :goto_44
    :try_start_44
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_68

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_66

    :goto_57
    :try_start_57
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_64

    :goto_61
    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :catch_64
    move-exception v1

    goto :goto_61

    :catch_66
    move-exception v1

    goto :goto_57

    :catch_68
    move-exception v1

    goto :goto_4e

    :catch_6a
    move-exception v1

    goto :goto_44

    :catch_6c
    move-exception v1

    goto :goto_3b

    :catch_6e
    move-exception v1

    goto :goto_32

    :catch_70
    move-exception v1

    goto :goto_29

    :catch_72
    move-exception v1

    goto :goto_20

    :catch_74
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->sService:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCanAnimateExpandDockedStack:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingAllTasksToFreeform:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_48

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->sService:Lcom/android/server/am/MultiWindowManagerService;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V

    new-instance v0, Lcom/android/server/am/MultiWindowFeaturesController;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/am/MultiWindowFeaturesController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

    new-instance v0, Lcom/android/server/am/MultiWindowEnableController;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowEnableController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowFeaturesController;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->installSystemProviders()V

    new-instance v0, Lcom/android/server/am/FreeformStackController;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/FreeformStackController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    new-instance v0, Lcom/android/server/am/EnsureDockedViewManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/EnsureDockedViewManager;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    new-instance v0, Lcom/android/server/am/ScreenFreezeAnimationManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/ScreenFreezeAnimationManager;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

    new-instance v0, Lcom/android/server/am/SnapWindowManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/SnapWindowManager;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    new-instance v0, Lcom/android/server/am/PairedRecentTasksController;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/PairedRecentTasksController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mPairedRecentTasksController:Lcom/android/server/am/PairedRecentTasksController;

    return-void
.end method

.method private collectFullscreenFreeformTasksLocked(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v2, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v4, :cond_14

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_14

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_30
    return-void
.end method

.method private detachDockStackIfNeededLocked()V
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    :cond_1f
    return-void
.end method

.method private findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v3, 0x0

    return-object v3

    :cond_9
    add-int/lit8 v0, v1, -0x1

    :goto_b
    if-ltz v0, :cond_1e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    return-object v2

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1e
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    return-object v3
.end method

.method private final getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v2, "MultiWindowManager"

    const-string/jumbo v3, "getLabelForTask, Task is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2a

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method private final getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v6, "MultiWindowManager"

    const-string/jumbo v7, "getLaunchActivityForTask, Task is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_d
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v2, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :cond_1a
    if-nez v2, :cond_37

    const-string/jumbo v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLaunchActivityForTask, can\'t get ComponentName from Task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_37
    const/4 v5, 0x0

    :try_start_38
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/TaskRecord;->userId:I

    const/4 v8, 0x0

    invoke-interface {v6, v2, v8, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_6b

    const-string/jumbo v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLaunchActivityForTask, can\'t get ActivityInfo from ComponentName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_6b
    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_73

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v6, :cond_90

    :cond_73
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchIntentForPackageAsUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_a3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_a3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    :goto_8b
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_90
    const-string/jumbo v6, "android.intent.action.MAIN"

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_73

    move-object v5, v2

    goto :goto_8b

    :cond_a3
    const-string/jumbo v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLaunchActivityForTask, can\'t find Acitivty by getLaunchIntentForPackage Task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_bd} :catch_be

    return-object v9

    :catch_be
    move-exception v3

    const-string/jumbo v6, "MultiWindowManager"

    const-string/jumbo v7, "getLaunchActivityForTask, RemoteException occured"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method private getLaunchIntentForPackageAsUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 14

    const/4 v9, 0x0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.INFO"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v2, v7, v8, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_28

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_45

    :cond_28
    const-string/jumbo v6, "android.intent.category.INFO"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v6, v2, v7, v8, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    :cond_45
    if-eqz v5, :cond_4d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_4e

    :cond_4d
    return-object v9

    :cond_4e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v6, :cond_52

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a7} :catch_a8

    return-object v1

    :catch_a8
    move-exception v0

    return-object v9
.end method

.method public static getService()Lcom/android/server/am/MultiWindowManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->sService:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_b

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private installSystemProviders()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowEnableController;->init(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowFeaturesController;->init()V

    return-void
.end method

.method private isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_34

    :cond_14
    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isExcludedTaskOrNonRecentTask(), Task ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v0, 0x1

    return v0

    :cond_34
    return v2
.end method

.method private final isLaunchableForAppPair(Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_30

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2b} :catch_31

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    return v4

    :cond_30
    return v6

    :catch_31
    move-exception v0

    const-string/jumbo v4, "MultiWindowManager"

    const-string/jumbo v5, "isLaunchableForAppPair, RemoteException occured"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private final isLaunchedFromOtherWorkspace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 9

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v0, :cond_14

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_20

    :cond_14
    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v0, :cond_2f

    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_20
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v5, 0xd3

    invoke-virtual {v4, v5}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v4, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x4

    return v4

    :cond_2f
    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v0, :cond_3d

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4b

    :cond_3d
    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v0, :cond_7a

    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7a

    :cond_4b
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v5, 0xd4

    invoke-virtual {v4, v5}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v0, :cond_77

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    :goto_59
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v4, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x5

    return v4

    :cond_77
    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    goto :goto_59

    :cond_7a
    const/4 v4, 0x0

    return v4
.end method

.method private isStartableInDesktopMode(Lcom/android/server/am/TaskRecord;)Z
    .registers 6

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_24
    const/4 v2, 0x1

    return v2
.end method

.method private loadResources()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v1}, Lcom/android/server/am/FreeformStackController;->loadResources()V

    return-void
.end method

.method private logAddAppPairShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_2d

    :cond_7
    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendGCIMLogForAppPairShortcut() param is null. dockedActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fullActiviy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "SPAC"

    aput-object v2, v1, v4

    const-string/jumbo v2, "APSC"

    aput-object v2, v1, v5

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v2, "AddPair"

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private moveActivityTaskToBackLocked(IZ)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    return v3

    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "FFAC"

    const-string/jumbo v3, "Minimize"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return v0

    :cond_3b
    return v3
.end method

.method private moveFreeformStackToBottomLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5

    if-eqz p1, :cond_22

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_22
    return-void
.end method

.method private moveTaskToFreeformStackOrRelayoutLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 21

    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateDexCompatLaunchPolicy(Landroid/content/pm/ActivityInfo;)V

    :cond_1c
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mDexCompatLaunchPolicy:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_54

    if-eqz v17, :cond_44

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_44

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v1, :cond_44

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-gtz v1, :cond_42

    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_77

    :cond_42
    const/16 v16, 0x1

    :cond_44
    :goto_44
    if-nez v16, :cond_54

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultWidth()I

    move-result v1

    if-lez v1, :cond_88

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultHeight()I

    move-result v1

    if-lez v1, :cond_88

    const/16 v16, 0x1

    :cond_54
    :goto_54
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v6, 0x2

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_42

    iget v1, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_42

    const/16 v16, 0x0

    goto :goto_44

    :cond_88
    const/16 v16, 0x0

    goto :goto_54

    :cond_8b
    const/4 v4, 0x0

    if-eqz v16, :cond_b6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    if-eqz v15, :cond_b6

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v1

    if-eqz v1, :cond_b6

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v1

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/LaunchingTaskPositioner;->getDefaultTaskBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Z)V

    :cond_b6
    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v8, 0x0

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_fd

    const-string/jumbo v1, "MultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToFreeformStackOrRelayoutLocked: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "MultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToFreeformStackOrRelayoutLocked: overrideConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    const-string/jumbo v13, "Desktop mode"

    const/4 v7, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;Z)Z

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_76

    const-string/jumbo v1, "MultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToFreeformStackOrRelayoutLocked: updated overrideConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76
.end method

.method private notifyMultiWindowEnableChangeLocked(Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_8
    const/16 v4, 0xcb

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_12
    move v0, v1

    goto :goto_8
.end method

.method private removeAllExcludedTaskInRecentTasksLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_56

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2f

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_2f

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_2f
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v3, :cond_4d

    const-string/jumbo v3, "MultiWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeAllExcludedTaskInRecentTasksLocked(), Task ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z

    goto :goto_2c

    :cond_56
    return-void
.end method

.method private retrieveMultiWindowSettings()V
    .registers 10

    const/4 v5, 0x1

    const/4 v8, 0x0

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string/jumbo v6, "MultiWindowManager"

    const-string/jumbo v7, "retrieveMultiWindowSettings()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.freeform_window_management"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_83

    const-string/jumbo v6, "enable_freeform_support"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_85

    const/4 v1, 0x1

    :goto_32
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v6, "force_resizable_activities"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_87

    const/4 v0, 0x1

    :goto_53
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v0, v6, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    if-nez v3, :cond_6c

    if-eqz v0, :cond_8d

    :cond_6c
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_89

    move v6, v0

    :goto_76
    iput-boolean v6, v8, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-nez v4, :cond_8b

    :goto_7c
    iput-boolean v0, v6, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_7e
    .catchall {:try_start_56 .. :try_end_7e} :catchall_9d

    :goto_7e
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_83
    const/4 v1, 0x1

    goto :goto_32

    :cond_85
    const/4 v1, 0x0

    goto :goto_32

    :cond_87
    const/4 v0, 0x0

    goto :goto_53

    :cond_89
    move v6, v5

    goto :goto_76

    :cond_8b
    move v0, v5

    goto :goto_7c

    :cond_8d
    :try_start_8d
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_9d

    goto :goto_7e

    :catchall_9d
    move-exception v5

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method private rotateBounds(Landroid/graphics/Rect;)V
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private varargs rotateBounds(Landroid/graphics/Rect;[Landroid/graphics/Rect;)Z
    .registers 10

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return v4

    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16

    :cond_15
    return v4

    :cond_16
    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDefaultDisplayRotation:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3f

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->y:I

    :goto_24
    if-le v2, v1, :cond_48

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v5, v1, :cond_48

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v5, v1, :cond_48

    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->rotateBounds(Landroid/graphics/Rect;)V

    array-length v5, p2

    :goto_36
    if-ge v4, v5, :cond_5b

    aget-object v0, p2, v4

    if-nez v0, :cond_57

    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_3f
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    goto :goto_24

    :cond_48
    if-ge v2, v1, :cond_56

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eq v5, v2, :cond_56

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v5, v2, :cond_32

    :cond_56
    return v4

    :cond_57
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->rotateBounds(Landroid/graphics/Rect;)V

    goto :goto_3c

    :cond_5b
    const/4 v4, 0x1

    return v4
.end method

.method private final startPairActivityFromRecentsInnerLocked(Ljava/lang/String;ILandroid/os/Bundle;I)I
    .registers 38

    move/from16 v30, p4

    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_2f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPairActivitiesFromRecentsInnerLocked: pairActivityMode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " should be DOCKED/FULLSCREEN mode."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x2

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v2, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v14

    if-nez v14, :cond_af

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mPairedRecentTasksController:Lcom/android/server/am/PairedRecentTasksController;

    invoke-virtual {v2}, Lcom/android/server/am/PairedRecentTasksController;->getPairedRecentTasks()Lcom/android/server/am/PairedRecentTasks;

    move-result-object v31

    if-eqz v31, :cond_76

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_76

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/PairedRecentTasks;->getFullTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    :cond_51
    :goto_51
    if-nez v14, :cond_82

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPairActivitiesFromRecentsInnerLocked: Task "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " not found."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_76
    if-eqz v31, :cond_51

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_51

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/PairedRecentTasks;->getDockedTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    goto :goto_51

    :cond_82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v17, p1

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    const v2, 0x10204000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget v12, v14, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPairActivity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v15, "startPairActivitiesFromRecents"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move-object/from16 v11, p3

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v29

    if-eqz v29, :cond_13a

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    :goto_bd
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_da

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v2

    move/from16 v0, p4

    if-eq v2, v0, :cond_da

    const-string/jumbo v20, "startPairActivitiesFromRecents"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v15, p4

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    :cond_da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v4, v14, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v2

    if-nez v2, :cond_13e

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_13e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v4, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v6, v0, v7}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v10, :cond_13c

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v9

    :goto_130
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    const/4 v8, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    const/4 v2, 0x2

    return v2

    :cond_13a
    const/4 v10, 0x0

    goto :goto_bd

    :cond_13c
    const/4 v9, -0x1

    goto :goto_130

    :cond_13e
    iget v3, v14, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v5, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x100000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget v12, v14, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPairActivity(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v28, "startPairActivitiesFromRecents"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v24, p3

    move/from16 v25, v12

    move-object/from16 v27, v14

    invoke-virtual/range {v15 .. v28}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v32

    return v32
.end method


# virtual methods
.method public addAppPairOnHomeScreen()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->addAppPairShortcut()I

    move-result v0

    return v0
.end method

.method public final addAppPairShortcut()I
    .registers 15

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-nez v3, :cond_5f

    :cond_1e
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addAppPairShortcut: Can\'t find AppPair Stack/Task. dockedStack="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " fullStack="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " dockedTask="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " fullTask="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_5f
    if-eqz v5, :cond_1e

    :try_start_61
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-direct {p0, v3, v6}, Lcom/android/server/am/MultiWindowManagerService;->isLaunchedFromOtherWorkspace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_59

    move-result v9

    if-eqz v9, :cond_72

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_72
    :try_start_72
    invoke-direct {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_7e

    if-nez v4, :cond_f5

    :cond_7e
    const-string/jumbo v10, "MultiWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addAppPairShortcut: Can\'t find AppPair Activity. dockedActiviy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " fullActiviy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_d5

    if-nez v4, :cond_d5

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v12, 0xd2

    invoke-virtual {v10, v12}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "dockedAppLabel"

    invoke-direct {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "fullAppLabel"

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_cf
    .catchall {:try_start_72 .. :try_end_cf} :catchall_59

    const/4 v10, 0x2

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_d5
    :try_start_d5
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v12, 0xd1

    invoke-virtual {v10, v12}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    if-nez v1, :cond_f0

    invoke-direct {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v10

    :goto_e3
    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v10, v8}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_ea
    .catchall {:try_start_d5 .. :try_end_ea} :catchall_59

    const/4 v10, 0x1

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_f0
    :try_start_f0
    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v10

    goto :goto_e3

    :cond_f5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x11000000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "component_first"

    invoke-virtual {v7, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "component_second"

    invoke-virtual {v7, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "userId_first"

    iget v12, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "userId_second"

    iget v12, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v13, "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {v10, v7, v12, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v10, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v10, :cond_156

    const-string/jumbo v10, "MultiWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addAppPairShortcut() dockedActiviy= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " fullActiviy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_156
    invoke-direct {p0, v1, v4}, Lcom/android/server/am/MultiWindowManagerService;->logAddAppPairShortcut(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_159
    .catchall {:try_start_f0 .. :try_end_159} :catchall_59

    const/4 v10, 0x0

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10
.end method

.method adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v8, 0x4

    const v7, 0x3f99999a    # 1.2f

    if-eqz p2, :cond_8

    if-nez p1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v5, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v5}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-boolean v5, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-nez v5, :cond_8

    :cond_1f
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_a0

    const/4 v1, 0x1

    :goto_2a
    iget v5, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a2

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_a2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    cmpg-float v5, v4, v7

    if-gez v5, :cond_9f

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v2

    const-string/jumbo v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adjustAspectRatioIfNeeded: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " adjusted(bottom)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_9f
    :goto_9f
    return-void

    :cond_a0
    const/4 v1, 0x0

    goto :goto_2a

    :cond_a2
    iget v5, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9f

    if-eqz v1, :cond_9f

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    cmpg-float v5, v4, v7

    if-gez v5, :cond_9f

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int v0, v5, v3

    const-string/jumbo v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adjustAspectRatioIfNeeded: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " adjusted(right)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_9f
.end method

.method public animatingDockedStackForResizableHome(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->animatingDockedStackForResizableHome(Z)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public canAnimateExpandDockedStack()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCanAnimateExpandDockedStack:Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_19

    if-eqz v0, :cond_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCanAnimateExpandDockedStack:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_19

    const/4 v0, 0x0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method checkRunningFreeformWithLoggingLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 25

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v21

    if-nez v21, :cond_9

    :cond_8
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    if-eqz v7, :cond_1a3

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a3

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v12

    if-nez v12, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->getStacksOnDefaultDisplay()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformStackController;->getIndexOfFreeformStackLocked(Ljava/util/ArrayList;)I

    move-result v6

    if-lez v6, :cond_11f

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityStack;

    :goto_72
    move-object/from16 v0, v16

    if-ne v10, v0, :cond_7a

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_9c

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9c

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    :cond_9c
    if-eqz v9, :cond_123

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_ae
    if-eqz v2, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_134

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d0
    :goto_d0
    const/16 v20, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v11, v21, -0x1

    :goto_d9
    if-ltz v11, :cond_14f

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    move/from16 v21, v0

    if-nez v21, :cond_10a

    const/4 v14, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_144

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    :cond_fc
    :goto_fc
    if-eqz v14, :cond_10a

    add-int/lit8 v20, v20, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11a

    if-eqz v12, :cond_11c

    :cond_11a
    add-int/lit8 v15, v15, 0x1

    :cond_11c
    add-int/lit8 v11, v11, -0x1

    goto :goto_d9

    :cond_11f
    const/16 v16, 0x0

    goto/16 :goto_72

    :cond_123
    const-string/jumbo v21, "null"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ae

    :cond_134
    const-string/jumbo v21, "null"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "|"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d0

    :cond_144
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    if-eqz v18, :cond_fc

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_fc

    :cond_14f
    if-lez v15, :cond_1a3

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v5, v0, [Ljava/lang/String;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " | "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v4, v22

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v4, v22

    if-eqz v12, :cond_1a4

    const-string/jumbo v21, "DFCO"

    const/16 v22, 0x0

    aput-object v21, v5, v22

    const-string/jumbo v21, "DFPA"

    const/16 v22, 0x1

    aput-object v21, v5, v22

    const-string/jumbo v21, "com.samsung.android.desktopmode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1a3
    :goto_1a3
    return-void

    :cond_1a4
    const-string/jumbo v21, "FFCO"

    const/16 v22, 0x0

    aput-object v21, v5, v22

    const-string/jumbo v21, "FFPA"

    const/16 v22, 0x1

    aput-object v21, v5, v22

    const-string/jumbo v21, "com.samsung.android.multiwindow"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1a3
.end method

.method public deferDetachDockStackLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachDockStack:Z

    return-void
.end method

.method doNotAnimateExpandDockedStack()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCanAnimateExpandDockedStack:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->doNotAnimateExpandDockedStack()V

    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Z)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p2, :cond_b

    const-string/jumbo v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    const-string/jumbo v0, "MULTI WINDOW MANAGER SERVICE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "    MultiWindowEnabled"

    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreeformStackController;->dumpLocked(Ljava/io/PrintWriter;Z)V

    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowEnableController;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_36
    const-string/jumbo v0, "    MultiWindowDisabled"

    goto :goto_21
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/EnsureDockedViewManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    :cond_9
    return-void
.end method

.method public exitDockedMode()Z
    .registers 8

    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v5, "exitDockedMode"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_14
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_3e

    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v5, "exitDockedMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_38

    const/4 v2, 0x1

    :try_start_30
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_3e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_37
    return v2

    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v7, "exitMultiWindow"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    :goto_21
    if-eqz v2, :cond_25

    if-nez v4, :cond_46

    :cond_25
    const-string/jumbo v5, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exitMultiWindow: cannot find task, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_dc

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_44
    const/4 v4, 0x0

    goto :goto_21

    :cond_46
    :try_start_46
    iget-boolean v5, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v5

    if-eqz v5, :cond_af

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v5

    if-eqz v5, :cond_af

    const-string/jumbo v5, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exitMultiWindow: fullscreen to freeform, r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    packed-switch v3, :pswitch_data_ee

    const-string/jumbo v5, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exitMultiWindow: invalid stackId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_46 .. :try_end_a5} :catchall_d7

    :goto_a5
    :try_start_a5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v5, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_dc

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_af
    :try_start_af
    const-string/jumbo v5, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exitMultiWindow: it is already fullscreen, r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_af .. :try_end_c9} :catchall_d7

    :try_start_c9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_dc

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :pswitch_d1
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_d3
    invoke-virtual {p0, v5, v7}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_d7

    goto :goto_a5

    :catchall_d7
    move-exception v5

    :try_start_d8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_dc

    :catchall_dc
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :pswitch_e2
    const/4 v5, 0x1

    const/4 v7, 0x0

    :try_start_e4
    invoke-virtual {p0, v5, v7}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V

    goto :goto_a5

    :pswitch_e8
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V
    :try_end_ed
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_d7

    goto :goto_a5

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_e8
        :pswitch_e2
    .end packed-switch
.end method

.method finishBooting()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformStackController;->registerBroadcastReceiver()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishBooting: mLastGlobalDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    return-void
.end method

.method getBaseDisplaySize()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getDexInfo(Landroid/os/IBinder;I)I
    .registers 10

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "getDexInfo"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_d
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_56

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_45

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2e

    iget-boolean v5, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v5, v1}, Lcom/android/server/am/FreeformStackController;->canMaximizeLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_3c

    or-int/lit8 v0, v0, 0x2

    :cond_3c
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_45

    iget v5, v4, Lcom/android/server/am/TaskRecord;->mResizeMode:I
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_50

    packed-switch v5, :pswitch_data_5c

    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_56

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :pswitch_4d
    or-int/lit8 v0, v0, 0x4

    goto :goto_45

    :catchall_50
    move-exception v5

    :try_start_51
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    nop

    :pswitch_data_5c
    .packed-switch 0x5
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method getFreeformStackController()Lcom/android/server/am/FreeformStackController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    return-object v0
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v6, "getFreeformTasks()"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_38

    move-result-wide v2

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v4, v6, p1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_33

    :cond_2b
    :try_start_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_33
    move-exception v4

    :try_start_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public getMaxMultiInstanceCnt()I
    .registers 3

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    goto :goto_6
.end method

.method public getMultiInstanceCntLocked(Lcom/android/server/am/ActivityRecord;)I
    .registers 24

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_d

    :cond_a
    const/16 v19, 0x0

    return v19

    :cond_d
    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_31

    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    if-eqz v6, :cond_96

    const/16 v19, 0x1

    :goto_43
    invoke-virtual {v6}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    and-int v7, v19, v20

    if-eqz v7, :cond_99

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    :goto_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5d
    :goto_5d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2f7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v19

    if-nez v19, :cond_75

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isRecentsStack()Z

    move-result v19

    if-eqz v19, :cond_9b

    :cond_75
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_5d

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skipping stack: (home/recents activity) "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    :cond_96
    const/16 v19, 0x0

    goto :goto_43

    :cond_99
    const/4 v4, 0x0

    goto :goto_4f

    :cond_9b
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_ca

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Looking for task of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v17, v19, -0x1

    :goto_d4
    if-ltz v17, :cond_5d

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v19, v0

    if-eqz v19, :cond_114

    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_111

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skipping "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": voice session"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    :goto_111
    add-int/lit8 v17, v17, -0x1

    goto :goto_d4

    :cond_114
    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_146

    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_111

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skipping "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": different user"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    :cond_146
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_15c

    iget-boolean v0, v9, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-nez v19, :cond_15c

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_18a

    :cond_15c
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_111

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skipping "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": mismatch root "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    :cond_18a
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15c

    iget v0, v9, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1cf

    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_111

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Skipping "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": mismatch activity type"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_111

    :cond_1cf
    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v2, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_20e

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_20e

    const/16 v16, 0x1

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    :goto_1e1
    if-nez v7, :cond_221

    xor-int/lit8 v19, v16, 0x1

    if-eqz v19, :cond_221

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_221

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_111

    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_20a

    const-string/jumbo v19, "MultiWindowManager"

    const-string/jumbo v20, "Found matching affinity candidate!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_111

    :cond_20e
    if-eqz v2, :cond_21d

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_21d

    const/16 v16, 0x1

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    goto :goto_1e1

    :cond_21d
    const/16 v16, 0x0

    const/4 v14, 0x0

    goto :goto_1e1

    :cond_221
    if-eqz v15, :cond_27b

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_27b

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27b

    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27b

    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_248

    const-string/jumbo v19, "MultiWindowManager"

    const-string/jumbo v20, "Found matching class!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_248
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_277

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "For Intent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " bringing to top: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_277
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_111

    :cond_27b
    if-eqz v2, :cond_2d5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_2d5

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d5

    invoke-static {v4, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d5

    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_2a2

    const-string/jumbo v19, "MultiWindowManager"

    const-string/jumbo v20, "Found matching class!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a2
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_2d1

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "For Intent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " bringing to top: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_111

    :cond_2d5
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_111

    const-string/jumbo v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Not a match: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_111

    :cond_2f7
    sget-boolean v19, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v19, :cond_306

    if-nez v8, :cond_306

    const-string/jumbo v19, "MultiWindowManager"

    const-string/jumbo v20, "No Multi-Instances found"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_306
    return v8
.end method

.method getMultiWindowEnableController()Lcom/android/server/am/MultiWindowEnableController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    return-object v0
.end method

.method getMultiWindowFeaturesLocked(I)Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFeaturesController;->getFeaturesLocked(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowModeStates(I)I
    .registers 8

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x4

    :goto_8
    const/4 v4, 0x2

    if-lt v2, v4, :cond_29

    move v0, v2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_2e

    move-result-object v4

    if-eqz v4, :cond_1d

    packed-switch v2, :pswitch_data_34

    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :pswitch_20
    or-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :pswitch_23
    or-int/lit8 v3, v3, 0x2

    goto :goto_1d

    :pswitch_26
    or-int/lit8 v3, v3, 0x4

    goto :goto_1d

    :cond_29
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_2e
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public getPairActivityUserId(Landroid/content/Intent;)I
    .registers 5

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v0

    return v0

    :cond_7
    const-string/jumbo v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getPairActivityUserId] intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method getPairedRecentTasksController()Lcom/android/server/am/PairedRecentTasksController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mPairedRecentTasksController:Lcom/android/server/am/PairedRecentTasksController;

    return-object v0
.end method

.method public getRunningTasksInfo(II)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v9, "getRunningTasksInfo()"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_52

    move-result-wide v2

    :try_start_1a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_45

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5, v6, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    int-to-long v10, p2

    invoke-interface {v7, v10, v11}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v4, v0
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_4d

    :cond_45
    :try_start_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_52

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :catchall_4d
    move-exception v7

    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v7

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7
.end method

.method getScreenFreezeAnimationManager()Lcom/android/server/am/ScreenFreezeAnimationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

    return-object v0
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0}, Lcom/android/server/am/SnapWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapWindowManager()Lcom/android/server/am/SnapWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    return-object v0
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .registers 3

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 8

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    iput-boolean v3, p1, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    :cond_5
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_d
    if-ltz v1, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1b

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_1e
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPairActivity(I)V

    goto :goto_1b

    :cond_29
    return-void
.end method

.method public isAllActivitiesStoppedInStack(I)Z
    .registers 15

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v9, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v10, "isAllActivitiesStoppedInStack"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_80

    :try_start_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v1, "isAllActivitiesStoppedInStack: "

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_43

    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: True, cannot find stack, id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_7a

    :try_start_3b
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_80

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_43
    :try_start_43
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4b
    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_139

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_85

    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: topRunning=null, tid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_43 .. :try_end_79} :catchall_7a

    goto :goto_4b

    :catchall_7a
    move-exception v8

    :try_start_7b
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_80

    :catchall_80
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_85
    :try_start_85
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v8, :cond_a4

    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: stateNotNeeded, r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_a4
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I

    move-result-object v8

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_16a

    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: False, state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_85 .. :try_end_da} :catchall_7a

    :try_start_da
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_80

    const/4 v8, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :pswitch_e3
    :try_start_e3
    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: skip, state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :pswitch_10c
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v8, :cond_4b

    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: stopped=true, haveState=false, will be removed while killProcess, r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", tid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :cond_139
    const-string/jumbo v8, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAllActivitiesStoppedInStack: True, all activities stopped, numTasks="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", stackId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catchall {:try_start_e3 .. :try_end_162} :catchall_7a

    :try_start_162
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_166
    .catchall {:try_start_162 .. :try_end_166} :catchall_80

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_10c
    .end packed-switch
.end method

.method public isDockedPairActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4

    if-eqz p1, :cond_15

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairActivity()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/16 v1, 0xb

    if-ne v0, v1, :cond_15

    :cond_13
    const/4 v1, 0x1

    return v1

    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public isEnsureDockedMode()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    invoke-virtual {v0}, Lcom/android/server/am/EnsureDockedViewManager;->isEnsureDockedMode()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->isExpandedDockedStack()Z

    move-result v0

    return v0
.end method

.method public isFullScreenPairActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 5

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairActivity()I

    move-result v0

    if-eq v0, v2, :cond_13

    const/16 v1, 0xb

    if-ne v0, v1, :cond_14

    :cond_13
    return v2

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_7

    return v4

    :cond_7
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2b

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_f
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiInstanceCountIfNeededLocked()V

    :cond_17
    if-eqz v0, :cond_51

    const-string/jumbo v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v6, :cond_2d

    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v7, :cond_2d

    return v5

    :cond_2b
    const/4 v0, 0x0

    goto :goto_f

    :cond_2d
    const-string/jumbo v2, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v6, :cond_43

    const-string/jumbo v2, "singleTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    :cond_43
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v7, :cond_51

    const-string/jumbo v2, "singleInstance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_50
    return v5

    :cond_51
    return v4
.end method

.method public isLaunchingPairActivitiesLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    return v0
.end method

.method public isMovingAllTasksToFreeformLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingAllTasksToFreeform:Z

    return v0
.end method

.method public isPairActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4

    if-eqz p1, :cond_11

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPairActivity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x1

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public isPairAppSupportLauncher()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string/jumbo v1, "com.sec.android.app.launcher"

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_27

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :cond_21
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x0

    return v1

    :catchall_27
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isRecentsStackAboveHomeStack(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v1, v0, :cond_20

    const/4 v2, 0x1

    :cond_20
    return v2
.end method

.method public isSnapTargetHideStatusbar()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SnapWindowInternal;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowRunning()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0}, Lcom/android/server/am/SnapWindowManager;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_server_am_MultiWindowManagerService_10976()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->moveAllTasksToFullScreenStack()V

    return-void
.end method

.method logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method logSnapWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SNBY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "SNPK"

    aput-object v2, v1, v4

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v5, "SPBY"

    aput-object v5, v2, v7

    const-string/jumbo v5, "SPPA"

    aput-object v5, v2, v8

    new-array v1, v9, [Ljava/lang/String;

    aput-object p1, v1, v7

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    :goto_21
    if-eqz v4, :cond_5b

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_25
    aput-object v5, v1, v8

    if-nez p2, :cond_5f

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    :goto_35
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_4b

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    :goto_55
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_59
    const/4 v4, 0x0

    goto :goto_21

    :cond_5b
    move-object v5, v6

    goto :goto_25

    :cond_5d
    const/4 v4, 0x0

    goto :goto_35

    :cond_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    goto :goto_55
.end method

.method public maximizeTopTask()Z
    .registers 6

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_64

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_59

    move-result-object v1

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_64

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_52

    const-string/jumbo v2, "MultiWindowManager_Bixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maximizeTopTask, taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", topActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :try_start_52
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->exitMultiWindow(Landroid/os/IBinder;)Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_5f

    :goto_57
    const/4 v2, 0x1

    return v2

    :catchall_59
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_57

    :cond_64
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_71

    const-string/jumbo v2, "MultiWindowManager_Bixby"

    const-string/jumbo v3, "maximizeTopTask, unable to maximize app."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    const/4 v2, 0x0

    return v2
.end method

.method public minimizeAllFreeformTasks(IZ)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "minimizeAllFreeformTasks"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_25

    move-result-wide v0

    :try_start_12
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(IZ)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_20

    move-result v2

    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_25

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public minimizeFreeformTask(I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "minimizeFreeformTask"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_25

    move-result-wide v0

    :try_start_12
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/android/server/am/FreeformStackController;->moveTaskToBackLocked(IZ)Z
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_20

    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_25

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public minimizeSearchedTask(Ljava/lang/String;)I
    .registers 14

    const/4 v11, 0x1

    const/4 v9, 0x2

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_ef

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_34

    const-string/jumbo v6, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minimizeSearchedTask, packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_38
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_5c

    :cond_4a
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_57

    const-string/jumbo v6, "MultiWindowManager_Bixby"

    const-string/jumbo v8, "minimizeSearchedTask, a freeform stack is null or doesn\'t have tasks"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_38 .. :try_end_57} :catchall_c9

    :cond_57
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_5c
    :try_start_5c
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_c9

    :try_start_61
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_6b
    if-ltz v3, :cond_ae

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_ab

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v6, :cond_ab

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_a3

    const-string/jumbo v6, "MultiWindowManager_Bixby"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "minimizeSearchedTask, calling moveTaskToBack.. task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/server/am/MultiWindowManagerService;->moveActivityTaskToBackLocked(IZ)Z

    move-result v6

    or-int/2addr v2, v6

    :cond_ab
    add-int/lit8 v3, v3, -0x1

    goto :goto_6b

    :cond_ae
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_b6
    .catchall {:try_start_61 .. :try_end_b6} :catchall_c2

    :try_start_b6
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_c9

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_cf

    return v11

    :catchall_c2
    move-exception v6

    :try_start_c3
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v6
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_cf
    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_ed

    const-string/jumbo v6, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minimizeSearchedTask, Unable to minimize app, packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ed
    const/4 v6, 0x3

    return v6

    :cond_ef
    return v9
.end method

.method public minimizeTopTask()Z
    .registers 11

    const/4 v9, 0x0

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_8f

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1e
    if-ltz v2, :cond_8b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_44

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minimizeTopTask, tr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_88

    iget v5, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v5, :cond_88

    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_79

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minimizeTopTask, taskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", topActivity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->minimizeFreeformTask(I)V
    :try_end_82
    .catchall {:try_start_8 .. :try_end_82} :catchall_9d

    const/4 v5, 0x1

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_88
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_8b
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_8f
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_9c

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    const-string/jumbo v6, "minimizeTopTask, Unable to minimize top task."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return v9

    :catchall_9d
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .registers 9

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "moveActivityTaskToBack"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2b

    move-result-wide v0

    xor-int/lit8 v3, p2, 0x1

    :try_start_14
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/am/FreeformStackController;->moveTaskToBackLocked(IZ)Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_26

    move-result v3

    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2b

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method moveAllTasksToFullScreenStack()V
    .registers 9

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackLocked(I)V

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-ne v0, v6, :cond_2e

    move v3, v1

    :goto_1d
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-ne v0, v7, :cond_30

    :goto_25
    const/4 v2, 0x2

    invoke-virtual {v3, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_32

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2e
    move v3, v2

    goto :goto_1d

    :cond_30
    move v1, v2

    goto :goto_25

    :catchall_32
    move-exception v1

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveAllTasksToStack(I)V
    .registers 18

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: targetStackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " DEBUG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_134

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mMovingAllTasksToFreeform:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    const/4 v10, 0x1

    :goto_51
    const/4 v2, 0x3

    if-gt v10, v2, :cond_10f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-nez v11, :cond_61

    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_51

    :cond_61
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v14

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_83

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    :goto_89
    if-ltz v9, :cond_5e

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_cd

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: overrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v2

    if-nez v2, :cond_d6

    :goto_d3
    add-int/lit8 v9, v9, -0x1

    goto :goto_89

    :cond_d6
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_f0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z
    :try_end_e9
    .catchall {:try_start_2e .. :try_end_e9} :catchall_ea

    goto :goto_d3

    :catchall_ea
    move-exception v2

    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_f0
    :try_start_f0
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->isStartableInDesktopMode(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_103

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->moveTaskToFreeformStackOrRelayoutLocked(Lcom/android/server/am/TaskRecord;Z)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setHiddenState(I)V

    goto :goto_d3

    :cond_103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z

    goto :goto_d3

    :cond_10f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/MultiWindowManagerService;->collectFullscreenFreeformTasksLocked(Ljava/util/ArrayList;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->removeAllExcludedTaskInRecentTasksLocked()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mMovingAllTasksToFreeform:Z

    :cond_11c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_120
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ef

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    goto :goto_120

    :cond_134
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_11c

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/MultiWindowManagerService;->collectFullscreenFreeformTasksLocked(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_165

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_165
    if-eqz v11, :cond_11c

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    :goto_171
    if-ltz v9, :cond_11c

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_1b5

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: overrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b5
    const-string/jumbo v7, "moveAllTasksToStack - FULLSCREEN_STACK"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->resizeWindowContainer()V

    :cond_1ca
    sget-boolean v2, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v2, :cond_1ec

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveAllTasksToStack: updated overrideConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_f0 .. :try_end_1ec} :catchall_ea

    :cond_1ec
    add-int/lit8 v9, v9, -0x1

    goto :goto_171

    :cond_1ef
    monitor-exit v15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void
.end method

.method public moveDockedTasksToFullscreenStack(ZZ)V
    .registers 17

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v10, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v11, "moveDockedTasksToFullscreenStack()"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_98

    move-result-wide v6

    :try_start_15
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_2f

    const-string/jumbo v9, "MultiWindowManager"

    const-string/jumbo v11, "moveDockedTasksToFullscreenStack / DockedStack is null."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_93

    :try_start_27
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_98

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2f
    :try_start_2f
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_57

    const-string/jumbo v9, "MultiWindowManager"

    const-string/jumbo v11, "moveDockedTasksToFullscreenStack / DockedTasks has 0 tasks."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_93

    :try_start_4f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_98

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_57
    :try_start_57
    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->findFirstReturnToHomeTask(Ljava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz p1, :cond_91

    :goto_5d
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-virtual {v9, v11, p1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    if-eqz v3, :cond_72

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_72
    if-eqz p2, :cond_89

    if-eqz v8, :cond_89

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-eqz v9, :cond_89

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z
    :try_end_89
    .catchall {:try_start_57 .. :try_end_89} :catchall_93

    :cond_89
    :try_start_89
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_98

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_91
    move-object v4, v1

    goto :goto_5d

    :catchall_93
    move-exception v9

    :try_start_94
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9
.end method

.method public moveTaskToDockedOrFullscreenStack(II)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "moveTaskToDockedOrFullscreenStack"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_fb

    move-result-wide v14

    const/16 v17, 0x0

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDockedStackSide()I

    move-result v9

    const/4 v2, -0x1

    if-eq v9, v2, :cond_101

    const/4 v2, 0x1

    if-eq v9, v2, :cond_2e

    const/4 v2, 0x2

    if-ne v9, v2, :cond_c3

    :cond_2e
    const/16 v16, 0x1

    :goto_30
    if-eqz v16, :cond_c7

    if-nez p2, :cond_c7

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    if-eqz v13, :cond_4f

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z

    :goto_5e
    const-string/jumbo v2, "FFAC"

    const-string/jumbo v3, "ChangeToSplit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    if-eqz v17, :cond_bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v19

    if-eqz v19, :cond_169

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    :goto_7f
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    const-string/jumbo v2, "SPBY"

    const/4 v3, 0x0

    aput-object v2, v12, v3

    const-string/jumbo v2, "SPPA"

    const/4 v3, 0x1

    aput-object v2, v12, v3

    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    const-string/jumbo v2, "FreeformDragging"

    const/4 v3, 0x0

    aput-object v2, v11, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v11, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_1d .. :try_end_bb} :catchall_f6

    :cond_bb
    :try_start_bb
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_fb

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_c3
    const/16 v16, 0x0

    goto/16 :goto_30

    :cond_c7
    if-nez v16, :cond_ce

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_34

    :cond_ce
    :try_start_ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_e9

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_e9

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    :cond_e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->moveTaskToStack(IIZ)V
    :try_end_f4
    .catchall {:try_start_ce .. :try_end_f4} :catchall_f6

    goto/16 :goto_5e

    :catchall_f6
    move-exception v2

    :try_start_f7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_fb
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception v2

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_101
    :try_start_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    if-eqz v13, :cond_127

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    :goto_110
    if-eqz v20, :cond_11a

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12a

    :cond_11a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->moveTaskToStack(IIZ)V

    goto/16 :goto_69

    :cond_127
    const/16 v20, 0x0

    goto :goto_110

    :cond_12a
    if-eqz v20, :cond_136

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    :cond_136
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_158

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->moveTaskToStack(IIZ)V

    goto/16 :goto_69

    :cond_158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToDockedStackForShowRecents(IIZZLandroid/graphics/Rect;Z)Z
    :try_end_167
    .catchall {:try_start_101 .. :try_end_167} :catchall_f6

    goto/16 :goto_69

    :cond_169
    const/16 v18, 0x0

    goto/16 :goto_7f
.end method

.method public moveTaskToFreeformStack(ILandroid/graphics/Rect;)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v5, "moveTaskToFreeformStack"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_78

    move-result-wide v0

    if-nez p2, :cond_39

    :try_start_17
    const-string/jumbo v3, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToFreeformStack: launchBounds is null="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_73

    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_78

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_63

    const-string/jumbo v3, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToFreeformStack: No task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_73

    :try_start_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_78

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_63
    :try_start_63
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    const-string/jumbo v5, "Gesture"

    invoke-virtual {v3, v2, p2, v5}, Lcom/android/server/am/FreeformStackController;->moveTaskToFreeformStackLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_73

    :try_start_6b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_78

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_73
    move-exception v3

    :try_start_74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public moveTasksToFullscreenStackExceptTopTaskLocked(IZZ)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    if-nez v16, :cond_d

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_39

    :try_start_19
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_39

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    if-nez v13, :cond_39

    const-string/jumbo v1, "MultiWindowManager"

    const-string/jumbo v2, "Unable to create FullScreen Stack before moveTasksToFullScreenStack"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v1, 0x2

    if-lt v15, v1, :cond_8d

    if-eqz p2, :cond_95

    if-eqz p2, :cond_67

    const v3, 0x7fffffff

    :goto_4b
    const/4 v14, 0x0

    :goto_4c
    add-int/lit8 v1, v15, -0x1

    if-ge v14, v1, :cond_69

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    const-string/jumbo v8, "moveTasksToFullscreenStackExceptTopTaskLocked"

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;Z)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_4c

    :cond_67
    const/4 v3, 0x0

    goto :goto_4b

    :cond_69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_7a
    :goto_7a
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_8d

    if-eqz p3, :cond_8d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->getScreenFreezeAnimationManager()Lcom/android/server/am/ScreenFreezeAnimationManager;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimIfNeededLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_8d
    .catchall {:try_start_19 .. :try_end_8d} :catchall_be

    :cond_8d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_95
    add-int/lit8 v14, v15, -0x2

    :goto_97
    if-ltz v14, :cond_b1

    :try_start_99
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    const-string/jumbo v11, "moveTasksToFullscreenStackExceptTopTaskLocked"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;Z)Z

    add-int/lit8 v14, v14, -0x1

    goto :goto_97

    :cond_b1
    if-nez v15, :cond_7a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_bd
    .catchall {:try_start_99 .. :try_end_bd} :catchall_be

    goto :goto_7a

    :catchall_be
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1
.end method

.method public moveTopTaskToFreeformStack(I)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v6, "moveTaskToFreeformStack"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eq p1, v4, :cond_11

    const/4 v4, 0x3

    if-ne p1, v4, :cond_5f

    :cond_11
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_65

    move-result-wide v2

    :try_start_1b
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_45

    const-string/jumbo v4, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveTopTaskToFreeformStack: fromStack is null, id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_60

    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_65

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_45
    :try_start_45
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_58

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const-string/jumbo v7, "DividerButton"

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/am/FreeformStackController;->moveTaskToFreeformStackLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_60

    :cond_58
    :try_start_58
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_65

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_5f
    return-void

    :catchall_60
    move-exception v4

    :try_start_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method notifyActivityStackAttachedLocked(II)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifyActivityStackDetachedLocked(II)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyApplyFreeformMinimizePolicy(I)V
    .registers 6

    sget-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "MultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyApplyFreeformMinimizePolicy ::  taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDockedStackMinimizedChange(Z)V
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_8
    const/16 v4, 0xcd

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_12
    move v0, v1

    goto :goto_8
.end method

.method public notifyDockedTaskToBackTransitionFinished()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifyFocusStackChangeLocked(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    .registers 10

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
    .registers 8

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyProcessKillByClosingFreeform(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    return-void
.end method

.method public notifyScreenFreezeAnimationFinished()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigurationChangedLocked(I)V
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v6}, Lcom/android/server/am/FreeformStackController;->updateDesktopModeIfNeededLocked()V

    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_91

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    int-to-float v7, v7

    div-float v0, v6, v7

    const/4 v2, 0x4

    :goto_1d
    const/4 v6, 0x1

    if-lt v2, v6, :cond_87

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_2d

    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_2d
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->updateMinMaxSizeIfNeeded()V

    const/4 v6, 0x2

    if-ne v2, v6, :cond_35

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v6, :cond_66

    const-string/jumbo v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Last non fullscreenBounds is null, skip scale bounds by density change, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_66
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeformLocked()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {v3, v10, v10}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_35

    :cond_70
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->scale(F)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v6}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v9, v9, v9}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    goto :goto_35

    :cond_87
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    :cond_91
    and-int/lit16 v6, p1, 0x1880

    if-eqz v6, :cond_a9

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v6, v9, v7}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v6

    iput v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mDefaultDisplayRotation:I

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v6}, Lcom/android/server/am/FreeformStackController;->adjustLaunchingTaskPositioner()V

    :cond_a9
    return-void
.end method

.method public onMultiWindowFeaturesChangeLocked(Landroid/os/Bundle;I)V
    .registers 12

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_30

    const-string/jumbo v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onMultiWindowFeaturesChangeLocked() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", [u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v6, :cond_d4

    const/4 v2, 0x1

    :goto_3c
    if-eqz v2, :cond_6a

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v6, p1}, Landroid/app/ActivityThread;->onMultiWindowFeaturesChange(Landroid/os/Bundle;)I

    move-result v0

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v6, :cond_6a

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->retrieveMultiWindowSettings()V

    const/4 v3, 0x1

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v6, :cond_d7

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v6}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v6

    const-string/jumbo v7, "mw_on"

    invoke-virtual {v6, v7}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_74
    if-ltz v1, :cond_f4

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v6, v7, :cond_8a

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v6, p2, :cond_a8

    :cond_8a
    if-eqz v2, :cond_d1

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v6, :cond_d1

    const-string/jumbo v6, "com.android.systemui"

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_a8

    const-string/jumbo v6, "MultiWindowManager"

    const-string/jumbo v7, "update systemUI\'s features with current user\'s."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    :try_start_a8
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_d1

    sget-boolean v6, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_cc

    const-string/jumbo v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMultiWindowSettings to pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6, p1}, Landroid/app/IApplicationThread;->scheduleMultiWindowFeaturesChanged(Landroid/os/Bundle;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_d1} :catch_ef

    :cond_d1
    :goto_d1
    add-int/lit8 v1, v1, -0x1

    goto :goto_74

    :cond_d4
    const/4 v2, 0x0

    goto/16 :goto_3c

    :cond_d7
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v6}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v6

    const-string/jumbo v7, "mw_off"

    invoke-virtual {v6, v7}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v7, Lcom/android/server/am/-$Lambda$16SDdUB3GRire1byiIR3h1PD754;

    invoke-direct {v7, p0}, Lcom/android/server/am/-$Lambda$16SDdUB3GRire1byiIR3h1PD754;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6a

    :catch_ef
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d1

    :cond_f4
    if-eqz v3, :cond_fb

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiWindowEnableChangeLocked(Z)V

    :cond_fb
    return-void
.end method

.method public postStartPairActivities(Ljava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->detachDockStackIfNeededLocked()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

    invoke-virtual {v1}, Lcom/android/server/am/ScreenFreezeAnimationManager;->overridePairActivitiesScreenFreezeAnimationLocked()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0xcf

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const-wide/16 v4, 0x7d0

    const/16 v3, 0xcf

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/MultiWindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    const-string/jumbo v1, "com.samsung.android.app.appsedge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string/jumbo v0, "EdgePair"

    :cond_3b
    :goto_3b
    if-eqz v0, :cond_41

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_60

    :cond_41
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_46
    :try_start_46
    const-string/jumbo v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string/jumbo v0, "HomeScreenPair"

    goto :goto_3b

    :cond_53
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v0, "RecentsPair"
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_60

    goto :goto_3b

    :catchall_60
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public preStartPairActivities()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

    invoke-virtual {v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startPairActivitiesScreenFreezeAnimationLocked()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_18

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method removeEmptyTask(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
    .registers 5

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "removeEmptyTask"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    :cond_13
    return-void
.end method

.method public removeFocusedTask()Z
    .registers 11

    const/4 v9, 0x1

    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_cf

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    :cond_19
    :goto_19
    if-eqz v2, :cond_be

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    if-eqz v5, :cond_94

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_47

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, freeformStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-eqz v3, :cond_cb

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_cb

    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_71

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, topTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_d1

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_81
    :try_start_81
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    goto :goto_19

    :cond_94
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_b2

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, focusedTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_b9
    .catchall {:try_start_81 .. :try_end_b9} :catchall_d1

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_be
    :try_start_be
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_cb

    const-string/jumbo v5, "MultiWindowManager_Bixby"

    const-string/jumbo v7, "removeFocusedTask, There is no FocesedTask!! "

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_be .. :try_end_cb} :catchall_d1

    :cond_cb
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_cf
    const/4 v5, 0x0

    return v5

    :catchall_d1
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public removeFreeformTasks(I)Z
    .registers 15

    const/4 v12, 0x1

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v8, "android.permission.REMOVE_TASKS"

    const-string/jumbo v9, "removeFreeformTasks()"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_65

    move-result-wide v2

    :try_start_17
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_28
    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3c

    iget v7, v5, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-ne v7, v12, :cond_28

    :cond_3c
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_4c

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_28

    :cond_4c
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z
    :try_end_55
    .catchall {:try_start_17 .. :try_end_55} :catchall_60

    move-result v7

    or-int/2addr v4, v7

    goto :goto_28

    :cond_58
    :try_start_58
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_65

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_60
    move-exception v7

    :try_start_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception v7

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v7
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .registers 16

    const/4 v13, 0x0

    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v9, :cond_b3

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v9, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v9, :cond_39

    const-string/jumbo v9, "MultiWindowManager_Bixby"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeSearchedTask, packageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", caller="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_af

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_43

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_6b
    if-ltz v1, :cond_57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_ac

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_ac

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    sget-boolean v9, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v9, :cond_9f

    const-string/jumbo v9, "MultiWindowManager_Bixby"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeSearchedTask, task="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_a6
    .catchall {:try_start_8 .. :try_end_a6} :catchall_b4

    const/4 v9, 0x1

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :cond_ac
    add-int/lit8 v1, v1, -0x1

    goto :goto_6b

    :cond_af
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_b3
    return v13

    :catchall_b4
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    iget-object v0, v0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resizeDockedStack(I)V
    .registers 9

    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    :cond_5
    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_33

    move-result v0

    if-eqz v0, :cond_25

    :cond_20
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_33

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public resizeDockedStackWithDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 19

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "resizeDockedStackWithDockSide()"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_f
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_8a

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x2

    move/from16 v0, p6

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x4

    move/from16 v0, p6

    if-ne v0, v2, :cond_6e

    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6e

    :goto_2a
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/MultiWindowManagerService;->rotateBounds(Landroid/graphics/Rect;[Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dock bounds rotated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_66
    .catchall {:try_start_12 .. :try_end_66} :catchall_84

    :try_start_66
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_8a

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6e
    const/4 v2, 0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_78

    const/4 v2, 0x3

    move/from16 v0, p6

    if-ne v0, v2, :cond_59

    :cond_78
    :try_start_78
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_84

    const/4 v3, 0x1

    if-ne v2, v3, :cond_59

    goto :goto_2a

    :catchall_84
    move-exception v2

    :try_start_85
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public rotateFreeformTask(Landroid/os/IBinder;)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "rotateFreeformTask"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_4c

    move-result-wide v0

    :try_start_12
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string/jumbo v3, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rotateFreeformTask: cannot find ActivityRecord, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_47

    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_4c

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreeformStackController;->rotateFreeformTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_47

    :try_start_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_47
    move-exception v3

    :try_start_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public setCurrentInputMethodClient(Landroid/os/IBinder;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowManagerInternal;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    return-void
.end method

.method public setMaxVisibleFreeformCount(I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "setMaxVisibleFreeformCount"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_27

    move-result-wide v0

    :try_start_15
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v2, p1}, Lcom/android/server/am/FreeformStackController;->setMaxVisibleFreeformCountLocked(I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_27

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception v2

    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setMinimizeDockedStackDimLayer(ZIF)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getMinimizeDockedStackDimlayerController()Lcom/android/server/wm/MinimizeDockedStackDimlayerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/MinimizeDockedStackDimlayerController;->setMinimizeDimLayer(ZIF)V

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 10

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "setMultiWindowEnabled"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p4, v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v4, "setMultiWindowEnabled"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_20
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_39

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowEnableController;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_33

    :try_start_2b
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_39

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/SnapWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public showSnapWindowGuideView(I)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->showSnapWindowGuideView(I)V

    :cond_9
    return-void
.end method

.method public startFreeform()I
    .registers 11

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_110

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eq v4, v8, :cond_24

    const/4 v1, 0x0

    :cond_24
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eq v4, v8, :cond_35

    const/4 v0, 0x0

    :cond_35
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, v7, :cond_6b

    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_65

    const-string/jumbo v4, "MultiWindowManager_Bixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startFreeform, Unable to start freeform, because it is already freeform, task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_10a

    :cond_65
    const/4 v4, 0x5

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_6b
    if-eqz v2, :cond_71

    if-nez v1, :cond_83

    if-nez v0, :cond_83

    :cond_71
    :try_start_71
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_7e

    const-string/jumbo v4, "MultiWindowManager_Bixby"

    const-string/jumbo v6, "startFreeform, topActivity is null!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_10a

    :cond_7e
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_83
    :try_start_83
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v4

    if-eqz v4, :cond_b7

    :cond_93
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_b1

    const-string/jumbo v4, "MultiWindowManager_Bixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startFreeform, Unable to start freeform, because it isn\'t resizeable, task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_83 .. :try_end_b1} :catchall_10a

    :cond_b1
    const/4 v4, 0x4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_b7
    :try_start_b7
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_e2

    const-string/jumbo v4, "MultiWindowManager_Bixby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startFreeform, taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", topActivity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, v9, :cond_fc

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-ne v4, v8, :cond_fc

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    :cond_fc
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->moveTopTaskToFreeformStack(I)V
    :try_end_105
    .catchall {:try_start_b7 .. :try_end_105} :catchall_10a

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v8

    :catchall_10a
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_110
    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_11d

    const-string/jumbo v4, "MultiWindowManager_Bixby"

    const-string/jumbo v5, "startFreeform, Unable to start freeform."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    return v7
.end method

.method public startPairActivitiesFromRecents(Ljava/lang/String;[I[Landroid/os/Bundle;)V
    .registers 14

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1b

    const-string/jumbo v2, "Permission Denial: startPairActivitiesFromRecents called without android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v3, "MultiWindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1b
    if-eqz p1, :cond_1f

    if-nez p2, :cond_4f

    :cond_1f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "argument has problem :startPairActivitiesFromRecents called with callingPackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " taskIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bOptions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4f
    array-length v3, p2

    if-ne v3, v7, :cond_1f

    if-eqz p3, :cond_1f

    array-length v3, p3

    if-ne v3, v7, :cond_1f

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_5a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->preStartPairActivities()V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_fe

    const/16 v1, -0x60

    const/16 v0, -0x60

    const/4 v3, 0x1

    :try_start_69
    aget v3, p2, v3

    const/4 v7, 0x1

    aget-object v7, p3, v7

    const/4 v8, 0x1

    invoke-direct {p0, p1, v3, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->startPairActivityFromRecentsInnerLocked(Ljava/lang/String;ILandroid/os/Bundle;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v7, 0x0

    aget-object v7, p3, v7

    const/4 v8, 0x3

    invoke-direct {p0, p1, v3, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->startPairActivityFromRecentsInnerLocked(Ljava/lang/String;ILandroid/os/Bundle;I)I
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_c3

    move-result v0

    :try_start_85
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b8

    :cond_93
    const-string/jumbo v3, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startPairActivitiesFromRecents Fail fullResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dockedResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_be
    .catchall {:try_start_85 .. :try_end_be} :catchall_fe

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_c3
    move-exception v3

    :try_start_c4
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v7

    if-eqz v7, :cond_d2

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_f7

    :cond_d2
    const-string/jumbo v7, "MultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPairActivitiesFromRecents Fail fullResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " dockedResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->postStartPairActivities(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_fe
    .catchall {:try_start_c4 .. :try_end_fe} :catchall_fe

    :catchall_fe
    move-exception v3

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;II)V
    .registers 12

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_75

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v4, :cond_75

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_7b

    move-result-wide v0

    :try_start_12
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_50

    const-string/jumbo v4, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startResizingFreeformTask                task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/MultiWindowManagerInternal;->startResizingFreeformTask(II)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v6, "setFocusedTask"

    invoke-virtual {v4, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_76

    :cond_6e
    :try_start_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_7b

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_75
    return-void

    :catchall_76
    move-exception v4

    :try_start_77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method startUserLocked(IZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/MultiWindowEnableController;->startUserLocked(IZ)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MultiWindowFeaturesController;->startUserLocked(IZZ)V

    return-void
.end method

.method stopUserLocked(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    if-nez v2, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/MultiWindowEnableController;->stopUserLocked(IZ)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFeaturesController:Lcom/android/server/am/MultiWindowFeaturesController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/MultiWindowFeaturesController;->stopUserLocked(IZ)V

    return-void
.end method

.method public swapDockedAndFullscreenStack()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v5, "swapDockedAndFullscreenStack()"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_cf

    move-result-wide v16

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_5a

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    :goto_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-eqz v11, :cond_5c

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v20

    :goto_45
    if-eqz v2, :cond_49

    if-nez v20, :cond_5f

    :cond_49
    const-string/jumbo v3, "MultiWindowManager"

    const-string/jumbo v4, "Unable to swap tasks, either docked or fullscreen stack is empty."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_1b .. :try_end_52} :catchall_ca

    :try_start_52
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_cf

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5a
    const/4 v2, 0x0

    goto :goto_36

    :cond_5c
    const/16 v20, 0x0

    goto :goto_45

    :cond_5f
    :try_start_5f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_49

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v3, :cond_c2

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-eqz v3, :cond_c2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    const-string/jumbo v4, "swap tasks"

    const-string/jumbo v5, "finish"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mPairedRecentTasksController:Lcom/android/server/am/PairedRecentTasksController;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PairedRecentTasksController;->swapDockedAndFullScreenTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_d5

    const v4, 0x7fffffff

    :goto_9c
    const-string/jumbo v9, "swapDockedAndFullscreenStack - DOCKED_STACK"

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;Z)Z

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v13, 0x0

    :goto_ad
    move/from16 v0, v19

    if-ge v13, v0, :cond_ee

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v14, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v14, v3, :cond_d7

    :goto_bf
    add-int/lit8 v13, v13, 0x1

    goto :goto_ad

    :cond_c2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mScreenFreezeManager:Lcom/android/server/am/ScreenFreezeAnimationManager;

    invoke-virtual {v3}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSwapAnimLocked()V
    :try_end_c9
    .catchall {:try_start_5f .. :try_end_c9} :catchall_ca

    goto :goto_80

    :catchall_ca
    move-exception v3

    :try_start_cb
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v3

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_d5
    const/4 v4, 0x0

    goto :goto_9c

    :cond_d7
    :try_start_d7
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const-string/jumbo v10, "swapDockedAndFullscreenStack - FULLSCREEN_STACK"

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;)Z

    goto :goto_bf

    :cond_ee
    if-eqz v18, :cond_fc

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    if-eqz v15, :cond_fc

    const-string/jumbo v3, "swapDockedAndFullscreenStack"

    invoke-virtual {v15, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_fc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_10d
    .catchall {:try_start_d7 .. :try_end_10d} :catchall_ca

    :try_start_10d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_cf

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateDexLabsPolicy(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformStackController;->updateDexLabsPolicy(Z)V

    return-void
.end method

.method updateMultiInstanceCountIfNeededLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMaxMultiInstanceCnt:I

    goto :goto_b
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "updateTaskPositionInTaskBar"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_2b

    move-result-wide v0

    :try_start_15
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformStackController;

    iget-object v2, v2, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/FreeformStackWindowController;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_26

    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2b

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception v2

    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
