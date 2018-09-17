.class public Lcom/android/server/wm/FreeformStackWindowController;
.super Ljava/lang/Object;
.source "FreeformStackWindowController.java"


# static fields
.field private static final DEBUG:Z

.field static final DEBUG_DIM_LAYER:Z = false

.field private static final TAG:Ljava/lang/String; = "FreeformStackWindowController"


# instance fields
.field private mDecorCaptionHeight:I

.field private final mDefaultDexBounds:Landroid/graphics/Rect;

.field private mForceHideFloatingMultiWindow:Z

.field private mFreeformRoundCorner:F

.field private mFreeformTaskIdToOpen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGrantPermissionComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mH:Landroid/os/Handler;

.field private mLocalForceHideFloatingMultiWindow:Z

.field private mMinimizeContainerBounds:Landroid/graphics/Rect;

.field private final mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field private mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

.field final mTaskIdToLaunchBounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpDimBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/FreeformStackWindowController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/FreeformStackWindowController;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/FreeformStackWindowController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpFloats:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    iput-boolean v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mLocalForceHideFloatingMultiWindow:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGrantPermissionComponents:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x3c0

    const/16 v2, 0x2d0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDefaultDexBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v0, p2, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mH:Landroid/os/Handler;

    return-void
.end method

.method private getLastBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    if-eqz v1, :cond_a

    iget-object v0, p1, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    iput-object v2, p1, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDefaultDexBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method private isVisibleOrBehindKeyguard(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3c

    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3c

    const/4 v0, 0x1

    :goto_c
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_44

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_44

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_44

    if-nez v1, :cond_3e

    iget v3, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v3, :cond_44

    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v2

    if-nez v2, :cond_34

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_34

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3a

    :cond_34
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_3b

    :cond_3a
    const/4 v0, 0x1

    :cond_3b
    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_c

    :cond_3e
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_22

    :cond_44
    move v0, v2

    goto :goto_3b
.end method


# virtual methods
.method public addFreeformTaskToOpen(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/wm/FreeformStackWindowController;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string/jumbo v0, "FreeformStackWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addFreeformTaskToOpen: taskId="

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

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    monitor-exit v1

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method animateFreeformDimLayerLocked(Lcom/android/server/wm/DimLayerController$DimLayerState;)Z
    .registers 26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_29

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    :goto_16
    if-eqz v5, :cond_26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v19, v0

    if-nez v19, :cond_2b

    :cond_26
    const/16 v19, 0x0

    return v19

    :cond_29
    const/4 v5, 0x0

    goto :goto_16

    :cond_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_79

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v13, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    move/from16 v19, v0

    if-nez v19, :cond_3f

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_3f

    iget-boolean v0, v13, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_3f

    iget-object v0, v13, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_3f

    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->isFullscreen()Z

    move-result v19

    if-eqz v19, :cond_3f

    move-object/from16 v17, v16

    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_23d

    iget-boolean v0, v8, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23d

    iget-object v4, v8, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :goto_98
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v19, v0

    if-eqz v19, :cond_240

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_240

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v9

    move-object/from16 v0, v18

    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v9, :cond_243

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v7

    :goto_d6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v7, :cond_251

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v19

    if-eqz v19, :cond_251

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v19

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_246

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v6, v19

    if-ltz v19, :cond_246

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v20, v15

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v21, v6

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v15, v22

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v6, v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_127
    if-eqz v10, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v2, v20, v19

    :cond_14a
    if-eqz v4, :cond_15f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    mul-float v2, v2, v19

    :cond_15f
    if-eqz v3, :cond_174

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    mul-float v2, v2, v19

    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1dd

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v11

    if-eqz v11, :cond_1dd

    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    iget v0, v11, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v20, v0

    iget v0, v11, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    iget v0, v11, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v20, v0

    iget v0, v11, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1dd
    if-eqz v7, :cond_1fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    mul-float v2, v2, v19

    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpFloats:[F

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    if-lez v19, :cond_234

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpDimBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    if-lez v19, :cond_234

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpFloats:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DimLayer;->animateFreeformDimLayerInner([FF)V

    :cond_234
    if-nez v7, :cond_23a

    if-nez v10, :cond_23a

    if-eqz v4, :cond_25c

    :cond_23a
    const/16 v19, 0x1

    :goto_23c
    return v19

    :cond_23d
    const/4 v4, 0x0

    goto/16 :goto_98

    :cond_240
    const/4 v3, 0x0

    goto/16 :goto_b8

    :cond_243
    const/4 v7, 0x0

    goto/16 :goto_d6

    :cond_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_127

    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_127

    :cond_25c
    if-eqz v3, :cond_261

    const/16 v19, 0x1

    goto :goto_23c

    :cond_261
    const/16 v19, 0x0

    goto :goto_23c
.end method

.method applayHiddenFloatingMultiWindowAnimation(Lcom/android/server/wm/WindowState;)V
    .registers 8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_c

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    :cond_c
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_20

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v2, :cond_21

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_21

    :cond_20
    return-void

    :cond_21
    if-eqz v1, :cond_39

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_38
    return-void

    :cond_39
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_38
.end method

.method public applyForceHidingPolicy(Lcom/android/server/wm/WindowState;)V
    .registers 8

    const/high16 v5, 0x4000000

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_37

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v2, v3, :cond_37

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v2, v5

    if-nez v2, :cond_25

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->requestForceHiding:Z

    if-eqz v2, :cond_37

    :cond_25
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    :cond_2b
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_37

    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->isVisibleOrBehindKeyguard(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_37

    iput-boolean v4, p0, Lcom/android/server/wm/FreeformStackWindowController;->mLocalForceHideFloatingMultiWindow:Z

    :cond_37
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_4e

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x900

    if-ne v1, v2, :cond_4e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_4e

    iput-boolean v4, p0, Lcom/android/server/wm/FreeformStackWindowController;->mLocalForceHideFloatingMultiWindow:Z

    :cond_4e
    return-void
.end method

.method canBeHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v3, 0x1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_1b

    return v3

    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x8ff

    if-ne v1, v2, :cond_1b

    return v3

    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public checkAppTransitionForForceHiding(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->requestForceHiding:Z

    if-nez v4, :cond_41

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    :cond_41
    move-object v2, v0

    :cond_42
    if-eqz v2, :cond_47

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    :cond_47
    return-void
.end method

.method public checkRequestForceHidingApp(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_27

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    monitor-exit p0

    return v3

    :cond_24
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    :catchall_27
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method clearMinimizeAnimStateLocked(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v3, v2, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    if-eqz v3, :cond_5

    iput v4, v2, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    goto :goto_5

    :cond_1e
    return-void
.end method

.method createKeepVisibleAnimation()Landroid/view/animation/Animation;
    .registers 5

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x150

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/android/server/wm/FreeformStackWindowController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FreeformStackWindowController$2;-><init>(Lcom/android/server/wm/FreeformStackWindowController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method dismissGuideWindow(Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    iput-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const-string/jumbo v0, "FreeformStackWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissGuideWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method drawFreeformRoundDimLayerInnerLocked(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)V
    .registers 19

    iget v2, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformRoundCorner:F

    iget-object v9, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v9

    if-eqz v9, :cond_48

    :cond_a
    :goto_a
    :try_start_a
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/high16 v9, -0x1000000

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_68

    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v9, v2, v2, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_41
    invoke-virtual {v6, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/view/Surface;->release()V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_47} :catch_7d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a .. :try_end_47} :catch_8b

    :goto_47
    return-void

    :cond_48
    iget-boolean v9, p1, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v10, v8, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getFreeformDensity(II)I

    move-result v5

    if-lez v5, :cond_a

    iget v9, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformRoundCorner:F

    iget v10, v8, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float v2, v9, v10

    goto :goto_a

    :cond_68
    :try_start_68
    new-instance v9, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v9, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_7c} :catch_7d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_68 .. :try_end_7c} :catch_8b

    goto :goto_41

    :catch_7d
    move-exception v4

    const-string/jumbo v9, "FreeformStackWindowController"

    const-string/jumbo v10, "drawFreeformRoundedDim: IllegalExeption"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_47

    :catch_8b
    move-exception v3

    const-string/jumbo v9, "FreeformStackWindowController"

    const-string/jumbo v10, "drawFreeformRoundedDim: ResourceException"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_47
.end method

.method excludedTouchableRegion(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .registers 9

    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformStackWindowController;->isForceHidingFloatingMultiWindow()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_41

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getStackById(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_41

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v1, Lcom/android/server/wm/Task;->mHiddenState:I

    if-nez v4, :cond_22

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_22

    :cond_41
    return-void
.end method

.method getDecorCaptionHeight()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDecorCaptionHeight:I

    return v0
.end method

.method getLaunchBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;I)Landroid/graphics/Rect;
    .registers 14

    const/4 v10, 0x0

    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v8, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDefaultDexBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    iget v7, v0, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v8, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDefaultDexBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    iget-object v7, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDefaultDexBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v7, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v9, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v2, Landroid/graphics/Rect;->right:I

    packed-switch p2, :pswitch_data_b0

    :cond_4e
    :goto_4e
    return-object v1

    :pswitch_4f
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    move-object v1, v5

    goto :goto_4e

    :cond_57
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->getLastBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_4e

    :cond_62
    move-object v1, v2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v7

    if-nez v7, :cond_4e

    iput-object v6, p1, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    goto :goto_4e

    :pswitch_6c
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    move-object v1, v2

    goto :goto_4e

    :cond_74
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->getLastBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_4e

    :cond_7f
    move-object v1, v5

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v7

    if-nez v7, :cond_4e

    iput-object v6, p1, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    goto :goto_4e

    :pswitch_89
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->getLastBoundsForMetaKeyEventLocked(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_4e

    :cond_94
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    goto :goto_4e

    :pswitch_97
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v7

    if-nez v7, :cond_4e

    const/4 v1, 0x0

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4e

    iput-object v6, p1, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    goto :goto_4e

    nop

    :pswitch_data_b0
    .packed-switch 0x13
        :pswitch_97
        :pswitch_89
        :pswitch_4f
        :pswitch_6c
    .end packed-switch
.end method

.method public getMinimizeContainerBounds()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method isDesktopModeLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    return v0
.end method

.method isForceHidingFloatingMultiWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    return v0
.end method

.method loadMinimizeAnimationLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 29

    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v18

    if-eqz v18, :cond_14e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Point;

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    :goto_38
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    if-eqz p3, :cond_46

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_46
    if-eqz v18, :cond_17b

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    :goto_50
    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v16, v0

    if-eqz v18, :cond_185

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    :goto_5e
    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v17, v0

    new-instance v24, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float v9, v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float v10, v5, v6

    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v13, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz v18, :cond_18f

    const-wide/16 v6, 0xc8

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v6, 0x64

    invoke-virtual {v13, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_d2
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v14, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    if-nez v18, :cond_105

    sget-object v5, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v5, Lcom/android/server/wm/FreeformStackWindowController$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/wm/FreeformStackWindowController$1;-><init>(Lcom/android/server/wm/FreeformStackWindowController;ILandroid/graphics/Rect;)V

    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_105
    return-object v14

    :cond_106
    new-instance v22, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, v19

    invoke-interface {v5, v6, v7, v8, v0}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_38

    :cond_14e
    new-instance v22, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    :cond_16c
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_38

    :cond_17b
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    goto/16 :goto_50

    :cond_185
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    goto/16 :goto_5e

    :cond_18f
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e4ccccd    # 0.2f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto/16 :goto_d2
.end method

.method loadResource()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_62

    const v1, 0x105013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformRoundCorner:F

    const v1, 0x1050141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDecorCaptionHeight:I

    :goto_23
    sget-boolean v1, Lcom/android/server/wm/FreeformStackWindowController;->DEBUG:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "FreeformStackWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadResource: mFreeformRoundCorner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformRoundCorner:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mDecorCaptionHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDecorCaptionHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isDesktopMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-void

    :cond_62
    const v1, 0x1050149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformRoundCorner:F

    const v1, 0x105014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mDecorCaptionHeight:I

    goto :goto_23
.end method

.method loadUnminimizeAnimationLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 27

    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v16

    if-eqz v16, :cond_13c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Point;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    :goto_38
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    if-eqz p3, :cond_46

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_46
    if-eqz v16, :cond_169

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    :goto_50
    sub-int/2addr v3, v4

    int-to-float v14, v3

    if-eqz v16, :cond_173

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_5c
    sub-int/2addr v3, v4

    int-to-float v15, v3

    new-instance v22, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v3, v15, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float v7, v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float v8, v3, v4

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz v16, :cond_17d

    const-wide/16 v4, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v4, 0x64

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_ca
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    if-nez v16, :cond_f3

    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :cond_f3
    return-object v12

    :cond_f4
    new-instance v19, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/view/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_38

    :cond_13c
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    :cond_15a
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_38

    :cond_169
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    goto/16 :goto_50

    :cond_173
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    goto/16 :goto_5c

    :cond_17d
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto/16 :goto_ca
.end method

.method moveTaskToFreeformStackIfNeededLocked(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_4c

    sget-boolean v1, Lcom/android/server/wm/FreeformStackWindowController;->DEBUG:Z

    if-eqz v1, :cond_37

    const-string/jumbo v1, "FreeformStackWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "move pending task to freeform stack, taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", launchBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mH:Landroid/os/Handler;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4c
    return-void
.end method

.method public notifyApplyMinimizeFreeformPolicy(Landroid/os/IBinder;)V
    .registers 8

    sget-boolean v3, Lcom/android/server/wm/FreeformStackWindowController;->DEBUG:Z

    if-eqz v3, :cond_30

    const-string/jumbo v3, "FreeformStackWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyApplyMinimizeFreeformPolicy: mFreeformTaskIdToOpen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v1, v3, Lcom/android/server/wm/Task;->mTaskId:I

    :cond_59
    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mFreeformTaskIdToOpen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_36 .. :try_end_62} :catchall_74

    move-result v3

    if-eqz v3, :cond_6a

    :try_start_65
    iget-object v3, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v3, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyApplyFreeformMinimizePolicy(I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_6f
    .catchall {:try_start_65 .. :try_end_6a} :catchall_74

    :cond_6a
    :goto_6a
    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catch_6f
    move-exception v0

    :try_start_70
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_6a

    :catchall_74
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method notifyProcessKillByClosingFreeformLocked(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformStackWindowController;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_d

    if-lez p1, :cond_d

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyProcessKillByClosingFreeform(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method

.method postApplyForceHidingPolicy()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    iget-boolean v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mLocalForceHideFloatingMultiWindow:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    return-void
.end method

.method public preApplyForceHidingPolicy()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mLocalForceHideFloatingMultiWindow:Z

    return-void
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMinimizeContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_d
    return-void
.end method

.method setForceHidingFloatingMultiWindow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mForceHideFloatingMultiWindow:Z

    return-void
.end method

.method public setGrantPermissionComponents(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGrantPermissionComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mMultiWindowService:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-void
.end method

.method shouldBeHiddenIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8fe

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformStackWindowController;->isForceHidingFloatingMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->canBeHiddenFloatingMultiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method showGuideWindow(Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_43

    const-string/jumbo v0, "dismiss before showing"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FreeformStackWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V

    const-string/jumbo v0, "FreeformStackWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showGuideWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_17

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
