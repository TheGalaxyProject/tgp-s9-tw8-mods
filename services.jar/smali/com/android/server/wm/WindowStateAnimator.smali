.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final PENDING_TRANSACTION_FINISH_WAIT_TIME:J = 0x64L

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field private mAnimDx:I

.field private mAnimDy:I

.field mAnimLayer:I

.field private mAnimateMove:Z

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field private mAnimationStartDelayed:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleDismissed:Z

.field mForceScaleUntilResize:Z

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field mHiddenBeforeRotationAnimation:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastDtDx:F

.field private mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field mLastLayer:I

.field private final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLocalAnimating:Z

.field final mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mStackClip:I

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field private mTmpAnimatingBounds:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field mTmpFinalClipRect:Landroid/graphics/Rect;

.field private final mTmpSize:Landroid/graphics/Rect;

.field private mTmpSourceBounds:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

.field mTransitionDimLayer:I

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    :goto_9f
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-nez v3, :cond_d0

    move-object v3, v4

    :goto_a8
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_d7

    :goto_ae
    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    return-void

    :cond_c7
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "WindowStateAnimator ctor: Display has been removed"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_d0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_a8

    :cond_d7
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_ae
.end method

.method private adjustCropToStackBounds(Landroid/graphics/Rect;Z)V
    .registers 15

    const/4 v11, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->shouldCropToStackBounds()Z

    move-result v6

    if-nez v6, :cond_a

    return-void

    :cond_a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v3, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-interface {v6, v5, v7}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateFixedOrientationFrameIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Z

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v4, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz p2, :cond_f4

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfaceController;->getX()F

    move-result v6

    float-to-int v0, v6

    :goto_2d
    if-eqz p2, :cond_103

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfaceController;->getY()F

    move-result v6

    float-to-int v1, v6

    :goto_36
    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v6, :cond_58

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-ne v6, v7, :cond_112

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    :cond_58
    :goto_58
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_7d

    if-eqz p2, :cond_7d

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7d

    int-to-float v6, v0

    iget v7, v2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    int-to-float v6, v1

    iget v7, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v6, v7

    float-to-int v1, v6

    :cond_7d
    iget-boolean v6, v5, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v6, :cond_88

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->scale(F)V

    :cond_88
    iget v6, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    move-result v6

    if-eqz v6, :cond_ab

    iget v6, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_ab

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    neg-int v9, v9

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    neg-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->inset(IIII)V

    :cond_ab
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_f4
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    goto/16 :goto_2d

    :cond_103
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, v7

    goto/16 :goto_36

    :cond_112
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, v7

    goto/16 :goto_58
.end method

.method private adjustMatrixLocked(Landroid/graphics/Matrix;)V
    .registers 15

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_6c

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v10, :cond_6c

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v10, :cond_6c

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    if-eqz v10, :cond_6c

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v11, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v10, v11, :cond_1f

    return-void

    :cond_1f
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v10, 0x1

    if-le v8, v10, :cond_6c

    const/4 v10, 0x1

    if-le v7, v10, :cond_6c

    const/4 v10, 0x1

    if-le v6, v10, :cond_6c

    const/4 v10, 0x1

    if-le v5, v10, :cond_6c

    add-int/lit8 v1, v8, 0x2

    add-int/lit8 v0, v7, 0x2

    if-le v6, v1, :cond_6d

    int-to-float v10, v1

    int-to-float v11, v8

    div-float v9, v10, v11

    :goto_4f
    if-le v5, v0, :cond_70

    int-to-float v10, v0

    int-to-float v11, v7

    div-float v3, v10, v11

    :goto_55
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v9, v10

    if-nez v10, :cond_61

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v3, v10

    if-eqz v10, :cond_6c

    :cond_61
    int-to-float v10, v8

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    int-to-float v11, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {p1, v9, v3, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_6c
    return-void

    :cond_6d
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_4f

    :cond_70
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_55
.end method

.method private applyCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyCrop: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " clipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " finalClipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz p1, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    :cond_49
    :goto_49
    if-nez p2, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, v0, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->setFinalCropInTransaction(Landroid/graphics/Rect;)V

    :cond_71
    return-void

    :cond_72
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    goto :goto_49
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .registers 15

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    sub-long v2, v10, v8

    sub-long v4, v0, v2

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_19

    return-void

    :cond_19
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const v11, 0x10a0017

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iput-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .registers 13

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    if-nez v0, :cond_f

    return v9

    :cond_f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    move-result v7

    if-eqz v7, :cond_16

    return v9

    :cond_16
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7dd

    if-ne v7, v8, :cond_1f

    return v9

    :cond_1f
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v7, :cond_49

    sget-object v7, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Updating crop win="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mLastCrop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v7, :cond_85

    sget-object v7, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Applying decor to crop win="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mDecorFrame="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mSystemDecorRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v1

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v7

    if-eqz v7, :cond_199

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v7

    if-nez v7, :cond_199

    const/4 v2, 0x1

    :goto_96
    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v7, :cond_19c

    xor-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_19c

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    :goto_a0
    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v7

    invoke-interface {v7, v6, p1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateFixedOrientationFrameIfNeeded(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Z

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v7, :cond_ec

    sget-object v7, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "win="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Initial clip rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mHasClipRect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " fullscreen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    if-eqz v2, :cond_137

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_137

    const/4 v5, 0x0

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v7

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v4, v7

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    if-nez v7, :cond_132

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v5

    if-eqz v5, :cond_132

    invoke-virtual {v5}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_132

    iget v7, v5, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v3, v7

    iget v7, v5, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v4, v7

    iget v7, v5, Landroid/view/MagnificationSpec;->scale:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_132

    iget v7, v5, Landroid/view/MagnificationSpec;->scale:F

    div-float v7, v3, v7

    add-float v3, v7, v10

    iget v7, v5, Landroid/view/MagnificationSpec;->scale:F

    div-float v7, v4, v7

    add-float v4, v7, v10

    :cond_132
    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    :cond_137
    invoke-virtual {v6, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v7, :cond_145

    if-eqz v1, :cond_145

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_145
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->useFinalClipRect()Z

    move-result v7

    if-eqz v7, :cond_169

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_16c

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v7}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v7

    if-eqz v7, :cond_16c

    :cond_169
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowStateAnimator;->adjustCropToStackBounds(Landroid/graphics/Rect;Z)V

    :cond_16c
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v7, :cond_194

    sget-object v7, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "win="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Clip rect after stack adjustment="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    invoke-virtual {v6, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    return v7

    :cond_199
    const/4 v2, 0x0

    goto/16 :goto_96

    :cond_19c
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    goto/16 :goto_a0
.end method

.method private calculateFinalCrop(Landroid/graphics/Rect;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    if-nez v1, :cond_e

    return v8

    :cond_e
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->shouldCropToStackBounds()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->useFinalClipRect()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_26

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v7

    if-eqz v7, :cond_27

    :cond_26
    return v8

    :cond_27
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget-object v4, v7, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    iget-boolean v7, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_5c

    iget v7, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5c

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5c

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, v3, Landroid/view/MagnificationSpec;->offsetY:F

    add-float v0, v7, v8

    float-to-int v7, v0

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    return v9

    :cond_5c
    iget v7, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-virtual {v6, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    :cond_67
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a5

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget v7, v3, Landroid/view/MagnificationSpec;->scale:F

    iget v8, v3, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v7, v3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v7, v7

    iget v8, v3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iput v7, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a5
    return v9
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_95

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :cond_1e
    :goto_1e
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v6, v9, :cond_30

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/graphics/Rect;->right:I

    :cond_30
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v6, v9, :cond_42

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :cond_42
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v6, :cond_10f

    iget-object v4, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v6, p1, Lcom/android/server/wm/WindowState;->mDssScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->scale(F)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int v5, v6, v7

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    add-int v1, v6, v7

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    :goto_94
    return-void

    :cond_95
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v6

    if-eqz v6, :cond_ef

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v6

    if-nez v6, :cond_a9

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput v7, v6, Landroid/graphics/Rect;->top:I

    :cond_a9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v3, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v7, v7

    iget v8, v3, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_1e

    :cond_ef
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1e

    :cond_10f
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v8, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v8, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_94
.end method

.method private createTransitionDimSurface(I)V
    .registers 26

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v2, :cond_229

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_1cc

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7e

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mYOffset:I

    neg-int v0, v2

    move/from16 v18, v0

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v23

    if-eqz v23, :cond_7e

    invoke-virtual/range {v23 .. v23}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7e

    int-to-float v2, v5

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    float-to-int v5, v2

    int-to-float v2, v6

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    float-to-int v6, v2

    move-object/from16 v0, v23

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v2, v2

    add-int v18, v18, v2

    move-object/from16 v0, v23

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v0, v2

    move/from16 v17, v0

    :cond_7e
    new-instance v2, Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "_dim"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v11, v7, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v7, -0x1

    const v8, 0x20004

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    :goto_c3
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v19, v3

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    const/4 v3, 0x0

    aput v2, v21, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v3, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/server/wm/-$Lambda$kooYnM2PgVqsVM_YR4xED6fpRl8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimLayer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v17

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v18

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowSurfaceController;->setLayerStackInTransaction(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_247

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimLayer:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    if-le v2, v3, :cond_247

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    :goto_14b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_1bc

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createTransitionDim: win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v19, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    return-void

    :cond_1cc
    new-instance v7, Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v8, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_dim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    move/from16 v16, v0

    const/4 v12, -0x1

    const v13, 0x20004

    move-object/from16 v14, p0

    invoke-direct/range {v7 .. v16}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    goto/16 :goto_c3

    :cond_229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/wm/WindowSurfaceController;->setSizeInTransaction(IIZ)Z

    goto/16 :goto_c3

    :cond_247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimLayer:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    goto/16 :goto_14b
.end method

.method private getAnimationFrameTime(Landroid/view/animation/Animation;J)J
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setStartTime(J)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    return-wide v0

    :cond_b
    return-wide p2
.end method

.method private getLayerStack()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v0

    return v0
.end method

.method private getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    :cond_19
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v0

    :cond_27
    return-object v0
.end method

.method static synthetic lambda$-com_android_server_wm_WindowStateAnimator_117188([I[ILcom/android/server/wm/WindowState;)V
    .registers 7

    const/4 v3, 0x0

    aget v0, p0, v3

    iget v1, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v0, v1, :cond_b

    iget v0, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    aput v0, p0, v3

    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createDimSurface: w ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    aget v0, p1, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v3

    return-void
.end method

.method private resolveStackClip()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->getStackClip()I

    move-result v0

    return v0

    :cond_11
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    return v0
.end method

.method private shouldCropToStackBounds()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10

    return v5

    :cond_10
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2a

    :cond_1e
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v4, :cond_38

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isSnapWindowTarget()Z

    move-result v4

    if-eqz v4, :cond_38

    :cond_2a
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->resolveStackClip()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x2

    if-ne v1, v4, :cond_39

    return v5

    :cond_38
    return v5

    :cond_39
    const/4 v4, 0x1

    return v4
.end method

.method private showSurfaceRobustlyLocked()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    :cond_19
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    if-nez v0, :cond_22

    return v5

    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_67

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_47

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show surface turning screen on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenUid:I

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_67
    return v6
.end method

.method private stepAnimation(J)Z
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    :cond_a
    const/4 v1, 0x0

    return v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->getAnimationFrameTime(Landroid/view/animation/Animation;J)J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :cond_2d
    return v0
.end method

.method private useFinalClipRect()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->resolveStackClip()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inPinnedWorkspace()Z

    move-result v0

    goto :goto_d
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .registers 15

    const-wide/16 v10, 0x20

    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v5, p2, :cond_e

    return v3

    :cond_e
    const-string/jumbo v5, "WSA#applyAnimationLocked"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-eqz v5, :cond_128

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v5, v6, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_10d

    if-eq v1, v8, :cond_10a

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_30
    :goto_30
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v5, :cond_98

    sget-object v5, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "applyAnimation: win="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " attr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Callers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    if-eqz v0, :cond_e1

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v5, :cond_c2

    sget-object v5, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded animation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    const/4 v5, 0x5

    if-ne p1, v5, :cond_e1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v5

    if-ne v5, v8, :cond_e1

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_e1

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppWindowAnimator;->updateStartingAnimAdjustment(Lcom/android/server/wm/WindowState;)V

    :cond_e1
    :goto_e1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v5, v6, :cond_12c

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    if-eqz p2, :cond_105

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_105
    :goto_105
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_145

    :goto_109
    return v3

    :cond_10a
    const/4 v0, 0x0

    goto/16 :goto_30

    :cond_10d
    packed-switch p1, :pswitch_data_148

    :goto_110
    if-ltz v2, :cond_30

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_30

    :pswitch_120
    const/4 v2, 0x0

    goto :goto_110

    :pswitch_122
    const/4 v2, 0x1

    goto :goto_110

    :pswitch_124
    const/4 v2, 0x2

    goto :goto_110

    :pswitch_126
    const/4 v2, 0x3

    goto :goto_110

    :cond_128
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto :goto_e1

    :cond_12c
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x960

    if-ne v5, v6, :cond_105

    if-eqz p2, :cond_105

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_105

    :cond_145
    move v3, v4

    goto :goto_109

    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_120
        :pswitch_122
        :pswitch_124
        :pswitch_126
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v1, :cond_8

    return-void

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v1, :cond_2b

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v0, 0x1

    :goto_f
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_2a
    return-void

    :cond_2b
    const/4 v0, 0x3

    goto :goto_f
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_33

    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v3, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v3, v1

    mul-float/2addr v3, v0

    int-to-float v4, v1

    sub-float/2addr v3, v4

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v4, v0

    int-to-float v5, v2

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_33
    return-void
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .registers 5

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelExitAnimationForNextAnimationLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurfaceUnchecked()V

    :cond_33
    return-void
.end method

.method public clearAnimation()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    :cond_14
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .registers 7

    const/4 v5, 0x3

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_37

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "commitFinishDrawingLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cur mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_42

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v2, v5, :cond_42

    const/4 v2, 0x0

    return v2

    :cond_42
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-nez v2, :cond_4a

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_65

    :cond_4a
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7a

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_80

    :cond_7a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v1

    :cond_80
    return v1
.end method

.method computeShownFrameLocked()V
    .registers 46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v40, v0

    if-eqz v40, :cond_7ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v40, v0

    if-eqz v40, :cond_7ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_46
    const/4 v13, 0x0

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v0, v13}, Lcom/samsung/android/view/IWindowStateBridge;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    if-eqz v7, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    if-eqz v40, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTransitionDimType:I

    move/from16 v40, v0

    if-eqz v40, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mDimAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    if-eqz v40, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTransitionDimType:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v40

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->mTransitionDimType:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->createTransitionDimSurface(I)V

    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v40, v0

    if-eqz v40, :cond_18e

    if-eqz v36, :cond_18e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    move/from16 v40, v0

    if-eqz v40, :cond_18e

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v40, v0

    if-eqz v40, :cond_13f

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    if-eqz v40, :cond_13f

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_13f

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    sget-boolean v40, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v40, :cond_13f

    if-eqz v8, :cond_13f

    sget-object v40, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "WP target attached xform: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13f
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    if-nez v40, :cond_7b1

    const/16 v37, 0x0

    :goto_149
    if-eqz v37, :cond_18e

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v40, v0

    if-eqz v40, :cond_18e

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    if-eqz v40, :cond_18e

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_18e

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    sget-boolean v40, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v40, :cond_18e

    if-eqz v7, :cond_18e

    sget-object v40, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "WP target app xform: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v24

    if-eqz v24, :cond_7bf

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v23

    :goto_1ac
    const/16 v32, 0x0

    new-instance v32, Landroid/graphics/PointF;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    move-object/from16 v2, v41

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z

    move-result v40

    if-nez v40, :cond_1d5

    const/16 v32, 0x0

    :cond_1d5
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-nez v25, :cond_1e1

    if-eqz v8, :cond_7c3

    :cond_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    if-eqz v23, :cond_7f3

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v40

    if-eqz v40, :cond_7f3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v40, 0x3f800000    # 1.0f

    cmpl-float v40, v33, v40

    if-ltz v40, :cond_7ee

    const/high16 v40, 0x3f800000    # 1.0f

    cmpl-float v40, v19, v40

    if-ltz v40, :cond_7ee

    const/high16 v40, 0x40000000    # 2.0f

    div-float v40, v40, v33

    const/high16 v41, 0x3f800000    # 1.0f

    add-float v40, v40, v41

    const/high16 v41, 0x40000000    # 2.0f

    div-float v41, v41, v19

    const/high16 v42, 0x3f800000    # 1.0f

    add-float v41, v41, v42

    const/high16 v42, 0x40000000    # 2.0f

    div-float v42, v33, v42

    const/high16 v43, 0x40000000    # 2.0f

    div-float v43, v19, v43

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_250
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    :goto_258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v40, v0

    const/high16 v41, 0x3f800000    # 1.0f

    div-float v40, v41, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v41, v0

    const/high16 v42, 0x3f800000    # 1.0f

    div-float v41, v42, v41

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2b0
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->adjustMatrixLocked(Landroid/graphics/Matrix;)V

    if-eqz v25, :cond_2ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v40

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_2ca
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_7f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v11, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v12, v0

    sub-float v27, v11, v21

    sub-float v28, v12, v22

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3a3
    :goto_3a3
    if-eqz v8, :cond_3b0

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v40

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_3b0
    if-eqz v7, :cond_3bd

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v40

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_3bd
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v40, :cond_8e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v40

    if-eqz v40, :cond_8e5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_8dd

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v41, v0

    add-int v40, v40, v41

    div-int/lit8 v17, v40, 0x2

    :goto_3fb
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v41, v0

    add-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_422
    const/16 v40, 0x0

    cmpl-float v40, v27, v40

    if-nez v40, :cond_42e

    const/16 v40, 0x0

    cmpl-float v40, v28, v40

    if-eqz v40, :cond_441

    :cond_42e
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_441
    if-eqz v13, :cond_45e

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_45e
    if-eqz v23, :cond_46f

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v40

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_46f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    if-eqz v32, :cond_493

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v40, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_493
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v40, 0x0

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v40, 0x3

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v40, 0x1

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/16 v40, 0x4

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/16 v40, 0x2

    aget v38, v29, v40

    const/16 v40, 0x5

    aget v39, v29, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v40, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v41

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->round(F)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v40, v0

    if-eqz v40, :cond_55d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v40

    if-eqz v40, :cond_55d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v44, v0

    invoke-virtual/range {v40 .. v44}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v40

    if-eqz v40, :cond_676

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v40, v38, v40

    if-nez v40, :cond_676

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v40, v39, v40

    if-nez v40, :cond_676

    :cond_55d
    if-eqz v25, :cond_577

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v41

    mul-float v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_577
    if-eqz v8, :cond_58b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v40, v0

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v41

    mul-float v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_58b
    if-eqz v7, :cond_63e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v40, v0

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v41

    mul-float v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v40

    if-eqz v40, :cond_63e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v40

    if-eqz v40, :cond_61b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v42, v0

    sub-int v41, v41, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    invoke-virtual/range {v40 .. v42}, Landroid/graphics/Rect;->offset(II)V

    :cond_61b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    move/from16 v40, v0

    if-eqz v40, :cond_63e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/graphics/Rect;->scale(F)V

    :cond_63e
    if-eqz v23, :cond_676

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    if-nez v40, :cond_676

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_676

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v40, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v41

    mul-float v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    if-eqz v40, :cond_922

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mDimAnimation:Landroid/view/animation/Animation;

    move-object/from16 v40, v0

    if-eqz v40, :cond_922

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/wm/AppWindowAnimator;->mDimTransformation:Landroid/view/animation/Transformation;

    :goto_696
    if-eqz v6, :cond_6ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v40, v0

    if-eqz v40, :cond_6ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v40, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v41

    invoke-virtual/range {v40 .. v41}, Lcom/android/server/wm/WindowSurfaceController;->setAlpha(F)V

    sget-boolean v40, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v40, :cond_6ce

    sget-object v40, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "dimTransformation: alpha ="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6ce
    sget-boolean v40, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-nez v40, :cond_6d6

    sget-boolean v40, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v40, :cond_7aa

    :cond_6d6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    cmpl-double v40, v40, v42

    if-eqz v40, :cond_6f8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmpl-double v40, v40, v42

    if-nez v40, :cond_7aa

    :cond_6f8
    sget-object v41, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "computeShownFrameLocked: Animating "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v42, " mAlpha="

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v42, v0

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v42, " self="

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    if-eqz v25, :cond_925

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    :goto_746
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v42, " attached="

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    if-nez v8, :cond_92a

    const-string/jumbo v40, "null"

    :goto_75e
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v42, " app="

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    if-nez v7, :cond_934

    const-string/jumbo v40, "null"

    :goto_776
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v42, " screen="

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    if-eqz v23, :cond_93e

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    :goto_797
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7aa
    return-void

    :cond_7ab
    const/4 v8, 0x0

    goto/16 :goto_26

    :cond_7ae
    const/4 v7, 0x0

    goto/16 :goto_46

    :cond_7b1
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v37, v0

    goto/16 :goto_149

    :cond_7bf
    const/16 v23, 0x0

    goto/16 :goto_1ac

    :cond_7c3
    if-nez v7, :cond_1e1

    if-nez v23, :cond_1e1

    if-eqz v13, :cond_7d1

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-nez v40, :cond_1e1

    :cond_7d1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v40, v0

    if-eqz v40, :cond_943

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    move/from16 v40, v0

    if-eqz v40, :cond_943

    return-void

    :cond_7ee
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_250

    :cond_7f3
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_258

    :cond_7f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v40

    if-eqz v40, :cond_3a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorCaptionWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v15, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v9, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    sub-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v10, v0

    sub-float v27, v9, v14

    sub-float v28, v10, v15

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3a3

    :cond_8dd
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    goto/16 :goto_3fb

    :cond_8e5
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v41, v0

    add-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v42, v0

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_422

    :cond_922
    const/4 v6, 0x0

    goto/16 :goto_696

    :cond_925
    const-string/jumbo v40, "null"

    goto/16 :goto_746

    :cond_92a
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    goto/16 :goto_75e

    :cond_934
    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    goto/16 :goto_776

    :cond_93e
    const-string/jumbo v40, "null"

    goto/16 :goto_797

    :cond_943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v40

    if-eqz v40, :cond_950

    return-void

    :cond_950
    sget-boolean v40, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v40, :cond_982

    sget-object v40, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "computeShownFrameLocked: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " not attached, mAlpha="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v26

    if-eqz v26, :cond_b53

    invoke-virtual/range {v26 .. v26}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_b53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    move/from16 v40, v0

    if-eqz v40, :cond_a0c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v40, v0

    const/high16 v41, 0x3f800000    # 1.0f

    div-float v40, v41, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v41, v0

    const/high16 v42, 0x3f800000    # 1.0f

    div-float v41, v42, v41

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_a0c
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v40, :cond_b16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v40

    if-eqz v40, :cond_b16

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_b0e

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v41, v0

    add-int v40, v40, v41

    div-int/lit8 v17, v40, 0x2

    :goto_a4a
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v41, v0

    add-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_a71
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyMagnificationSpec(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    if-eqz v32, :cond_a91

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v40, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_a91
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    const/16 v40, 0x0

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v40, 0x3

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v40, 0x1

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/16 v40, 0x4

    aget v40, v29, v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/16 v40, 0x2

    aget v38, v29, v40

    const/16 v40, 0x5

    aget v39, v29, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v40, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v41

    invoke-static/range {v39 .. v39}, Ljava/lang/Math;->round(F)I

    move-result v42

    invoke-virtual/range {v40 .. v42}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_af3
    :goto_af3
    if-eqz v24, :cond_b0d

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v40

    xor-int/lit8 v40, v40, 0x1

    if-eqz v40, :cond_b0d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    move/from16 v40, v0

    if-eqz v40, :cond_b0d

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_b0d
    return-void

    :cond_b0e
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    goto/16 :goto_a4a

    :cond_b16
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v41, v0

    add-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v42, v0

    add-int v41, v41, v42

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_a71

    :cond_b53
    if-eqz v32, :cond_c93

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v41, v0

    add-float v40, v40, v41

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v42, v0

    add-float v41, v41, v42

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v40, 0x2

    aget v38, v29, v40

    const/16 v40, 0x5

    aget v39, v29, v40

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v34

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v40, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/graphics/Point;->set(II)V

    :goto_bdb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v40, v0

    if-nez v40, :cond_bf7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v40, v0

    if-eqz v40, :cond_c07

    :cond_bf7
    sget-boolean v40, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v40, :cond_cc8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v40

    if-eqz v40, :cond_cc8

    :cond_c07
    :goto_c07
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    move/from16 v40, v0

    if-eqz v40, :cond_af3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v41, v0

    div-float v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    goto/16 :goto_af3

    :cond_c93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_bdb

    :cond_cc8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v42, v0

    invoke-virtual/range {v40 .. v42}, Landroid/graphics/Point;->offset(II)V

    goto/16 :goto_c07
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .registers 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->restoreSavedSurface()Z

    move-result v2

    if-eqz v2, :cond_37

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_32

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSurface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": called when we had a saved surface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v2

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v2

    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v2, :cond_50

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_72

    :cond_50
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSurface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v8, 0x4

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_91

    const/16 v8, 0x84

    :cond_91
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->createSurfaceLocked()I

    move-result v2

    or-int/2addr v8, v2

    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    if-eqz v2, :cond_b7

    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_b7

    const/high16 v2, 0x8000000

    or-int/2addr v8, v2

    :cond_b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v4, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isSnapWindowTarget()Z

    move-result v2

    if-eqz v2, :cond_ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    :cond_ee
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_185

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Creating surface in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v4, v4, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_1ab
    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3b8

    const/4 v15, 0x1

    :goto_1b3
    if-eqz v15, :cond_3bb

    const/4 v7, -0x3

    :goto_1b6
    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_1e0

    iget-object v2, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1e0

    iget-object v2, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_1e0

    iget-object v2, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_1e0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1e0

    or-int/lit16 v8, v8, 0x400

    :cond_1e0
    new-instance v2, Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    if-eqz v16, :cond_21f

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    if-eqz v2, :cond_21f

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21f

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wm/Task;->createBackgroundSurface(Lcom/android/server/wm/WindowState;)V

    :cond_21f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->resetEffects()V

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_232

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v2, :cond_29a

    :cond_232
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  CREATE SURFACE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " IN SESSION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v4, v4, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1ab .. :try_end_29a} :catch_3cf
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_29a} :catch_3bf

    :cond_29a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_2ec

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", set left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " top="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", animLayer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ec
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_355

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CREATE pos=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), layer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " HIDE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_35c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setLayerStackInTransaction(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V
    :try_end_388
    .catchall {:try_start_35c .. :try_end_388} :catchall_3ee

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_3b3

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Created surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v2

    :cond_3b8
    const/4 v15, 0x0

    goto/16 :goto_1b3

    :cond_3bb
    :try_start_3bb
    iget v7, v12, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_3bd
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3bb .. :try_end_3bd} :catch_3cf
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3bd} :catch_3bf

    goto/16 :goto_1b6

    :catch_3bf
    move-exception v14

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception creating surface"

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x0

    return-object v2

    :catch_3cf
    move-exception v13

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "OutOfResourcesException creating surface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string/jumbo v3, "create"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x0

    return-object v2

    :catchall_3ee
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v2
.end method

.method deferTransactionUntilParentFrame(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method destroyDeferredSurfaceLocked()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_26

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v1, :cond_16

    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v2, "DESTROY PENDING"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_26} :catch_2c

    :cond_26
    :goto_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    iput-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    return-void

    :catch_2c
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    return-void
.end method

.method destroySurface()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyTransitionDimSurface()V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_e} :catch_23
    .catchall {:try_start_2 .. :try_end_e} :catchall_77

    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->updateBackgroundSurfaceVisibilityIfNeeded()V

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    :try_start_24
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown when destroying surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_77

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->updateBackgroundSurfaceVisibilityIfNeeded()V

    goto :goto_22

    :catchall_77
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iput-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->updateBackgroundSurfaceVisibilityIfNeeded()V

    :cond_8c
    throw v2
.end method

.method destroySurfaceLocked()V
    .registers 9

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_15

    iput-boolean v7, v2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v7, v3, Lcom/android/server/wm/AppWindowAnimator;->startingAnimLayerAdjustment:I

    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->clearHasSavedSurface()V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mHidden:Z

    :cond_27
    :try_start_27
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_5e

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v3, v4, :cond_8a

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_86

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_78

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_81

    :cond_78
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v4, "DESTROY PENDING"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_81
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    :cond_86
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    :cond_8a
    :goto_8a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v3, :cond_a9

    sget-boolean v3, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    if-eqz v3, :cond_a2

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getAODWindowPolicy()Lcom/android/server/policy/AODWindowPolicy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Lcom/android/server/policy/AODWindowPolicy;->isAODWindowHasWallpaper(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a9

    :cond_a2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_a9} :catch_dc

    :cond_a9
    :goto_a9
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->updateBackgroundSurfaceVisibilityIfNeeded()V

    :cond_c2
    iput-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    return-void

    :cond_c7
    :try_start_c7
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_cf

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_d8

    :cond_cf
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v4, "DESTROY"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_d8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V
    :try_end_db
    .catch Ljava/lang/RuntimeException; {:try_start_c7 .. :try_end_db} :catch_dc

    goto :goto_8a

    :catch_dc
    move-exception v0

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9
.end method

.method destroyTransitionDimSurface()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyInTransaction()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    :cond_c
    return-void
.end method

.method detachChildren()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    :cond_9
    return-void
.end method

.method disableSurfaceTrace()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->removeRemoteTrace()V
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disable surface trace for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but its not enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method drawStateToString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    packed-switch v0, :pswitch_data_20

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "NO_SURFACE"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "DRAW_PENDING"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "COMMIT_DRAW_PENDING"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "READY_TO_SHOW"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "HAS_DRAWN"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4c

    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mStackClip="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v0, :cond_7b

    :cond_54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_7b
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_84
    if-eqz p3, :cond_e9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, " last="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string/jumbo v0, " mHasClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e6

    const-string/jumbo v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    :cond_e6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_e9
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_fb

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_fb
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_103

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_11c

    :cond_103
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_11c
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_128

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a7

    :cond_128
    :goto_128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_14c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_158

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_194

    :cond_158
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_194
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_1a6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimationStartDelayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    :cond_1a6
    return-void

    :cond_1a7
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14c

    goto/16 :goto_128
.end method

.method enableSurfaceTrace(Ljava/io/FileDescriptor;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->installRemoteTrace(Ljava/io/FileDescriptor;)V

    :cond_9
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    return-void
.end method

.method finishDrawingLocked()Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_93

    const/4 v1, 0x1

    :goto_a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing drawing window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingWithSavedSurface()Z

    move-result v0

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_92

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_8e

    if-eqz v1, :cond_8e

    sget-object v2, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Draw state now committed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x1

    :cond_92
    return v0

    :cond_93
    const/4 v1, 0x0

    goto/16 :goto_a
.end method

.method getShown()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasSavedSurface()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method hide(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideInTransaction(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method isAnimationSet()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mParentWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v0

    goto :goto_f

    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isAnimationStarting()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isDummyAnimation()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isForceScaled()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isForceScaled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v1
.end method

.method isWaitingForOpening()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method isWindowAnimationSet()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method markPreservedSurfaceForDestroy()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_34

    iget-boolean v0, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_33

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_33

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation change skips hidden "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_33
    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    :cond_3b
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_95

    const-string/jumbo v0, "prepareSurfaceLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    :cond_54
    :goto_54
    iget-boolean v0, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_8e

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_281

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_75

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_8e

    :cond_75
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation continue waiting for draw in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    if-eqz v7, :cond_94

    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v11, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    :cond_94
    return-void

    :cond_95
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d9

    :cond_a3
    const-string/jumbo v0, "prepareSurfaceLocked"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    iget-boolean v0, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v0, :cond_54

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_54

    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_54

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation change skips hidden "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    :cond_d9
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v0, v1, :cond_e7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_224

    :cond_e7
    const/4 v7, 0x1

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v0, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v0, v9, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v0, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v0, v9, Lcom/android/server/wm/WindowState;->mLastVScale:F

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1ae

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " matrix=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v10}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_1ae
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v5, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v6, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v5, v6

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    if-eqz v8, :cond_20b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_20b

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20b

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v0

    if-eqz v0, :cond_27e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v0, :cond_200

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    :cond_200
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_20b
    :goto_20b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_215

    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v11, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    :cond_215
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimController:Lcom/android/server/wm/WindowSurfaceController;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransitionDimLayer:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    goto/16 :goto_54

    :cond_224
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e7

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e7

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v1, v9, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e7

    iget v0, v9, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v1, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_e7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_27b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_27b

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareSurface: No changes in animation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27b
    const/4 v7, 0x1

    goto/16 :goto_54

    :cond_27e
    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_20b

    :cond_281
    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_8e

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation change complete in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e
.end method

.method preserveSurfaceLocked()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_3e

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WSA.preserveSurfaceLocked: remove from mDestroyPreservedSurface. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void

    :cond_3e
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string/jumbo v1, "SET FREEZE LAYER"

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayer(I)V

    :cond_57
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    return-void
.end method

.method resetDrawState()V
    .registers 3

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto :goto_1b
.end method

.method seamlesslyRotateWindow(II)V
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_12

    move-object/from16 v0, v24

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_13

    :cond_12
    return-void

    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v8, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v8

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v8

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v0, v8

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v5, v8

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v6, v8

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v2

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x0

    aget v14, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x3

    aget v16, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x1

    aget v17, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v15, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x2

    aget v22, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v9, 0x5

    aget v23, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v14

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v10, v10, v16

    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v11, v11, v17

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v12, v15

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 5

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;I)V
    .registers 5

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;JI)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;JI)V
    .registers 19

    sget-boolean v10, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v10, :cond_28

    sget-object v10, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Setting animation in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v12, v13}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v10}, Landroid/view/animation/Transformation;->clear()V

    iget-object v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v10, :cond_b7

    const/4 v10, 0x0

    :goto_4e
    int-to-float v10, v10

    invoke-virtual {v11, v10}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v10, :cond_c6

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v10, :cond_c6

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v10, :cond_c6

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-wide v10, v10, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v12

    sub-long v6, v10, v12

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v10

    sub-long v8, v10, v6

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_8b

    const-wide/16 v8, 0x0

    :cond_8b
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-lez v10, :cond_c6

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    instance-of v10, v10, Landroid/view/animation/AnimationSet;

    if-eqz v10, :cond_b9

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-virtual {v5}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_a7

    :cond_b7
    const/4 v10, 0x1

    goto :goto_4e

    :cond_b9
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_be
    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-wide v10, v10, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iput-wide v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    :cond_c6
    return-void
.end method

.method setMoveAnimation(II)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    const v2, 0x10a00e6

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    return-void
.end method

.method setOpaqueLocked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    return-void
.end method

.method setSecureLocked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .registers 32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v2, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isResizedWhileNotDragResizing()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_28

    return-void

    :cond_28
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mFreezeSplitResizing:Z

    if-eqz v2, :cond_2f

    return-void

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v9}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    move/from16 v28, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    move/from16 v29, v0

    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v2, :cond_6f

    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v2, :cond_36d

    :cond_6f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setSizeInTransaction(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    :goto_8d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v2, :cond_374

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_99
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v28, :cond_aa

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v2, :cond_aa

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleDismissed:Z

    :cond_aa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v2, :cond_377

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_ba
    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_d1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    :cond_d1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->calculateFinalCrop(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_e1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    :cond_e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v2

    if-eqz v2, :cond_3a6

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int v14, v2, v3

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v26, v2, v3

    int-to-float v2, v14

    sub-float v20, v22, v2

    move/from16 v0, v26

    int-to-float v2, v0

    sub-float v19, v21, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v2, :cond_121

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    :cond_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_191

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_16a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_191

    :cond_16a
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_191

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    :cond_191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_384

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v20, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v20, v3

    div-float v25, v2, v3

    move/from16 v24, v25

    sub-float v2, v13, v16

    mul-float v2, v2, v25

    add-float v2, v2, v16

    div-float v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    if-eqz v8, :cond_37a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v19, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v19, v3

    div-float v24, v2, v3

    sub-float v2, v12, v15

    mul-float v2, v2, v25

    add-float/2addr v2, v15

    div-float/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    :goto_216
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v17, v17, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v18, v18, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    :goto_23d
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v17, v17, v2

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v18, v18, v2

    move/from16 v0, v17

    int-to-float v2, v0

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    move/from16 v0, v18

    int-to-float v2, v0

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v0, v17

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    move/from16 v0, v18

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleDismissed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2ab

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    :cond_2ab
    :goto_2ab
    if-eqz v28, :cond_2b5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2bf

    :cond_2b5
    if-eqz v29, :cond_2cf

    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2cf

    :cond_2bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->setGeometryAppliesWithResizeInTransaction(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    :cond_2cf
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v2, :cond_329

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_329

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, v27

    iget v7, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v6, v7

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    :cond_329
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_33e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateFixedOrientationWindowInTransactionLocked(Lcom/android/server/wm/WindowStateAnimator;)V

    :cond_33e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v2, :cond_358

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    :cond_358
    if-eqz v23, :cond_361

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setBackgroundSurfaceBoundariesLocked(Lcom/android/server/wm/WindowState;)V

    :cond_361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->applyBlurEffect()V

    return-void

    :cond_36d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto/16 :goto_8d

    :cond_374
    const/4 v2, 0x0

    goto/16 :goto_99

    :cond_377
    const/4 v2, 0x0

    goto/16 :goto_ba

    :cond_37a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    goto/16 :goto_216

    :cond_384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_23d

    :cond_3a6
    move-object/from16 v0, v27

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v2, :cond_2ab

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto/16 :goto_2ab
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    return-void
.end method

.method setWallpaperOffset(Landroid/graphics/Point;)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    :try_start_16
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_22

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_43} :catch_55
    .catchall {:try_start_16 .. :try_end_43} :catchall_a0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_54

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v1

    :try_start_56
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pos=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_56 .. :try_end_8e} :catchall_a0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_54

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :catchall_a0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_b2

    sget-object v5, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    throw v4
.end method

.method startDelayingAnimationStart()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    return-void
.end method

.method stepAnimationLocked(J)Z
    .registers 16

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_16f

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-eqz v3, :cond_16f

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_137

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_137

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v3, :cond_e2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_a4

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": ww="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " wh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    if-eqz v3, :cond_f3

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimateMove:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    :goto_c7
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDx:I

    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDy:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_10d

    iget-wide v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    :goto_db
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_e2
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_10f

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_10f

    iput-wide p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimationTime:J

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    move-result v3

    if-eqz v3, :cond_10f

    return v11

    :cond_f3
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v7, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v8, v2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_c7

    :cond_10d
    move-wide v4, p1

    goto :goto_db

    :cond_10f
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_137

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finished animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v3, :cond_141

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v3, :cond_155

    :cond_141
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_155

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_155

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    return v6

    :cond_155
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-eqz v3, :cond_166

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_15b
    :goto_15b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v3, :cond_176

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_176

    return v6

    :cond_166
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_15b

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_15b

    :cond_16f
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_15b

    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_15b

    :cond_176
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_1b9

    sget-object v4, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Animation done in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ": exiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", reportedVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_25b

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    :goto_1ae
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b9
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1c8

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    iput-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    :cond_1c8
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_1d4

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v10, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    :cond_1d4
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getSpecialWindowAnimLayerAdjustment()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v3, :cond_206

    sget-object v3, Lcom/android/server/wm/WindowStateAnimator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stepping win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " anim layer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_206
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mStackClip:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_227

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_227

    if-eqz v0, :cond_227

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_227
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_24d

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string/jumbo v4, "WindowStateAnimator"

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_24d
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_25a

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_25a
    return v6

    :cond_25b
    move v3, v6

    goto/16 :goto_1ae
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_6

    return v5

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_28

    const/4 v2, 0x1

    :goto_14
    if-eqz v2, :cond_2a

    const/4 v1, -0x3

    :goto_17
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v1, v3, :cond_2d

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v3}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    const/4 v3, 0x1

    return v3

    :cond_28
    const/4 v2, 0x0

    goto :goto_14

    :cond_2a
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_17

    :cond_2d
    return v5
.end method

.method updateLayerStackInTransaction()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setLayerStackInTransaction(I)V

    :cond_d
    return-void
.end method
