.class Lcom/android/server/am/LaunchingTaskPositioner;
.super Ljava/lang/Object;
.source "LaunchingTaskPositioner.java"


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MAX_BOUNDS_CONFLICT_COUNT:I = 0xc8

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final SHIFT_POLICY_TOPTASK_DIAGONAL_DOWN:I = 0x4

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private mDefaultFreeformHeight:I

.field private mDefaultFreeformStartX:I

.field private mDefaultFreeformStartY:I

.field private mDefaultFreeformStepHorizontal:I

.field private mDefaultFreeformStepVertical:I

.field private mDefaultFreeformWidth:I

.field private mDefaultStartBoundsConfigurationSet:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_7
    if-ltz v1, :cond_3a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_37

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_35
    const/4 v3, 0x1

    return v3

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_3a
    return v4
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v3, 0x4

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private static findBoundsConflictTasks(Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_6
    if-ltz v1, :cond_26

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .registers 7

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v3, :cond_22

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v3

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v3

    int-to-float v1, v3

    int-to-float v3, v2

    mul-float/2addr v3, v0

    div-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    :cond_22
    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    :cond_34
    return v2
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I
    .registers 7

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v3, :cond_22

    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v3

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v3

    int-to-float v1, v3

    int-to-float v3, v2

    mul-float/2addr v3, v0

    div-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    :cond_22
    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    :cond_34
    return v2
.end method

.method private isUsedPosition(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/android/server/am/LaunchingTaskPositioner;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method private offestToCenterPosition(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZI)V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZIZ)V

    return-void
.end method

.method private position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZIZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    const/4 v12, 0x4

    move/from16 v0, p5

    if-ne v0, v12, :cond_f9

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_19
    if-ltz v6, :cond_2e

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    iget-object v12, v10, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v12, :cond_a7

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_a7

    move-object v9, v10

    :cond_2e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v9, :cond_ef

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToRightFar(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_77

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->top:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_77
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToBottomFar(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_8b

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->left:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_8b
    move-object/from16 v0, p3

    invoke-static {v0, v3, v7}, Lcom/android/server/am/LaunchingTaskPositioner;->findBoundsConflictTasks(Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_ab

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_a7
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_19

    :cond_ab
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Lcom/android/server/am/LaunchingTaskPositioner;->isUsedPosition(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_ef

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToRightFar(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_db

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->top:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_db
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToBottomFar(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_ef

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->left:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_ef
    if-eqz p6, :cond_f8

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_f8
    return-void

    :cond_f9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_104
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_12e

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftStartingPoint(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->shiftedToFar(Landroid/graphics/Rect;I)Z

    move-result v12

    if-eqz v12, :cond_161

    if-nez p4, :cond_138

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_12e
    :goto_12e
    if-eqz p6, :cond_137

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_137
    return-void

    :cond_138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x1

    :cond_161
    if-eqz v8, :cond_181

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    if-gt v12, v13, :cond_177

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    if-le v12, v13, :cond_181

    :cond_177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_12e

    :cond_181
    add-int/lit8 v5, v4, 0x1

    const/16 v12, 0xc8

    if-le v4, v12, :cond_2ae

    sget-object v12, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "LaunchingTaskPositioner.position: max_bounds_conflict_count, proposal="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mTmpOriginal="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", allowRestart="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", restarted="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mAvailableRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDefaultFreeformStartX="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDefaultFreeformStartY="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDisplayWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDisplayHeight"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDefaultFreeformWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDefaultFreeformHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDefaultFreeformStepHorizontal="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mDefaultFreeformStepVertical="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", Callers="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x8

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v12, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "LaunchingTaskPositioner.position: max_bounds_conflict_count, adjusted proposal="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", break!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_12e

    :cond_2ae
    move v4, v5

    goto/16 :goto_104
.end method

.method private positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    iget v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    add-int/2addr v3, p3

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    add-int/2addr v5, p4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->offestToCenterPosition(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void

    :cond_27
    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget-object v2, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;I)V
    .registers 5

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_1a

    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :goto_b
    return-void

    :pswitch_c
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    neg-int v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_b

    :pswitch_13
    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_b

    nop

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method private shiftedToBottomFar(Landroid/graphics/Rect;)Z
    .registers 4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private shiftedToFar(Landroid/graphics/Rect;I)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_2e

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_15

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2c

    :cond_15
    :goto_15
    return v0

    :pswitch_16
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e

    :pswitch_21
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_2a

    :goto_29
    return v0

    :cond_2a
    move v0, v1

    goto :goto_29

    :cond_2c
    move v0, v1

    goto :goto_15

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_21
        :pswitch_16
    .end packed-switch
.end method

.method private shiftedToRightFar(Landroid/graphics/Rect;)Z
    .registers 4

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method configure(Landroid/graphics/Rect;)V
    .registers 15

    const/16 v12, 0x3c0

    const/16 v11, 0x2d0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez p1, :cond_93

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    iget v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    invoke-virtual {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    :goto_11
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v4, v1, :cond_9a

    const/4 v3, 0x1

    :goto_20
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v6

    if-eqz v6, :cond_a1

    if-eqz v3, :cond_9c

    iput v11, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iput v12, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    :goto_2e
    iget v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    div-int/lit8 v6, v4, 0x10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    div-int/lit8 v6, v1, 0x10

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    iput-boolean v9, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepHorizontal:I

    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStepVertical:I

    :cond_92
    return-void

    :cond_93
    iget-object v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_11

    :cond_9a
    const/4 v3, 0x0

    goto :goto_20

    :cond_9c
    iput v12, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iput v11, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    goto :goto_2e

    :cond_a1
    if-eqz v3, :cond_c2

    const v5, 0x3f2b851f    # 0.67f

    :goto_a6
    if-eqz v3, :cond_c5

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_aa
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-eqz v6, :cond_b6

    if-eqz v3, :cond_b0

    :cond_b0
    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v3, :cond_b4

    :cond_b4
    const/high16 v2, 0x3f000000    # 0.5f

    :cond_b6
    int-to-float v6, v4

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    int-to-float v6, v1

    mul-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    goto/16 :goto_2e

    :cond_c2
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_a6

    :cond_c5
    const v2, 0x3f2b851f    # 0.67f

    goto :goto_aa
.end method

.method getDefaultTaskBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_f

    invoke-direct {p0, p4}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v0

    invoke-direct {p0, p4}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultHeight()I

    move-result v7

    if-lez v8, :cond_26

    if-lez v7, :cond_26

    invoke-virtual {p3, v2, v2, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    :cond_26
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartX:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformStartY:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_41
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->offestToCenterPosition(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/LaunchingTaskPositioner;->position(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;ZIZ)V

    iget-object v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mTmpProposal:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    return-void
.end method

.method setDisplay(Landroid/view/Display;)V
    .registers 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDisplayHeight:I

    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;II)V

    return-void
.end method

.method updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;II)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            "II)V"
        }
    .end annotation

    iget-boolean v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultStartBoundsConfigurationSet:Z

    if-nez v8, :cond_5

    return-void

    :cond_5
    const/4 v1, -0x1

    const/4 v0, -0x1

    iget-object v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDexDefaultHeight()I

    move-result v0

    :cond_17
    if-nez p3, :cond_3f

    iget-object v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v8

    if-eqz v8, :cond_37

    iget v5, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v4, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    if-lez p4, :cond_30

    if-lez p5, :cond_30

    move v5, p4

    move/from16 v4, p5

    :cond_2c
    :goto_2c
    invoke-direct {p0, p1, p2, v5, v4}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    return-void

    :cond_30
    if-lez v1, :cond_2c

    if-lez v0, :cond_2c

    move v5, v1

    move v4, v0

    goto :goto_2c

    :cond_37
    iget v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformWidth:I

    iget v9, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mDefaultFreeformHeight:I

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    return-void

    :cond_3f
    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v7

    invoke-direct {p0, p3}, Lcom/android/server/am/LaunchingTaskPositioner;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;)I

    move-result v2

    iget-object v8, p0, Lcom/android/server/am/LaunchingTaskPositioner;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v8

    if-eqz v8, :cond_56

    if-lez p4, :cond_69

    if-lez p5, :cond_69

    move v7, p4

    move/from16 v2, p5

    :cond_56
    :goto_56
    iget v8, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v6, v8, 0x70

    iget v8, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v3, v8, 0x7

    const/16 v8, 0x30

    if-ne v6, v8, :cond_74

    const/4 v8, 0x5

    if-ne v3, v8, :cond_70

    invoke-direct {p0, p1, p2, v7, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    :goto_68
    return-void

    :cond_69
    if-lez v1, :cond_56

    if-lez v0, :cond_56

    move v7, v1

    move v2, v0

    goto :goto_56

    :cond_70
    invoke-direct {p0, p1, p2, v7, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->positionTopLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_68

    :cond_74
    const/16 v8, 0x50

    if-ne v6, v8, :cond_83

    const/4 v8, 0x5

    if-ne v3, v8, :cond_7f

    invoke-direct {p0, p1, p2, v7, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomRight(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_68

    :cond_7f
    invoke-direct {p0, p1, p2, v7, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->positionBottomLeft(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_68

    :cond_83
    sget-object v8, Lcom/android/server/am/LaunchingTaskPositioner;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received unsupported gravity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", positioning in the center instead."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v7, v2}, Lcom/android/server/am/LaunchingTaskPositioner;->positionCenter(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;II)V

    goto :goto_68
.end method
