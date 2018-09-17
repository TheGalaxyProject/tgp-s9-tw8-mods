.class public Lcom/android/server/am/ScreenFreezeAnimationManager;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimationManager.java"


# static fields
.field private static final DEBUG:Z

.field static final FLAG_NON_ANIM_TARGET_STACK_DOCKED:I = 0x8

.field static final FLAG_NON_ANIM_TARGET_STACK_FREEFORM:I = 0x4

.field static final FLAG_NON_ANIM_TARGET_STACK_FULLSCREEN:I = 0x2

.field static final FLAG_NON_ANIM_TARGET_STACK_HOME:I = 0x1

.field static final FLAG_NON_ANIM_TARGET_STACK_RECENTS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ScreenFreezeAnimation"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field final mPreTopActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

.field private mSkipScreenFreezeAnimation:Z

.field private final mSplitResizeAnimTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitResizeFreezeTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ScreenFreezeAnimationManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeFreezeTargets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSkipScreenFreezeAnimation:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mPreTopActivities:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimationController()Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    return-void
.end method

.method private isAnimTargetStack(II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_2a

    :pswitch_5
    return v0

    :pswitch_6
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a

    :pswitch_d
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    :pswitch_14
    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :pswitch_1b
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_20

    :goto_1f
    return v0

    :cond_20
    move v0, v1

    goto :goto_1f

    :pswitch_22
    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_27

    :goto_26
    return v0

    :cond_27
    move v0, v1

    goto :goto_26

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_5
        :pswitch_22
    .end packed-switch
.end method

.method private isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    return v5

    :cond_7
    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_23

    const/4 v1, 0x1

    :goto_16
    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_25

    :cond_22
    return v5

    :cond_23
    const/4 v1, 0x0

    goto :goto_16

    :cond_25
    if-nez v1, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eq v3, v4, :cond_22

    :cond_31
    return v6

    :cond_32
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_50

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3

    :cond_50
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method private updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;I)Z"
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p1, :cond_4

    return v9

    :cond_4
    const/4 v4, 0x0

    :goto_5
    const/4 v9, 0x5

    if-gt v4, v9, :cond_7d

    invoke-direct {p0, p2, v4}, Lcom/android/server/am/ScreenFreezeAnimationManager;->isAnimTargetStack(II)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isStackAffectedByDragResizing(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_19

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_19
    iget-object v9, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isUpdateBoundsDeferred()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_16

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    :goto_38
    if-ltz v6, :cond_16

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v9

    if-nez v9, :cond_49

    :cond_46
    :goto_46
    add-int/lit8 v6, v6, -0x1

    goto :goto_38

    :cond_49
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_52
    if-ltz v1, :cond_46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v9

    if-eqz v9, :cond_68

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_6c

    :cond_68
    iget-boolean v9, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_6f

    :cond_6c
    :goto_6c
    add-int/lit8 v1, v1, -0x1

    goto :goto_52

    :cond_6f
    iget-boolean v9, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_7a

    const/4 v7, 0x1

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_7a
    if-eqz v7, :cond_6c

    goto :goto_46

    :cond_7d
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    return v9
.end method


# virtual methods
.method public addTaskBoundsUnchangedDuringResizeIfNeededLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ScreenFreezeAnimationManager;->isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method freezeSplitResizeTargetLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSkipScreenFreezeAnimation:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/ScreenFreezeAnimationManager;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "ScreenFreezeAnimation"

    const-string/jumbo v1, "Skip freezeSplitResizeTargetLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->isEnsureDockedMode()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ScreenFreezeAnimationManager;->isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeFreezeTargets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    iget-object v1, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeFreezeTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->freezeSplitResizeTarget(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeFreezeTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_34
    return-void
.end method

.method public overridePairActivitiesScreenFreezeAnimationLocked()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_8
    const/4 v4, 0x5

    if-gt v1, v4, :cond_3c

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isStackAffectedByDragResizing(I)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_11
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-ne v4, v6, :cond_11

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mPreTopActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_11

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v4}, Lcom/android/server/wm/ScreenFreezeAnimationController;->clearScreenFreezeAnimation()V

    :goto_47
    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mPreTopActivities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    return-void

    :cond_4d
    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v4, v2, v6}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_47
.end method

.method setSkipScreenFreezeAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSkipScreenFreezeAnimation:Z

    return-void
.end method

.method public startPairActivitiesScreenFreezeAnimationLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mPreTopActivities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_c
    const/4 v4, 0x6

    if-gt v1, v4, :cond_38

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isStackAffectedByDragResizing(I)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_15
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mPreTopActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_38
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_47
    return-void
.end method

.method public startSplitResizeAnimForSnapWindowLocked(ZZZ)V
    .registers 5

    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimForSnapWindowLocked(ZZZI)V

    return-void
.end method

.method public startSplitResizeAnimForSnapWindowLocked(ZZZI)V
    .registers 11

    iget-boolean v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSkipScreenFreezeAnimation:Z

    if-eqz v3, :cond_12

    sget-boolean v3, Lcom/android/server/am/ScreenFreezeAnimationManager;->DEBUG:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "ScreenFreezeAnimation"

    const-string/jumbo v4, "Skip ScreenFreezeAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    if-eqz p3, :cond_34

    or-int/lit8 p4, p4, 0x19

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    :cond_25
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    :cond_2b
    if-eqz v1, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p4}, Lcom/android/server/am/ScreenFreezeAnimationManager;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;I)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    iget-object v4, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    if-eqz p1, :cond_4b

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->waitScreenFreezeAnimationForRecentsDrawn()V

    :cond_4b
    if-eqz p2, :cond_53

    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ScreenFreezeAnimationController;->checkDrawnWindowsFitToScreenForSwapTasks(I)V

    :cond_53
    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_58
    iget-object v3, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public startSplitResizeAnimIfNeededLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSkipScreenFreezeAnimation:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/ScreenFreezeAnimationManager;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string/jumbo v0, "ScreenFreezeAnimation"

    const-string/jumbo v1, "Skip ScreenFreezeAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->isEnsureDockedMode()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ScreenFreezeAnimationManager;->isSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->updateSplitResizeAnimTargetsLocked(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    iget-object v1, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareResizeAnim(Ljava/util/ArrayList;Z)V

    if-nez p2, :cond_43

    sget-boolean v0, Lcom/android/server/am/ScreenFreezeAnimationManager;->DEBUG:Z

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "ScreenFreezeAnimation"

    const-string/jumbo v1, "set SkipScreenFreezeAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->setSkipScreenFreezeAnimation(Z)V

    :cond_43
    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mSplitResizeAnimTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_48
    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mTasksBoundsUnchangedDuringResize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public startSwapAnimLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->prepareSwapAnimLocked()V

    return-void
.end method

.method unfreezeSplitResizeTarget()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ScreenFreezeAnimationManager;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimationController;->unfreezeSplitResizeTarget()V

    return-void
.end method
