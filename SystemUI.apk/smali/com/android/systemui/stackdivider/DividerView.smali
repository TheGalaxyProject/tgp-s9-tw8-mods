.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerView$1;,
        Lcom/android/systemui/stackdivider/DividerView$2;,
        Lcom/android/systemui/stackdivider/DividerView$3;,
        Lcom/android/systemui/stackdivider/DividerView$ButtonsTarget;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static mFocusedStackIdInSplit:I


# instance fields
.field private dualAppBadge:Landroid/graphics/drawable/Drawable;

.field private mAdjustedForIme:Z

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private mDisplayHeight:I

.field private final mDisplayRect:Landroid/graphics/Rect;

.field private mDisplayWidth:I

.field private mDividerInsets:I

.field private mDividerPositionBeforeMinimized:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowRecents:Z

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeStackResizable:Z

.field private mIsInMinimizeInteraction:Z

.field private mIsMinimizeFlingAnimation:Z

.field private mIsRotation_270:Z

.field private mLastOrientation:I

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLongPressEntraceAnimDuration:I

.field private mMinimizedModeFirstSplitTargetPosition:I

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private mRemoved:Z

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private final mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapGuideVisible:Z

.field private mSnapModeRunning:Z

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private final mTempInt2:[I

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mUserId:I

.field private mUserIdForDualapp:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field noExpandAnimation:Z

.field private personaBadge:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/DividerView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/DividerView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/DividerView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/systemui/stackdivider/DividerView;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerView;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v5, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f5eb852    # 0.87f

    const v3, 0x3f051eb8    # 0.52f

    const v4, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackIdInSplit:I

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsMinimizeFlingAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->noExpandAnimation:Z

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotation_270:Z

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;-><init>(Landroid/os/Handler;Landroid/view/Display;Landroid/view/Choreographer;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    return-void
.end method

.method private addAppPairShortcut()V
    .registers 3

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->addAppPairShortcut()V

    sget-boolean v0, Lcom/android/systemui/stackdivider/DividerView;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "MultiWindowManager"

    const-string/jumbo v1, "DividerButtonsGroup execute addAppPairShortcut()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .registers 16

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v8, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v7, :cond_57

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v7

    if-eqz v7, :cond_57

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    move v5, p5

    :cond_31
    :goto_31
    if-eqz v0, :cond_56

    cmpl-float v7, v1, v9

    if-lez v7, :cond_56

    invoke-static {v4, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-static {v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v1

    int-to-float v7, v5

    iget v8, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v9, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    float-to-int v3, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    packed-switch p2, :pswitch_data_9e

    :cond_56
    :goto_56
    return-void

    :cond_57
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v7, :cond_31

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v7

    if-eqz v7, :cond_31

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_31

    :pswitch_76
    sub-int v7, v3, v6

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_56

    :pswitch_7d
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_56

    :pswitch_8a
    sub-int v7, v3, v2

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_56

    :pswitch_91
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v3

    iput v7, p1, Landroid/graphics/Rect;->top:I

    add-int v7, v3, v2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_56

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_76
        :pswitch_8a
        :pswitch_7d
        :pswitch_91
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .registers 7

    const/4 v3, 0x0

    const/high16 v2, 0x3e800000    # 0.25f

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_12

    :cond_23
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_12
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .registers 5

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    div-float v0, v1, v2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_10

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_10
    return v0
.end method

.method private calculatePosition(II)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    goto :goto_a
.end method

.method private calculateXPosition(I)I
    .registers 4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .registers 4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    return-void
.end method

.method private closeTask()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->closeTask(I)V

    :goto_10
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOOF"

    const-string/jumbo v2, "DividerCloseButton"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SPAC"

    const-string/jumbo v2, "Close"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    sget v0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackIdInSplit:I

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->isSplitStack(I)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    sget v1, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackIdInSplit:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->closeTask(I)V

    goto :goto_10

    :cond_39
    const-string/jumbo v0, "MultiWindowManager"

    const-string/jumbo v1, "There is no split stacks for closing."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v1, v2, :cond_28

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v2, :cond_24

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    :goto_1c
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    return-void

    :cond_24
    const/4 v0, 0x1

    goto :goto_15

    :cond_26
    const/4 v0, 0x0

    goto :goto_15

    :cond_28
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    const/4 v0, 0x1

    goto :goto_15

    :cond_34
    const/4 v0, 0x1

    goto :goto_15

    :cond_36
    const/4 v0, 0x0

    goto :goto_15

    :cond_38
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    goto :goto_1c
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x3

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static dockSideTopLeft(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    if-ne p0, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private drawDualAppBadge(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v8, 0x0

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    invoke-direct {p0, v5}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3f

    const/4 v3, 0x1

    :goto_30
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    if-nez v5, :cond_41

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_39
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_3f
    const/4 v3, 0x0

    goto :goto_30

    :cond_41
    if-eqz v3, :cond_60

    div-int/lit8 v5, v4, 0x2

    if-ge v5, v1, :cond_53

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v6, v4, 0x2

    sub-int v6, v2, v6

    div-int/lit8 v7, v4, 0x2

    invoke-virtual {v5, v8, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_39

    :cond_53
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v6, v1

    sub-int v7, v2, v0

    div-int/lit8 v8, v4, 0x2

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_39

    :cond_60
    div-int/lit8 v5, v2, 0x2

    if-ge v5, v0, :cond_70

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v4, v6

    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v5, v6, v8, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_39

    :cond_70
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->dualAppBadge:Landroid/graphics/drawable/Drawable;

    sub-int v6, v4, v1

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v7, v0

    div-int/lit8 v8, v2, 0x2

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_39
.end method

.method private drawKnoxBadge(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v14, :cond_10

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    :goto_2a
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/stackdivider/DividerView;->getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3d

    return-void

    :cond_3b
    const/4 v13, 0x0

    goto :goto_2a

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getMeasuredHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_80

    const/4 v11, 0x1

    :goto_63
    if-nez v13, :cond_82

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_82

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_80
    const/4 v11, 0x0

    goto :goto_63

    :cond_82
    if-eqz v11, :cond_102

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotation_270:Z

    if-nez v2, :cond_ac

    div-int/lit8 v2, v15, 0x2

    if-ge v2, v9, :cond_9d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    sub-int v3, v10, v3

    div-int/lit8 v4, v15, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_76

    :cond_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    sub-int/2addr v3, v9

    sub-int v4, v10, v8

    div-int/lit8 v5, v15, 0x2

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_76

    :cond_ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v15, 0x2

    if-ge v2, v9, :cond_f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    div-int/lit8 v4, v15, 0x2

    sub-int v4, v10, v4

    invoke-virtual {v2, v3, v4, v15, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_76

    :cond_f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v15, 0x2

    sub-int v4, v10, v8

    div-int/lit8 v5, v15, 0x2

    add-int/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_76

    :cond_102
    div-int/lit8 v2, v10, 0x2

    if-ge v2, v8, :cond_116

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v3, v10, 0x2

    sub-int v3, v15, v3

    div-int/lit8 v4, v10, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_76

    :cond_116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->personaBadge:Landroid/graphics/drawable/Drawable;

    sub-int v3, v15, v9

    div-int/lit8 v4, v10, 0x2

    sub-int/2addr v4, v8

    div-int/lit8 v5, v10, 0x2

    invoke-virtual {v2, v3, v4, v15, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_76
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_d

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :cond_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    :goto_1f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_56

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_31
    if-gtz v3, :cond_34

    move v3, v4

    :cond_34
    if-gtz v2, :cond_37

    move v2, v4

    :cond_37
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_51
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_1f

    :cond_56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_31
.end method

.method private enterFreeformTask()V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_20

    sget v0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackIdInSplit:I

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->isSplitStack(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    sget v1, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackIdInSplit:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->enterFreeformTask(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "SPAC"

    const-string/jumbo v2, "Freeform"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method private fling(IFZZ)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-eqz p3, :cond_14

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v2, v3, :cond_14

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    :cond_14
    if-eqz p4, :cond_19

    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_19
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->hangDockedStackAtPosition(I)Z

    move-result v3

    if-nez v3, :cond_35

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsMinimizeFlingAnimation:Z

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v4, p1

    iget v5, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v5, v5

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_35
    return-void
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .registers 11

    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getDividerButtonsTarget()I
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getFocusedStackId()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v4, :cond_15

    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_15
    const/4 v4, 0x3

    if-ne v4, v2, :cond_22

    const/4 v0, 0x1

    :goto_19
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-ne v0, v1, :cond_24

    :goto_21
    return v3

    :cond_22
    const/4 v0, 0x0

    goto :goto_19

    :cond_24
    const/4 v3, 0x1

    goto :goto_21
.end method

.method private getDividerView()Lcom/android/systemui/stackdivider/DividerView;
    .registers 1

    return-object p0
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .registers 14

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_b
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v0, :cond_3d

    const/4 v7, 0x1

    :goto_10
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$3;

    invoke-direct {v0, v7, p0, p2}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$3;-><init>(ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$2;

    invoke-direct {v4, p0, p2}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$5;

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView$5;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v6

    :cond_3d
    const/4 v7, 0x0

    goto :goto_10
.end method

.method private getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .registers 4

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_d
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x3

    return v0

    :cond_1c
    const/4 v0, 0x5

    return v0
.end method

.method private getUserBadgeIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 12

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v7, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7

    :cond_19
    if-eqz v4, :cond_4e

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_64

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    const/4 v7, 0x0

    :try_start_25
    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v7, "ic_sf_badge_bottom"

    const-string/jumbo v8, "drawable"

    invoke-virtual {v5, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7

    :cond_3a
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10804e7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_4a

    move-result-object v7

    return-object v7

    :catch_4a
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxBadge(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    array-length v8, v1

    invoke-static {v1, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_63
    return-object v2

    :cond_64
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_4e

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v7, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7
.end method

.method private hangDockedStackAtPosition(I)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v3, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_25

    const/4 v1, 0x1

    :goto_12
    if-nez v1, :cond_27

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt v3, p1, :cond_24

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge v3, p1, :cond_27

    :cond_24
    return v6

    :cond_25
    const/4 v1, 0x0

    goto :goto_12

    :cond_27
    if-eqz v1, :cond_53

    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "DOOF"

    const-string/jumbo v5, "DividerDragging"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v3, v6}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iput-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v4}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v3, 0x1

    return v3

    :cond_53
    const v3, 0x7fffffff

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_37
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_1b

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_22

    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21

    :cond_24
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne p1, v2, :cond_37

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_35

    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34

    :cond_37
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_3e

    :goto_3d
    return v0

    :cond_3e
    move v0, v1

    goto :goto_3d
.end method

.method private initializeSnapAlgorithm()V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_44

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v7, :cond_45

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    :goto_3f
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_44
    return-void

    :cond_45
    const/4 v7, 0x0

    goto :goto_3f
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_7

    if-ne p2, v0, :cond_e

    :cond_7
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_c

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_e
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private isSplitStack(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private liftBackground()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 8

    const/16 v5, 0x186

    const/4 v2, 0x2

    const/16 v4, 0x185

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_1f

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    :goto_19
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    goto :goto_19

    :cond_1f
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_37

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v3

    if-eqz v3, :cond_35

    :goto_31
    invoke-static {v2, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1c

    :cond_35
    move v0, v1

    goto :goto_31

    :cond_37
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne p1, v3, :cond_45

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1c

    :cond_45
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_5d

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    :goto_57
    invoke-static {v1, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1c

    :cond_5b
    move v0, v2

    goto :goto_57

    :cond_5d
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-ne p1, v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_73

    :goto_6f
    invoke-static {v1, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_1c

    :cond_73
    move v2, v0

    goto :goto_6f
.end method

.method private releaseBackground()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private resetBackground()V
    .registers 4

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .registers 6

    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1a
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_34
    return p1
.end method

.method private stopDragging()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method private swapTask()V
    .registers 5

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->swapTasks()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SPAC"

    const-string/jumbo v3, "Switch"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private updateDisplayInfo()V
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    return-void
.end method

.method private updateDockSide()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    return-void
.end method


# virtual methods
.method public animateDividerHandle()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animateDividerHandle()V

    return-void
.end method

.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .registers 10

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDockedStackUserID()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawDualAppBadge(Landroid/graphics/Canvas;)V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto :goto_14
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDockedStackUserID()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserIdForDualapp:I

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawDualAppBadge(Landroid/graphics/Canvas;)V

    :goto_14
    return-void

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->drawKnoxBadge(Landroid/graphics/Canvas;)V

    goto :goto_14
.end method

.method public getCurrentPosition()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .registers 6

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_28

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    :cond_28
    return v0
.end method

.method getFocusedStackRect(ILandroid/graphics/Rect;)V
    .registers 7

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-nez v1, :cond_c

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2a

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_29
    return-void

    :cond_2a
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getTargetStackRect(ILandroid/graphics/Rect;)V

    goto :goto_29

    :cond_37
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_29
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    goto :goto_d
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .registers 4

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v1, :cond_29

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v1, v2, :cond_27

    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    :cond_27
    const/4 v0, 0x0

    goto :goto_1a

    :cond_29
    const/4 v0, 0x0

    goto :goto_1a

    :cond_2b
    const/4 v1, -0x1

    return v1
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    return-void
.end method

.method public isHorizontalDivision()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_33109(ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p1, :cond_1d

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1d

    const v0, 0x7fffffff

    :goto_19
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void

    :cond_1d
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    goto :goto_19
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_33411(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsMinimizeFlingAnimation:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_33992()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz v0, :cond_17

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setMinimizeDimLayer(ZIF)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_17
    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerView_65879()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v3, v0

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method public notifyDockSideChanged(I)V
    .registers 5

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setDockSide(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eq v0, v1, :cond_3e

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_39

    :cond_32
    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :cond_39
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_39

    goto :goto_15
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v3, v1, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v4, v1, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :cond_3c
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-eq v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_34
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .registers 13

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3a

    :cond_14
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    :goto_23
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v4, 0x150

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    :cond_3a
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DOOF"

    const-string/jumbo v4, "RecentsLong"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_46
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    goto :goto_23
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;)V
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    const/4 v0, 0x1

    :goto_11
    iget v5, p1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    packed-switch v5, :pswitch_data_94

    :cond_16
    :goto_16
    :pswitch_16
    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_11

    :pswitch_19
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->addAppPairShortcut()V

    goto :goto_16

    :pswitch_1d
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v5, :cond_16

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerButtonsTarget()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    if-nez v4, :cond_39

    const/4 v3, 0x1

    :goto_2d
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v5, :cond_3b

    const/4 v5, 0x0

    invoke-virtual {p0, v7, v3, v5}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0, v8, v8, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    goto :goto_16

    :cond_39
    const/4 v3, 0x2

    goto :goto_2d

    :cond_3b
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-nez v5, :cond_69

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    if-nez v4, :cond_66

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    :goto_57
    invoke-virtual {p0, v8, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->showSnapGuide(ZILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "SPAC"

    const-string/jumbo v7, "Snap"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_66
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    goto :goto_57

    :cond_69
    const-string/jumbo v5, "divider"

    invoke-virtual {p0, v5}, Lcom/android/systemui/stackdivider/DividerView;->showSnapWindowDismissToast(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    goto :goto_16

    :pswitch_73
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v5, :cond_7a

    invoke-virtual {p0, v7, v8, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    :cond_7a
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->enterFreeformTask()V

    goto :goto_16

    :pswitch_7e
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v5, :cond_85

    invoke-virtual {p0, v7, v8, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    :cond_85
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->swapTask()V

    goto :goto_16

    :pswitch_89
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v5, :cond_90

    invoke-virtual {p0, v7, v8, v7}, Lcom/android/systemui/stackdivider/DividerView;->startSnapMode(ZZI)V

    :cond_90
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->closeTask()V

    goto :goto_16

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_7e
        :pswitch_89
        :pswitch_16
        :pswitch_16
        :pswitch_73
        :pswitch_19
    .end packed-switch
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060063

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_29
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .registers 6

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ff

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1d
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    :cond_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060063

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1d
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 8

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_22

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/GuideViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V

    :cond_22
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method onDividerRemoved()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    const/4 v4, 0x2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f0a0184

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const v1, 0x7f0a0182

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const v1, 0x7f0a0322

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_112

    const/4 v0, 0x1

    :goto_9c
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_114

    const/16 v1, 0x3f6

    :goto_a6
    invoke-static {v3, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastOrientation:I

    const v1, 0x7f0a0183

    invoke-virtual {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->initialize(Landroid/view/View;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_111

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->isSnapWindowRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v1, :cond_111

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ff

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setSnapViewMode(Z)V

    :cond_111
    return-void

    :cond_112
    const/4 v0, 0x0

    goto :goto_9c

    :cond_114
    const/16 v1, 0x3f7

    goto :goto_a6
.end method

.method onFocusStackChanged(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->isSplitStack(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sput p1, Lcom/android/systemui/stackdivider/DividerView;->mFocusedStackIdInSplit:I

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setFocusedStack(I)V

    return-void
.end method

.method onGuideViewVisibilityChanged(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2a

    const v0, 0x7f0600f4

    :goto_1d
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    :cond_29
    return-void

    :cond_2a
    const v0, 0x7f060063

    goto :goto_1d
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_11
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5d

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_1c
    :goto_1c
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    if-eqz p1, :cond_57

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    if-nez v2, :cond_57

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    :cond_57
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->updateLayout()V

    return-void

    :cond_5d
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_69

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1c

    :cond_69
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_1c
.end method

.method public onRecentsDrawn()V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/-$Lambda$SF-WjuMwvPZk9i1dL9BXDQtwNzU$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const-wide/16 v4, 0x150

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    :cond_43
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v15, v2, 0xff

    packed-switch v15, :pswitch_data_17a

    :cond_19
    :goto_19
    const/4 v2, 0x1

    return v2

    :pswitch_1b
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v17

    if-nez v17, :cond_4b

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/GuideViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v6, :cond_85

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    :goto_79
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/stackdivider/GuideViewController;->actionDown(Lcom/android/internal/policy/DividerSnapAlgorithm;Lcom/android/internal/policy/DividerSnapAlgorithm;ZZII)V

    return v17

    :cond_85
    const/4 v6, 0x0

    goto :goto_79

    :pswitch_87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_105

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v2, v3, :cond_105

    const/16 v16, 0x1

    :goto_b2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v2, :cond_c7

    if-eqz v16, :cond_c7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    :cond_c7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/GuideViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    invoke-virtual/range {v2 .. v13}, Lcom/android/systemui/stackdivider/GuideViewController;->actionMove(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IIZZLandroid/graphics/Rect;II)V

    goto/16 :goto_19

    :cond_105
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_11e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v2, v3, :cond_11e

    const/16 v16, 0x1

    goto :goto_b2

    :cond_11e
    const/16 v16, 0x0

    goto :goto_b2

    :pswitch_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v4, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/GuideViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getDividerView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    invoke-virtual/range {v2 .. v14}, Lcom/android/systemui/stackdivider/GuideViewController;->actionUpOrCancel(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IIZZZLandroid/graphics/Rect;II)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    goto/16 :goto_19

    nop

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_121
        :pswitch_87
        :pswitch_121
    .end packed-switch
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    if-eqz v3, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    return-void

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v3, :cond_ff

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz v3, :cond_ff

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    if-eqz v23, :cond_ca

    const/4 v5, 0x0

    :goto_95
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_cf

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    :goto_b3
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mIsMinimizeFlingAnimation:Z

    if-eqz v3, :cond_d8

    const v22, 0x3f19999a    # 0.6f

    :goto_be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v4, 0x1

    const/4 v5, 0x3

    move/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setMinimizeDimLayer(ZIF)V

    return-void

    :cond_ca
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    goto :goto_95

    :cond_cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    goto :goto_b3

    :cond_d8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedModeFirstSplitTargetPosition:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_e7

    const v22, 0x3f19999a    # 0.6f

    goto :goto_be

    :cond_e7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    sub-int v3, v3, v24

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedModeFirstSplitTargetPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v22, v3, v4

    goto :goto_be

    :cond_ff
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-eqz v3, :cond_192

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_192

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_175

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_121
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_149
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_31f

    const/4 v3, 0x1

    :goto_167
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->getStackIdForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v5

    move/from16 v0, v22

    invoke-virtual {v4, v3, v5, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    return-void

    :cond_175
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v3

    if-eqz v3, :cond_18d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    :goto_17f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_121

    :cond_18d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    goto :goto_17f

    :cond_192
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_1f3

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_1f3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_149

    :cond_1f3
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_308

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    if-eqz v3, :cond_2ed

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_2a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v9, p0

    move-object/from16 v12, p3

    move/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_149

    :cond_2ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2a8

    :cond_308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_149

    :cond_31f
    const/4 v3, 0x0

    goto/16 :goto_167
.end method

.method public resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .registers 7

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->scheduleAtSfVsync(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public setAdjustedForIme(Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_19

    move v0, v1

    :goto_9
    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    if-nez p1, :cond_1c

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void

    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_1c
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_11
.end method

.method public setAdjustedForIme(ZJ)V
    .registers 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_71

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_34

    const/high16 v2, 0x3f000000    # 0.5f

    :cond_34
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_37
    if-nez p1, :cond_44

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_44
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setAdjustedForIme(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_70

    if-eqz p1, :cond_70

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    :cond_70
    return-void

    :cond_71
    move v0, v2

    goto :goto_19
.end method

.method public setMinimizedDockStack(ZJZ)V
    .registers 15

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    if-nez p4, :cond_b2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_83

    move v0, v1

    :goto_16
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_85

    move v0, v2

    :goto_3a
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_89

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_87

    :goto_53
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_56
    :goto_56
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    :cond_58
    :goto_58
    if-nez p1, :cond_65

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_65
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(ZJ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, p1, p4}, Lcom/android/systemui/stackdivider/DividerHandleView;->setMinimizedDockStack(ZZ)V

    return-void

    :cond_83
    move v0, v2

    goto :goto_16

    :cond_85
    move v0, v1

    goto :goto_3a

    :cond_87
    move v2, v1

    goto :goto_53

    :cond_89
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v4, :cond_92

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_56

    :cond_92
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v4, :cond_a9

    move v0, v8

    :goto_99
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_b0

    :goto_a5
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_56

    :cond_a9
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_99

    :cond_b0
    move v2, v1

    goto :goto_a5

    :cond_b2
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq v0, p1, :cond_58

    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz p1, :cond_d8

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d8

    :cond_c8
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    if-lez v0, :cond_d2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d8

    :cond_d2
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    :cond_d8
    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->animatingDockedStackForResizableHome(Z)V

    if-eqz p1, :cond_f2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedModeFirstSplitTargetPosition:I

    :cond_f2
    if-eqz p1, :cond_10c

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    :goto_f6
    if-eqz p1, :cond_111

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    :goto_fe
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    invoke-virtual {p0, v8, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    goto/16 :goto_58

    :cond_10c
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    goto :goto_f6

    :cond_111
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    invoke-direct {v2, v0, v3, v8}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    goto :goto_fe
.end method

.method public setMinimizedDockStack(ZZ)V
    .registers 11

    const/4 v7, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    if-nez p1, :cond_2e

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    :cond_10
    :goto_10
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    if-eqz p1, :cond_60

    move v1, v3

    :goto_15
    invoke-virtual {v5, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    if-nez p2, :cond_64

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_62

    :goto_1e
    invoke-virtual {v1, v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setMinimizedDockStack(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setMinimizedDockStack(ZZ)V

    return-void

    :cond_2e
    if-nez p2, :cond_10

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_40

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_10

    :cond_40
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v6, :cond_48

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v1, v7, :cond_10

    :cond_48
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v1, v6, :cond_59

    move v1, v2

    :goto_4f
    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    goto :goto_10

    :cond_59
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_4f

    :cond_60
    move v1, v4

    goto :goto_15

    :cond_62
    move v4, v3

    goto :goto_1e

    :cond_64
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq v1, p1, :cond_23

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    :cond_7b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eq v1, p1, :cond_23

    if-eqz p1, :cond_ba

    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedModeFirstSplitTargetPosition:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v0, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto/16 :goto_23

    :cond_ba
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->noExpandAnimation:Z

    if-eqz v1, :cond_c9

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->noExpandAnimation:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setMinimizeDimLayer(ZIF)V

    :goto_c5
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    goto/16 :goto_23

    :cond_c9
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerPositionBeforeMinimized:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_c5
.end method

.method setUserId(IZ)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mUserId:I

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsRotation_270:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    return-void
.end method

.method showSnapGuide(ZILandroid/graphics/Rect;)V
    .registers 7

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapGuideVisible:Z

    if-ne v1, p1, :cond_9

    :cond_8
    return-void

    :cond_9
    if-eqz p1, :cond_1b

    const-string/jumbo v0, "fromSplit"

    :goto_e
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_1b
    const-string/jumbo v0, "finish"

    goto :goto_e
.end method

.method showSnapWindowDismissToast(Ljava/lang/String;)V
    .registers 13

    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v8, :cond_5d

    const-string/jumbo v8, "divider"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v8, "remove task"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v8, "swap tasks"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v8, "resize docked size null"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "config-orientation"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v8, "config-density"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v8, "snap task to back"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v8, "remove task by pair apps"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v1, :cond_46

    if-nez v6, :cond_46

    if-nez v5, :cond_46

    if-nez v0, :cond_46

    if-eqz v4, :cond_5d

    :cond_46
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120a21

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_5d
    return-void
.end method

.method public startDragging(ZZ)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    if-eqz p2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    if-eqz p2, :cond_26

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    :cond_26
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_37
.end method

.method startSnapMode(ZZI)V
    .registers 6

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public stopDragging(IFZZ)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v2, :cond_3e

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    :goto_d
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v2, p1, :cond_40

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v2, p1, :cond_42

    const/4 v1, 0x1

    :goto_22
    if-eqz v0, :cond_28

    xor-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_30

    :cond_28
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_44

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    if-eqz v2, :cond_44

    :cond_30
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    :goto_35
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void

    :cond_3e
    const/4 v0, 0x0

    goto :goto_d

    :cond_40
    const/4 v1, 0x1

    goto :goto_22

    :cond_42
    const/4 v1, 0x0

    goto :goto_22

    :cond_44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    goto :goto_35
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .registers 13

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .registers 17

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .registers 19

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method
