.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer",
        "<",
        "Lcom/android/server/wm/AppWindowToken;",
        ">;",
        "Lcom/android/server/wm/DimLayer$DimLayerUser;"
    }
.end annotation


# static fields
.field private static final BOUNDS_CHANGE_NONE:I = 0x0

.field private static final BOUNDS_CHANGE_POSITION:I = 0x1

.field private static final BOUNDS_CHANGE_SIZE:I = 0x2

.field static final DEBUG_BACKGROUND:Z

.field static final INVALID_MAX_SIZE:I = -0x1

.field static final INVALID_MIN_SIZE:I = -0x1

.field private static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mBackgroundBounds:Landroid/graphics/Rect;

.field mBackgroundClipRect:Landroid/graphics/Rect;

.field mBackgroundControl:Landroid/view/SurfaceControl;

.field mBackgroundFinalClipRect:Landroid/graphics/Rect;

.field mBackgroundVisible:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mDeferRemoval:Z

.field mDexCompatUiMode:I

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private mFillsParent:Z

.field private mHasFullscreenWinPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mHiddenState:I

.field private mHomeTask:Z

.field mIsDexCompatEnabled:Z

.field mLastBackgroundAlpha:F

.field mLastBackgroundClipRect:Landroid/graphics/Rect;

.field mLastBackgroundFinalClipRect:Landroid/graphics/Rect;

.field mLastBackgroundHeight:I

.field mLastBackgroundLayer:I

.field mLastBackgroundWidth:I

.field mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMinimizeAnimState:I

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mPreserveNonFloatingState:Z

.field private mResizeMode:I

.field private mRotation:I

.field private mScrollValid:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSnapTargetFullscreen:Z

.field mSnapWindowDeferAnimation:Z

.field mSnapWindowTarget:Z

.field mStack:Lcom/android/server/wm/TaskStack;

.field mSupportFreefromDensity:Z

.field private mSupportsPictureInPicture:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field private final mTempInsetBounds:Landroid/graphics/Rect;

.field mTmpBackgroundBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;

.field mTmpTaskDimBounds:Landroid/graphics/Rect;

.field mUseFreeformBorder:Z

.field final mUserId:I


# direct methods
.method static synthetic -com_android_server_wm_Task-mthref-0(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/Task;->SAFE_DEBUG:Z

    sget-boolean v0, Lcom/android/server/wm/Task;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    return-void
.end method

.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;Landroid/graphics/Rect;Landroid/content/res/Configuration;IZZLandroid/app/ActivityManager$TaskDescription;Lcom/android/server/wm/TaskWindowContainerController;)V
    .registers 14

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mUseFreeformBorder:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mHiddenState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpBackgroundBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundLayer:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundFinalClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundFinalClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/-$Lambda$1UakYTCpeNaU7jHM5T7snvu0jDw;

    invoke-direct {v0}, Lcom/android/server/wm/-$Lambda$1UakYTCpeNaU7jHM5T7snvu0jDw;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mHasFullscreenWinPredicate:Ljava/util/function/Predicate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mSnapWindowTarget:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mSnapTargetFullscreen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mSnapWindowDeferAnimation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iput p7, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iput-boolean p8, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    iput-boolean p9, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    if-eqz p6, :cond_db

    iget v0, p6, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d9

    const/4 v0, 0x1

    :goto_ca
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    invoke-virtual {p0, p11}, Lcom/android/server/wm/Task;->setController(Lcom/android/server/wm/WindowContainerController;)V

    invoke-direct {p0, p5, p6}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    iput-object p10, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setOrientation(I)V

    return-void

    :cond_d9
    const/4 v0, 0x0

    goto :goto_ca

    :cond_db
    const/4 v0, 0x0

    goto :goto_ca
.end method

.method private getAdjustedAddPosition(I)I
    .registers 5

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-lt p1, v1, :cond_d

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_23

    if-ge v0, p1, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v2, :cond_20

    add-int/lit8 p1, p1, 0x1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private hasWindowsAlive()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_9
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasWindowsAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1e
    return v2
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I
    .registers 11

    const/4 v6, 0x0

    if-nez p2, :cond_5

    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :cond_5
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v4, 0x1

    :cond_f
    if-nez p1, :cond_39

    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_39

    xor-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_39

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "null bounds but non empty configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_39
    if-eqz p1, :cond_4c

    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_4c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "non null bounds, but empty configuration"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4c
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_6d

    iget-object v5, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v3, v5, Landroid/view/DisplayInfo;->rotation:I

    if-nez p1, :cond_70

    const/4 v5, 0x1

    :goto_65
    iput-boolean v5, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-eqz v5, :cond_6d

    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    :cond_6d
    if-nez p1, :cond_72

    return v6

    :cond_70
    move v5, v6

    goto :goto_65

    :cond_72
    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-ne v2, v5, :cond_9e

    iget v5, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-eq v5, v3, :cond_88

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_9e

    :cond_88
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9d

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_9d
    return v6

    :cond_9e
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ne v5, v6, :cond_af

    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_b0

    :cond_af
    const/4 v0, 0x1

    :cond_b0
    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_c8

    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v5, v6, :cond_ca

    :cond_c8
    or-int/lit8 v0, v0, 0x2

    :cond_ca
    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetScrollLocked()V

    iput v3, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-eqz v1, :cond_e3

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    if-nez v5, :cond_e3

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    if-nez v5, :cond_e3

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    :cond_e3
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-eqz v5, :cond_e9

    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :cond_e9
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0
.end method

.method private useCurrentBounds()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isTaskResizeableByDockedStack(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_19

    if-nez v0, :cond_1a

    :cond_19
    :goto_19
    return v1

    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-nez v2, :cond_19

    const/4 v1, 0x0

    goto :goto_19
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    return-void
.end method

.method adjustAnimLayerOfChildren(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_2a

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_27

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-lez v2, :cond_27

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v3, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_2a
    return-void
.end method

.method adjustBackgroundLayer(Lcom/android/server/wm/WindowState;)V
    .registers 8

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    if-le v0, v3, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    goto :goto_a

    :cond_27
    add-int/lit8 v0, v0, -0x3

    iget v3, p0, Lcom/android/server/wm/Task;->mLastBackgroundLayer:I

    if-eq v3, v0, :cond_58

    sget-object v3, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "layer mBackgroundControl taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_58
    iput v0, p0, Lcom/android/server/wm/Task;->mLastBackgroundLayer:I

    return-void
.end method

.method alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    return-void

    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_35

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    :goto_28
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_28
.end method

.method applyScrollToAllWindows(II)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_8
    if-ltz v0, :cond_31

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1a
    if-ltz v3, :cond_2e

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iput p1, v2, Lcom/android/server/wm/WindowState;->mXOffset:I

    iput p2, v2, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowState;->applyScrollToChild(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    return-void
.end method

.method applyScrollToWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mYOffset:I

    :cond_14
    return-void
.end method

.method cancelTaskThumbnailTransition()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method clearPreserveNonFloatingState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    return-void
.end method

.method createBackgroundSurface(Lcom/android/server/wm/WindowState;)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_8f

    if-eqz p1, :cond_8f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->isFullscreenMainWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "create mBackgroundControl taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "task-background (dexcompat) for t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    const v6, 0x20004

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBackgroundSurfaceBoundariesLocked(Lcom/android/server/wm/WindowState;)V

    sget-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show mBackgroundControl taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    :cond_8f
    return-void
.end method

.method cropWindowsToStackBounds()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0
.end method

.method destroyBackgroundSurface()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy mBackgroundControl taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v3, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2c
    return-void
.end method

.method public dimFullscreen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10

    const/4 v6, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFillsParent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mdr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "appTokens="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mTempInsetBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFullConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mOverrideConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mResizeMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v5}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/Task;->mHiddenState:I

    if-eqz v4, :cond_147

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mHiddenState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mHiddenState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_147
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z

    if-nez v4, :cond_164

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " freeformDensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mSupportFreefromDensity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_164
    iget v4, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    if-eq v4, v6, :cond_181

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mMinWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_181
    iget v4, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    if-eq v4, v6, :cond_19e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mMinHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_19e
    iget v4, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    if-eq v4, v6, :cond_1bb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mMaxWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1bb
    iget v4, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-eq v4, v6, :cond_1d8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mMaxHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1d8
    iget v4, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    if-eqz v4, :cond_1f5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mMinimizeAnimState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1f5
    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    if-eqz v4, :cond_212

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " mLastBoundsForMetaKeyEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mLastBoundsForMetaKeyEvent:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_212
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_231
    if-ltz v1, :cond_267

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Activity #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p2, v2}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_231

    :cond_267
    return-void
.end method

.method fillsParent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method forceWindowsScaleable(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->forceWindowsScaleableInTransaction(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_23

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    return-void

    :catchall_23
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v1
.end method

.method getBackgroundTargetWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 6

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isFullscreenMainWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_18

    return-object v2

    :cond_2b
    const/4 v4, 0x0

    return-object v4
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method getController()Lcom/android/server/wm/TaskWindowContainerController;
    .registers 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v1

    :goto_e
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_2c
    const/4 v1, 0x0

    goto :goto_e

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-nez v2, :cond_5b

    if-eqz v1, :cond_47

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    :goto_46
    return-void

    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_46

    :cond_5b
    iget-object v2, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_46

    :cond_61
    if-eqz v0, :cond_66

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    :cond_66
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDragResizeMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getMaxVisibleBounds(Landroid/graphics/Rect;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_a
    if-ltz v1, :cond_8e

    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v5, :cond_22

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v5

    if-nez v5, :cond_22

    iget-boolean v5, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v5, :cond_46

    :cond_22
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v5

    if-eqz v5, :cond_3b

    iget v5, p0, Lcom/android/server/wm/Task;->mHiddenState:I

    if-ne v5, v7, :cond_44

    iget v5, p0, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    if-eq v5, v7, :cond_40

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v5, :cond_42

    iget-object v5, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v2

    :cond_3b
    :goto_3b
    if-nez v2, :cond_46

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_40
    const/4 v2, 0x1

    goto :goto_3b

    :cond_42
    const/4 v2, 0x0

    goto :goto_3b

    :cond_44
    const/4 v2, 0x0

    goto :goto_3b

    :cond_46
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMaxVisibleAppWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_3d

    if-nez v0, :cond_55

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_3d

    :cond_55
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_63

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, p1, Landroid/graphics/Rect;->left:I

    :cond_63
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_71

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    :cond_71
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_7f

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, p1, Landroid/graphics/Rect;->right:I

    :cond_7f
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_3d

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3d

    :cond_8e
    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getResizeMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    return v0
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTempInsetBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v2, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    const/4 v2, 0x0

    return-object v2
.end method

.method getTopVisibleNowWindow()Lcom/android/server/wm/WindowState;
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_9
    if-ltz v0, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v3

    if-eqz v3, :cond_20

    return-object v2

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_23
    return-object v4
.end method

.method public hasFullScreenWindowLocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mHasFullscreenWinPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method inFreeformWorkspace()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method inPinnedWorkspace()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public isAttachedToDisplay()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isDragResizing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method isFullscreen()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method isFullscreenMainWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v3, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v0, v2, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, v2, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_28

    return v3

    :cond_28
    return v1
.end method

.method isHomeTask()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    return v0
.end method

.method isResizeable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method isSnapTargetFullscreen()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSnapTargetFullscreen:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method isSnapWindowTarget()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSnapWindowTarget:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method onParentSet()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forceWindowsScaleable(Z)V

    goto :goto_15
.end method

.method positionAt(ILandroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getAdjustedAddPosition(I)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    check-cast p2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/AppWindowToken;Z)V

    return-void
.end method

.method prepareFreezingBounds()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method preserveOrientationOnResize()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method removeChild(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "removeAppToken: last token"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeIfPossible()V

    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->hasFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const-string/jumbo v1, "removing-apptoken"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->removeFakedRelaunchAnimTokensLocked(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V

    :cond_66
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTask: deferring removing taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .registers 6

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTask: removing taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "removeTask"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x791b

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    :cond_43
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->destroyBackgroundSurface()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskStack;IZ)V
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne p1, v4, :cond_13

    iget-object v4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v4

    if-eqz v4, :cond_b3

    iget v4, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v4, v8, :cond_b3

    :cond_13
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_3f

    sget-object v4, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reParentTask: removing taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string/jumbo v5, "reParentTask"

    aput-object v5, v4, v7

    const/16 v5, 0x791b

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v4, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_da

    iput-boolean v7, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    :goto_5e
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v4, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v4, v8, :cond_dd

    const/4 v1, 0x1

    :goto_67
    iget v4, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v4, v8, :cond_df

    const/4 v3, 0x1

    :goto_6c
    if-eqz v3, :cond_e1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eqz v4, :cond_7d

    iget v4, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    if-ne v4, v7, :cond_7d

    invoke-virtual {p0, v9, v7}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v4

    invoke-virtual {p1, p0, p2, v4, p3}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    if-eq v2, v0, :cond_a4

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    :cond_a4
    if-nez v1, :cond_a8

    if-eqz v3, :cond_b2

    :cond_a8
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    :cond_b2
    return-void

    :cond_b3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " already child of stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_da
    iput-boolean v9, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    goto :goto_5e

    :cond_dd
    const/4 v1, 0x0

    goto :goto_67

    :cond_df
    const/4 v3, 0x0

    goto :goto_6c

    :cond_e1
    if-eqz v1, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->destroyBackgroundSurface()V

    goto :goto_7d
.end method

.method resetScrollLocked()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/Task;->applyScrollToAllWindows(II)V

    :cond_a
    return-void
.end method

.method resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz p3, :cond_9

    or-int/lit8 v0, v0, 0x2

    :cond_9
    if-nez v0, :cond_c

    return v1

    :cond_c
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    :goto_14
    const/4 v1, 0x1

    return v1

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onMovedByResize()V

    goto :goto_14
.end method

.method scrollLocked(Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->applyScrollToAllWindows(II)V

    return v2
.end method

.method setBackgroundSurfaceBoundariesLocked(Lcom/android/server/wm/WindowState;)V
    .registers 24

    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_39

    :cond_c
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "invalid win="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    if-eqz v16, :cond_477

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getBackgroundTargetWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_477

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformController:Lcom/android/server/wm/FreeformStackWindowController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/FreeformStackWindowController;->getDecorCaptionHeight()I

    move-result v3

    move v12, v3

    neg-int v0, v3

    move/from16 v16, v0

    add-int/lit8 v2, v16, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6b

    const/4 v12, 0x1

    const/4 v2, -0x1

    :cond_6b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/Task;->mTmpBackgroundBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v15, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v15, v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v7, v16, v2

    add-int v16, v14, v13

    add-int v17, v15, v7

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v14, v15, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v14, :cond_b9

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_10c

    :cond_b9
    sget-boolean v16, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v16, :cond_fd

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "pos mBackgroundControl taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/view/SurfaceControl;->setPosition(FF)V

    :cond_10c
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v13, :cond_11c

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v7, :cond_179

    :cond_11c
    if-lez v13, :cond_478

    if-lez v7, :cond_478

    sget-boolean v16, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v16, :cond_168

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "size mBackgroundControl taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Landroid/view/SurfaceControl;->setSize(II)V

    :cond_179
    :goto_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v16

    if-eqz v16, :cond_4b1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v16

    if-nez v16, :cond_4b1

    const/4 v8, 0x1

    :goto_191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v8, :cond_4b4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowSurfaceController;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v5, v0

    :goto_1ae
    if-eqz v8, :cond_4ca

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowSurfaceController;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v6, v0

    :goto_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    sget-boolean v16, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v16, :cond_208

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mBackgroundControl taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " mTmpTaskDimBounds="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastBackgroundFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    sget-boolean v16, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v16, :cond_262

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mBackgroundControl taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " clipRect="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v17, v17, v5

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v17, v17, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v18, v18, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    sub-int v17, v17, v5

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTmpTaskDimBounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    sub-int v17, v17, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_385

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "crop mBackgroundControl ClipRect taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    :cond_385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastBackgroundFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3e6

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "crop mBackgroundControl FinalClipRect taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    :cond_3e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    :cond_477
    return-void

    :cond_478
    sget-boolean v16, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v16, :cond_4a2

    sget-object v16, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "size mBackgroundControl taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " (1,1)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/view/SurfaceControl;->setSize(II)V

    goto/16 :goto_179

    :cond_4b1
    const/4 v8, 0x0

    goto/16 :goto_191

    :cond_4b4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v17, v0

    add-int v5, v16, v17

    goto/16 :goto_1ae

    :cond_4ca
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v17, v0

    add-int v6, v16, v17

    goto/16 :goto_1c3
.end method

.method setDragResizing(ZI)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(II)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Drag resize mode not allow for stack stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    :cond_3e
    return-void
.end method

.method setResizeable(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    return-void
.end method

.method setSendingToBottom(Z)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method setTempInsetBounds(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_7
.end method

.method shouldDeferRemoval()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method showForAllUsers()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    :cond_15
    return v1
.end method

.method stepBackgroundAnimation(J)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_ef

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBackgroundTargetWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBackgroundControl target win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-nez v0, :cond_7d

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    if-eqz v1, :cond_7c

    iget v1, p0, Lcom/android/server/wm/Task;->mLastBackgroundAlpha:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_59

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alpha mBackgroundControl taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " alpha=0 (no window)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_59
    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide mBackgroundControl taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    :cond_7c
    return-void

    :cond_7d
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->adjustBackgroundLayer(Lcom/android/server/wm/WindowState;)V

    iget v1, p0, Lcom/android/server/wm/Task;->mLastBackgroundAlpha:F

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_c8

    sget-boolean v1, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v1, :cond_bf

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alpha mBackgroundControl taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (animating)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_c8
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    if-nez v1, :cond_ef

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show mBackgroundControl taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    :cond_ef
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " appTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mdr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBackgroundSurfaceVisibilityIfNeeded()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5d

    sget-boolean v1, Lcom/android/server/wm/Task;->DEBUG_BACKGROUND:Z

    if-eqz v1, :cond_30

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBackgroundSurfaceVisibilityIfNeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBackgroundTargetWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_5e

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hide mBackgroundControl taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    if-nez v1, :cond_5d

    sget-object v1, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show mBackgroundControl taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/Task;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mBackgroundVisible:Z

    goto :goto_5d
.end method

.method updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V
    .registers 16

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const v11, 0x3f99999a    # 1.2f

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-boolean v8, p0, Lcom/android/server/wm/Task;->mFillsParent:Z

    if-eqz v8, :cond_13

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v9, v8}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    return-void

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v4, v8, Landroid/view/DisplayInfo;->rotation:I

    iget v8, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v8, v4, :cond_1e

    return-void

    :cond_1e
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v8, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v8}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v8

    if-nez v8, :cond_39

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    return-void

    :cond_39
    iget v8, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v8, v4, v9}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v8

    if-eqz v8, :cond_ff

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v8

    if-eqz v8, :cond_ff

    iget v8, p0, Lcom/android/server/wm/Task;->mRotation:I

    invoke-static {v8, v4}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    if-eq v1, v13, :cond_57

    const/4 v8, 0x3

    if-ne v1, v8, :cond_ff

    :cond_57
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v5, v8, v9

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/Task;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v3, :cond_cd

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iput v3, v8, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    cmpg-float v8, v7, v11

    if-gez v8, :cond_cd

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    :cond_cd
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v2, :cond_fa

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    cmpg-float v8, v7, v11

    if-gez v8, :cond_fa

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    :cond_fa
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_ff
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_116

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_116

    iget-object v8, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v13}, Lcom/android/server/wm/TaskWindowContainerController;->requestResize(Landroid/graphics/Rect;I)V

    :cond_116
    return-void
.end method

.method updateMinMaxSizeLocked(IIII)V
    .registers 5

    iput p1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iput p2, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    iput p3, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    iput p4, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    return-void
.end method
