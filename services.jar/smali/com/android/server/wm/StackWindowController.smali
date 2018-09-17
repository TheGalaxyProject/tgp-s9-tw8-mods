.class public Lcom/android/server/wm/StackWindowController;
.super Lcom/android/server/wm/WindowContainerController;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackWindowController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController",
        "<",
        "Lcom/android/server/wm/TaskStack;",
        "Lcom/android/server/wm/StackWindowListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/wm/StackWindowController$H;

.field final mStackId:I

.field private final mTmpDisplayBounds:Landroid/graphics/Rect;

.field private final mTmpNonDecorInsets:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;)V
    .registers 13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V
    .registers 13

    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    new-instance v2, Lcom/android/server/wm/StackWindowController$H;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/StackWindowController$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/StackWindowController;->mHandler:Lcom/android/server/wm/StackWindowController$H;

    iget-object v3, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_6c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to add stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to unknown displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_66
    .catchall {:try_start_36 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_6c
    :try_start_6c
    invoke-virtual {v0, p1, p4}, Lcom/android/server/wm/DisplayContent;->addStackToDisplay(IZ)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskStack;->setController(Lcom/android/server/wm/WindowContainerController;)V

    invoke-direct {p0, p5}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_66

    monitor-exit v3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method private getRawBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getRawFullscreen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    goto :goto_d
.end method

.method private getSmallestWidthForTaskBounds(Landroid/graphics/Rect;FLcom/android/server/wm/MinimalTaskDimensionsInfo;)I
    .registers 8

    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v2, v3, :cond_25

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v2, v3, :cond_25

    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v2

    :cond_25
    iget v2, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    return v2

    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSmallestWidthDpForBounds(Landroid/graphics/Rect;Lcom/android/server/wm/MinimalTaskDimensionsInfo;)I

    move-result v2

    return v2
.end method

.method private intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 13

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    if-eqz p5, :cond_26

    const/4 v2, 0x0

    :goto_1f
    if-eqz p6, :cond_2f

    const/4 v0, 0x0

    :goto_22
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    return-void

    :cond_26
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    goto :goto_1f

    :cond_2f
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_22
.end method


# virtual methods
.method public adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/MinimalTaskDimensionsInfo;)V
    .registers 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/wm/TaskStack;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    iget v6, v12, Landroid/view/DisplayInfo;->rotation:I

    iget v7, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    invoke-interface/range {v4 .. v9}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIIILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    iget v6, v12, Landroid/view/DisplayInfo;->rotation:I

    iget v7, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    invoke-interface/range {v4 .. v9}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIIILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    iget v5, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_70

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_69

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_111

    :cond_69
    :goto_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_70
    move-object/from16 v0, p9

    iget-object v0, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11a

    move-object/from16 v4, p1

    :goto_7e
    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setAppBounds(Landroid/graphics/Rect;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v4

    if-eqz v4, :cond_198

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_11d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_11d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_11d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v15, 0x1

    :cond_cd
    :goto_cd
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p7

    float-to-int v0, v4

    move/from16 v18, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p7

    float-to-int v14, v4

    :goto_df
    if-eqz v15, :cond_f0

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_f0

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_f0
    move/from16 v0, v18

    move-object/from16 v1, p8

    iput v0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p8

    iput v14, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz p2, :cond_1ef

    :goto_fc
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p7

    move-object/from16 v3, p10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/StackWindowController;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;FLcom/android/server/wm/MinimalTaskDimensionsInfo;)I

    move-result v4

    move-object/from16 v0, p8

    iput v4, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I
    :try_end_10c
    .catchall {:try_start_7 .. :try_end_10c} :catchall_192

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_111
    :try_start_111
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_70

    goto/16 :goto_69

    :cond_11a
    const/4 v4, 0x0

    goto/16 :goto_7e

    :cond_11d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v4

    if-eqz v4, :cond_cd

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_cd

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_15d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_15d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const/4 v15, 0x1

    :cond_15d
    move-object/from16 v0, p8

    iget v4, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_cd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v4}, Lcom/android/server/wm/FreeformStackWindowController;->getDecorCaptionHeight()I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v11, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v11, v5, v6}, Landroid/graphics/Rect;->inset(IIII)V

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v11, v6, v7}, Landroid/graphics/Rect;->inset(IIII)V
    :try_end_190
    .catchall {:try_start_111 .. :try_end_190} :catchall_192

    goto/16 :goto_cd

    :catchall_192
    move-exception v4

    monitor-exit v19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_198
    if-eqz p2, :cond_1e9

    move-object/from16 v6, p2

    :goto_19c
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/StackWindowController;->intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    if-eqz p2, :cond_1ec

    move-object/from16 v6, p2

    :goto_1b3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/StackWindowController;->intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p7

    float-to-int v4, v4

    move-object/from16 v0, p9

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p7

    float-to-int v4, v4

    move-object/from16 v0, p9

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    :try_end_1e5
    .catchall {:try_start_19c .. :try_end_1e5} :catchall_192

    move-result v14

    const/4 v15, 0x1

    goto/16 :goto_df

    :cond_1e9
    move-object/from16 v6, p1

    goto :goto_19c

    :cond_1ec
    move-object/from16 v6, p1

    goto :goto_1b3

    :cond_1ef
    move-object/from16 p2, p1

    goto/16 :goto_fc
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_21

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_16
    :try_start_16
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_21

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isVisible()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    move-result v0

    :goto_12
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_12

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;ILandroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionChildAt: positioning task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-object v0, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_51

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionChildAt: could not find task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_96

    :cond_51
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_7f

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionChildAt: could not find stack for task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_96

    :cond_7a
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7f
    :try_start_7f
    iget-object v0, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/wm/Task;->positionAt(ILandroid/graphics/Rect;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_91
    .catchall {:try_start_7f .. :try_end_91} :catchall_96

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_96
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_35

    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionChildAtBottom: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_5d

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_5d

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5d
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_35

    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionChildAtTop: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_5d

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3, v0, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_5d

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5d
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public prepareFreezingTaskBounds()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareFreezingTaskBounds: stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2b

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public removeContainer()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->removeIfPossible()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    :cond_14
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public reparent(ILandroid/graphics/Rect;Z)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_37

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to move unknown stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_66

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying to move stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to unknown displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/wm/DisplayContent;->moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V
    :try_end_70
    .catchall {:try_start_37 .. :try_end_70} :catchall_31

    monitor-exit v2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method requestResize(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mHandler:Lcom/android/server/wm/StackWindowController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StackWindowController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeStack: stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getRawFullscreen()Z
    :try_end_65
    .catchall {:try_start_31 .. :try_end_65} :catchall_2b

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0
.end method

.method public setStackPolicyVisibility(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPolicyVisibility(Z)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    :cond_11
    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StackWindowController stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
