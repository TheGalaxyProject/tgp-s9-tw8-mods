.class public Lcom/android/server/am/FreeformStackController;
.super Ljava/lang/Object;
.source "FreeformStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreeformStackController$1;,
        Lcom/android/server/am/FreeformStackController$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final DEBUG_DEX_COMPAT:Z = false

.field private static final TAG:Ljava/lang/String; = "FreeformStackController"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

.field private mCoolDownFreeformRequested:Z

.field private mDecorCaptionWindowHeight:I

.field private final mDexCompatTaskDefaultSize:Landroid/graphics/Point;

.field private mDexLabsEnabled:Z

.field private mDexLabsPolicyChanged:Z

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

.field mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mH:Landroid/os/Handler;

.field private mIsDesktopMode:Z

.field mIsMinimizingAllTask:Z

.field private mMaxFreeformDefaultCnt:I

.field private mMaxFreeformOverWrittenCnt:I

.field private final mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

.field private mMinimizeMaxCount:I

.field private final mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

.field private mMinimizedFreeformForToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field final mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/FreeformStackController;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/FreeformStackController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/FreeformStackController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/FreeformStackController;)Lcom/android/server/am/ActivityStackSupervisor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/FreeformStackController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/FreeformStackController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/FreeformStackController;->setCoolDownFreeformRequestedLocked(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 7

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsMinimizingAllTask:Z

    iput v2, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    iput v2, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformDefaultCnt:I

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z

    new-instance v0, Lcom/android/server/am/FreeformStackController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreeformStackController$1;-><init>(Lcom/android/server/am/FreeformStackController;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/FreeformStackController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreeformStackController$2;-><init>(Lcom/android/server/am/FreeformStackController;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformStackWindowController()Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimationController()Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getMultiWindowEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    return-void
.end method

.method private ensureAllTasksRunningInDexLocked(Z)V
    .registers 12

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_d
    if-ltz v2, :cond_44

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_1f
    if-ltz v5, :cond_41

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iput-boolean p1, v4, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_3e

    xor-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_3e

    iput-boolean v9, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v6

    iget-boolean v7, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget v8, v4, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/TaskWindowContainerController;->setDexCompatMode(ZI)V

    :cond_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_1f

    :cond_41
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_44
    return-void
.end method

.method private getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;
    .registers 16

    const/4 v9, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v1, v8, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->convertToConfigurationOrientation(I)I

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOrientationFromTaskBounds()I

    move-result v5

    :cond_24
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    packed-switch v8, :pswitch_data_a8

    const-string/jumbo v8, "FreeformStackController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSupportScreenBounds: Illegal UiMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", tid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_53
    if-ne v5, v11, :cond_64

    invoke-virtual {v0, v10, v10, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_58
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v8, :cond_63

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    :cond_63
    return-object v0

    :cond_64
    invoke-virtual {v0, v10, v10, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_58

    :pswitch_68
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ne v5, v11, :cond_86

    invoke-virtual {v0, v10, v10, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_58

    :cond_86
    invoke-virtual {v0, v10, v10, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_58

    :pswitch_8a
    if-ne v5, v11, :cond_a5

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/MultiWindowManagerService;->getBaseDisplaySize()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    add-float/2addr v8, v12

    float-to-int v3, v8

    mul-int v8, v3, v2

    div-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v12

    float-to-int v7, v8

    invoke-virtual {v0, v10, v10, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_58

    :cond_a5
    return-object v9

    :cond_a6
    return-object v9

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_53
        :pswitch_68
        :pswitch_8a
    .end packed-switch
.end method

.method private getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v7

    if-eqz v7, :cond_57

    if-eqz p2, :cond_57

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_1b
    if-ltz v5, :cond_57

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    if-eqz p3, :cond_2e

    iget-boolean v7, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2e

    :cond_2b
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    :cond_2e
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_36
    if-ltz v0, :cond_2b

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_54

    iget v7, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v7, :cond_53

    return-object v2

    :cond_53
    move-object v1, v2

    :cond_54
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_57
    return-object v1
.end method

.method private initGameManagerService()V
    .registers 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_13

    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private isDesktopModeLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_am_FreeformStackController_19369(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private minimizeMaxCountingFreeformLocked()V
    .registers 14

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x0

    iget v9, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    if-lez v9, :cond_37

    iget v3, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    :goto_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v3, :cond_7f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_22
    if-ltz v2, :cond_50

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v9, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v9, :cond_34

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_3a

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_37
    iget v3, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformDefaultCnt:I

    goto :goto_16

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_34

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v12, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget v9, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v9, v11}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    goto :goto_34

    :cond_50
    if-le v0, v3, :cond_7f

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x103012b

    invoke-direct {v7, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const v11, 0x1040386

    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$2;

    invoke-direct {v10, v7, v6}, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7f
    return-void
.end method

.method private setCoolDownFreeformRequestedLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    return-void
.end method

.method private setLatestDexBounds()V
    .registers 7

    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_2b

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_28
    iput-object v4, v1, Lcom/android/server/am/TaskRecord;->mLastDeXBounds:Landroid/graphics/Rect;

    goto :goto_11

    :cond_2b
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto :goto_28

    :cond_31
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_1a
    return-void
.end method

.method private updateFreeformMaxCount()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_15
    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformDefaultCnt:I

    return-void

    :cond_18
    const v1, 0x10e010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_15
.end method


# virtual methods
.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->addGrantPermissionComponent(Ljava/lang/String;)V

    return-void
.end method

.method adjustLaunchingTaskPositioner()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v2

    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    invoke-virtual {v2, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->setDisplay(Landroid/view/Display;)V

    invoke-virtual {v2, v5}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    :cond_30
    return-void
.end method

.method applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .registers 17

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v9

    if-eqz v9, :cond_39

    if-eqz p3, :cond_39

    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_39

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    move-object v0, p1

    :goto_11
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    :goto_17
    if-eqz v8, :cond_2d

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_23

    const/4 v1, 0x1

    :cond_23
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2d

    const/4 v3, 0x2

    :cond_2d
    if-eqz v1, :cond_45

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/content/res/Configuration;->updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I

    :goto_36
    const/4 v9, 0x2

    iput v9, p2, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_39
    return-void

    :cond_3a
    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-direct {p0, v10, v9, v11}, Lcom/android/server/am/FreeformStackController;->getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_11

    :cond_43
    const/4 v8, 0x0

    goto :goto_17

    :cond_45
    const/4 v9, 0x1

    if-ne v3, v9, :cond_8c

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    :goto_55
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v10, p2, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p2, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    float-to-int v4, v9

    iget v9, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v9}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v5, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v4, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v6, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v7, v2, v6}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v9

    iput v9, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_36

    :cond_8c
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    goto :goto_55
.end method

.method applyDexCompatToAppWindow(Landroid/os/IBinder;Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowCompatMode(Landroid/os/IBinder;Z)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method applyFreeformMinimizePolicyLocked(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(I)Z

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->minimizeMaxCountingFreeformLocked()V

    goto :goto_7
.end method

.method canMaximizeLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_30

    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_12
    if-eqz v1, :cond_37

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_32

    const/4 v0, -0x1

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.samsung.android.sdk.multiwindow.maxWidth"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v3, v7, :cond_2f

    if-le v2, v7, :cond_37

    :cond_2f
    return v8

    :cond_30
    const/4 v1, 0x0

    goto :goto_12

    :cond_32
    iget v5, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-nez v5, :cond_37

    return v8

    :cond_37
    const/4 v5, 0x1

    return v5
.end method

.method checkLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10, p1}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_63

    const/4 v6, 0x1

    :goto_17
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_65

    const/4 v5, 0x1

    :goto_1c
    and-int/lit16 v9, v3, 0x80

    if-eqz v9, :cond_67

    const/4 v4, 0x1

    :goto_21
    const v9, 0x8000

    and-int/2addr v9, v3

    if-eqz v9, :cond_69

    const/4 v1, 0x1

    :goto_28
    if-nez v6, :cond_2e

    if-nez v5, :cond_2e

    if-eqz v4, :cond_75

    :cond_2e
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_40
    const v8, 0x10405bf

    if-eqz v5, :cond_6f

    const v8, 0x10405c1

    :cond_48
    :goto_48
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v12

    :cond_63
    const/4 v6, 0x0

    goto :goto_17

    :cond_65
    const/4 v5, 0x0

    goto :goto_1c

    :cond_67
    const/4 v4, 0x0

    goto :goto_21

    :cond_69
    const/4 v1, 0x0

    goto :goto_28

    :cond_6b
    const-string/jumbo v2, ""

    goto :goto_40

    :cond_6f
    if-eqz v4, :cond_48

    const v8, 0x10405c0

    goto :goto_48

    :cond_75
    if-eqz v1, :cond_91

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405c2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$1;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v11

    :cond_91
    return v11
.end method

.method cleanUpWaitingProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 11

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v4

    if-eqz v4, :cond_74

    if-eqz p1, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    if-eqz v4, :cond_74

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_17

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_1d
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_47

    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-ne p1, v1, :cond_36

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_36
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_1d .. :try_end_43} :catchall_44

    goto :goto_33

    :catchall_44
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_47
    monitor-exit v5

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iput-object v7, v1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-gtz v4, :cond_6e

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string/jumbo v4, "closing-freeformTask"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_4c

    :cond_6e
    const-string/jumbo v4, "closing-freeformTask-byWaiting"

    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    goto :goto_4c

    :cond_74
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Z)V
    .registers 5

    iget v0, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    if-lez v0, :cond_20

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mMaxFreeformOverWrittenCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mCoolDownFreeformRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->dumpLocked(Ljava/io/PrintWriter;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mIsDesktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " semDesktopModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    CompatDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " CaptionHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method forceClearMinimizeIfNeededLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 11

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeMaxCount:I

    if-ge v5, v6, :cond_16

    return-void

    :cond_16
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_2c

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2c
    iget v5, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v5, v6, :cond_1b

    iget v5, v3, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeMaxCount:I

    if-le v2, v5, :cond_1b

    const-string/jumbo v5, "FreeformStackController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "forceClearMinimizeIfNeededLocked tr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Lcom/android/server/am/TaskRecord;->setHiddenState(I)V

    goto :goto_1b

    :cond_5b
    return-void
.end method

.method getDexBoundsFromRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .registers 12

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isFreeform()Z

    move-result v6

    if-eqz v6, :cond_b2

    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsLaunchingDexFullscreenFreeform:Z

    if-eqz v6, :cond_2e

    const-string/jumbo v6, "FreeformStackController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBoundsInDeXFromRecentTasks: return null, reason=launchFullscreen tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v1, :cond_b2

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_65

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_68

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_68
    iget v6, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v6, v7, :cond_65

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-nez v6, :cond_65

    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    if-eqz v6, :cond_65

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_65

    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_9d

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_b1

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-static {v4}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    :cond_9d
    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_b1

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v4}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    :cond_b1
    return-object v9

    :cond_b2
    return-object v9
.end method

.method getIndexOfFreeformStackLocked(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_7
    if-ltz v0, :cond_20

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFreeformStack()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    move v1, v0

    :cond_20
    return v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_7
.end method

.method getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    return-object v0
.end method

.method getSupportScreenBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_28

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    :cond_1a
    :goto_1a
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/FreeformStackController;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3

    :cond_1f
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1a

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_1a

    :cond_28
    return-object v4
.end method

.method isAllFreeformTaskHiddenLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 9

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    if-eqz p1, :cond_22

    if-eq v2, p1, :cond_12

    :cond_22
    iget v4, v2, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v4, :cond_12

    return v6

    :cond_27
    const/4 v4, 0x1

    return v4

    :cond_29
    return v6
.end method

.method public isAppToBlockFloatingMultiWindows(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ActivityRecord;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_49

    if-eqz p1, :cond_49

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    if-eqz v0, :cond_49

    const/4 v1, 0x0

    if-nez p2, :cond_1d

    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    :cond_17
    :goto_17
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2

    :cond_1d
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    if-nez v3, :cond_27

    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    iput v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    :cond_27
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_17

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_17

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-nez v3, :cond_42

    return v2

    :cond_42
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    goto :goto_17

    :cond_49
    return v2
.end method

.method isDexLabsPolicyChanged()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isGamePackage(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->initGameManagerService()V

    :cond_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v3, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_16

    move-result v1

    :cond_13
    :goto_13
    if-ne v1, v2, :cond_1b

    :goto_15
    return v2

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    :cond_1b
    const/4 v2, 0x0

    goto :goto_15
.end method

.method isVisibleFullScreenGameLocked()Z
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ON_GAMEMODE:Z

    if-eqz v7, :cond_50

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_12
    if-ltz v3, :cond_50

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    if-eq v7, v5, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4d

    :cond_2f
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/am/FreeformStackController;->isGamePackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    const/4 v7, 0x5

    if-eq v0, v7, :cond_4b

    if-eqz v0, :cond_4b

    :goto_4a
    return v5

    :cond_4b
    move v5, v6

    goto :goto_4a

    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    :cond_50
    return v6
.end method

.method synthetic lambda$-com_android_server_am_FreeformStackController_36292(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$-com_android_server_am_FreeformStackController_36730(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method loadResources()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeMaxCount:I

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->updateFreeformMaxCount()V

    const v1, 0x1050141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    const v2, 0x1050079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x1050078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method minimizeAllTasksInFreeformLocked()Z
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(I)Z

    move-result v0

    return v0
.end method

.method minimizeAllTasksInFreeformLocked(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(IZ)Z

    move-result v0

    return v0
.end method

.method minimizeAllTasksInFreeformLocked(IZ)Z
    .registers 19

    const/4 v2, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/FreeformStackController;->mIsMinimizingAllTask:Z

    if-lez p1, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/FreeformStackController;->mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

    :cond_16
    const/4 v9, 0x0

    const-string/jumbo v13, "FreeformStackController"

    const-string/jumbo v14, "minimizeAllTasksInFreeform is calling"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v5

    xor-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_147

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_147

    move v7, v8

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_4b

    :try_start_44
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :cond_4b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_57

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_57
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5b
    :goto_5b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_109

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_85

    if-nez p2, :cond_6e

    if-nez v2, :cond_85

    :cond_6e
    iget v13, v10, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v13, :cond_85

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_85

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    if-eqz v2, :cond_89

    if-eq v10, v2, :cond_5b

    :cond_89
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_5b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v13

    if-eqz v13, :cond_ac

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V
    :try_end_a0
    .catchall {:try_start_44 .. :try_end_a0} :catchall_a1

    goto :goto_5b

    :catchall_a1
    move-exception v13

    if-eqz v1, :cond_ab

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_ab
    throw v13

    :cond_ac
    :try_start_ac
    iget v13, v10, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v13, :cond_5b

    const-string/jumbo v14, "FreeformStackController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_105

    const-string/jumbo v13, "minimize, "

    :goto_bd
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_df

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_df

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_df
    iget v13, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v13, v8}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v6

    or-int/2addr v9, v6

    if-eqz v7, :cond_f6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    const-string/jumbo v14, "FFAC"

    const-string/jumbo v15, "Minimize"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_f6
    if-eqz v5, :cond_5b

    xor-int/lit8 v13, v6, 0x1

    if-eqz v13, :cond_5b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    :cond_105
    const-string/jumbo v13, "moveback, "
    :try_end_108
    .catchall {:try_start_ac .. :try_end_108} :catchall_a1

    goto :goto_bd

    :cond_109
    if-eqz v1, :cond_112

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_112
    :goto_112
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/FreeformStackController;->mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/FreeformStackController;->mIsMinimizingAllTask:Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "userid"

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "isHomeActivity"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v13, "componentName"

    const-string/jumbo v14, "minimizeAllTasksInFreeformLocked"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v9

    :cond_147
    if-eqz v3, :cond_112

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreeformStackController;->toggleFreeformState()V

    goto :goto_112
.end method

.method moveFreeformStackToFront(Ljava/util/ArrayList;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_37

    if-eq v0, v3, :cond_37

    move p2, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 p2, v2, -0x1

    :cond_24
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    :cond_37
    return p2
.end method

.method moveTaskToBackLocked(IZ)Z
    .registers 7

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    return v2

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    const-string/jumbo v2, "FFAC"

    const-string/jumbo v3, "Minimize"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const/4 v1, 0x1

    return v1

    :cond_3c
    return v2
.end method

.method moveTaskToFreeformStackLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 16

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/wm/TaskWindowContainerController;->canMoveToFreeformStack(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6d

    iput-object v5, p1, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :goto_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0, v5, v8}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_24
    iget-object v6, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7, v10, v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToStack(IIZ)V

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v6, "FFBY"

    aput-object v6, v3, v9

    const-string/jumbo v6, "FFEP"

    aput-object v6, v3, v8

    new-array v2, v10, [Ljava/lang/String;

    aput-object p3, v2, v9

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_45

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_45
    aput-object v5, v2, v8

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_67

    if-ne v4, v8, :cond_75

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V

    :cond_67
    :goto_67
    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_6c
    return-void

    :cond_6d
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p1, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_1b

    :cond_75
    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v11, v9}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_67
.end method

.method readGrantPermissionComponents()V
    .registers 16

    const/4 v14, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, 0x0

    const v13, 0x10400

    invoke-interface {v10, v0, v12, v13, v11}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_3b

    new-instance v4, Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_71} :catch_72

    goto :goto_3b

    :catch_72
    move-exception v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_76
    const-string/jumbo v10, "com.android.systemui/com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v10, v6}, Lcom/android/server/wm/FreeformStackWindowController;->setGrantPermissionComponents(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Framework_ConfigAppListToBlockFloatingMultiWindows"

    invoke-virtual {v10, v11, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a3

    const-string/jumbo v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_97
    if-ge v10, v12, :cond_a3

    aget-object v3, v11, v10

    iget-object v13, p0, Lcom/android/server/am/FreeformStackController;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_97

    :cond_a3
    return-void
.end method

.method registerBroadcastReceiver()V
    .registers 7

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.COOLDOWN_FREEFORM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public resetToggleFreeformList()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method restoreFullscreenStateLocked(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_b

    if-eq v5, p2, :cond_b

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFreeformStack()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isRecentsStack()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isPinnedStack()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v7

    if-eqz v7, :cond_86

    const/4 v3, 0x1

    :cond_3e
    :goto_3e
    const-string/jumbo v7, "FreeformStackController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFullscreenState: task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " moveHomeStackToFront="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_be

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFullscreenState("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    :goto_85
    return-void

    :cond_86
    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v7

    if-ne v7, v10, :cond_ba

    const/4 v2, 0x1

    :goto_96
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v7

    if-nez v7, :cond_3e

    if-eqz v2, :cond_3e

    const/4 v3, 0x1

    const-string/jumbo v7, "FreeformStackController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFullscreenState: docked visible, full task is unresizable, tr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_ba
    const/4 v2, 0x0

    goto :goto_96

    :cond_bc
    const/4 v2, 0x0

    goto :goto_96

    :cond_be
    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreFullscreenState("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_85
.end method

.method rotateFreeformTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 14

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-boolean v8, v7, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_f

    :cond_e
    return-void

    :cond_f
    const/4 v4, 0x0

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v8, :cond_22

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_23

    :cond_22
    const/4 v4, 0x1

    :cond_23
    invoke-direct {p0, v7, v4}, Lcom/android/server/am/FreeformStackController;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/MultiWindowManagerService;->getBaseDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    iget v8, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v8, :cond_45

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    :cond_45
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_75

    iget v8, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v8

    :cond_51
    :goto_51
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_82

    iget v8, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v8

    :cond_58
    :goto_58
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_5b
    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v9, 0x12

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const-string/jumbo v9, "rotate_freeform"

    const/4 v10, 0x2

    invoke-virtual {v8, v11, v10, v9}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    return-void

    :cond_75
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Point;->x:I

    if-le v8, v9, :cond_51

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v9

    goto :goto_51

    :cond_82
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_58

    iget v8, v1, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v8, v9

    goto :goto_58
.end method

.method setFreeformStackPolicyVisibility(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackWindowController;->setStackPolicyVisibility(Z)V

    :cond_e
    return-void
.end method

.method setMaxVisibleFreeformCountLocked(I)V
    .registers 6

    const/4 v0, -0x1

    if-lez p1, :cond_35

    :goto_3
    iput p1, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    const-string/jumbo v1, "FreeformStackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxVisibleFreeformCount: mMaxFreeformOverWrittenCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformStackController;->applyFreeformMinimizePolicyLocked(I)V

    return-void

    :cond_35
    move p1, v0

    goto :goto_3
.end method

.method shouldKeepTranslucentWindowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v2

    if-nez v2, :cond_14

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isRelaunching:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getFreeformRelaunchAnimState()I

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    move v0, v1

    goto :goto_14
.end method

.method shouldSetTaskToReturnToHomeLocked(II)Z
    .registers 5

    invoke-static {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->isFreeformMaximizing(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->isVisibleBehindFreeformStack(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public toggleFreeformState()V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v6, :cond_44

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :goto_3c
    const-string/jumbo v5, "toggleFreeformState"

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_17

    :cond_44
    move-object v4, v3

    goto :goto_3c

    :cond_46
    return-void
.end method

.method toggleFullscreenModeLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 12

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_7e

    const/4 v3, 0x0

    iget-boolean v0, p2, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v0, :cond_84

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_7f

    iget-object v3, p2, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :goto_20
    if-nez v3, :cond_41

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_41

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v0

    if-eqz v0, :cond_41

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->getDefaultTaskBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Z)V

    :cond_41
    :goto_41
    const-string/jumbo v0, "FreeformStackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullscreenModeLocked: tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", targetBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const-string/jumbo v1, "toggle_fullscreen_freeform"

    invoke-virtual {v0, v4, v8, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_7e
    return-void

    :cond_7f
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_20

    :cond_84
    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->updateDisplayInfoLocked()V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_41

    invoke-virtual {p2, v7}, Lcom/android/server/am/TaskRecord;->setLastBoundsForMetaKeyInteractionLocked(Landroid/graphics/Rect;)V

    goto/16 :goto_41
.end method

.method updateDesktopModeIfNeededLocked()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    if-eq v1, v0, :cond_53

    iput-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    const-string/jumbo v1, "FreeformStackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged, DesktopMode enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiInstanceCountIfNeededLocked()V

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    const-string/jumbo v2, "desktop_on"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/FreeformStackController;->ensureAllTasksRunningInDexLocked(Z)V

    :goto_3b
    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->initGameManagerService()V

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    const-string/jumbo v3, "MultiWindowManager"

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    if-eqz v1, :cond_64

    const-string/jumbo v1, "Desktop On"

    :goto_4a
    iget-boolean v4, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/am/MultiWindowEnableController;->setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->updateFreeformMaxCount()V

    :cond_53
    return-void

    :cond_54
    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    const-string/jumbo v2, "desktop_off"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/FreeformStackController;->ensureAllTasksRunningInDexLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->setLatestDexBounds()V

    goto :goto_3b

    :cond_64
    const-string/jumbo v1, "Desktop Off"

    goto :goto_4a
.end method

.method updateDexLabsPolicy(Z)V
    .registers 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "labs_resizable_window_enabled"

    invoke-static {v4, v5, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v5, "launch_policy_developer_enabled"

    invoke-static {v4, v5, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v6, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_32

    iget-boolean v3, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsEnabled:Z

    if-nez v0, :cond_30

    move v2, v1

    :goto_24
    if-eq v3, v2, :cond_2b

    iput-boolean v2, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsEnabled:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_36

    :cond_2b
    :goto_2b
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_30
    const/4 v2, 0x1

    goto :goto_24

    :cond_32
    const/4 v5, 0x0

    :try_start_33
    iput-boolean v5, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_36

    goto :goto_2b

    :catchall_36
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method
