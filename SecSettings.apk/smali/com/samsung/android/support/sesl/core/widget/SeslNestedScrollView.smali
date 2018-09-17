.class public Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SeslNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

.field private static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

.field private mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

.field private mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101017a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initScrollView()V

    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setFillViewport(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object v1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ACCESSIBILITY_DELEGATE:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V

    return-void
.end method

.method private canScroll()Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_1d

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x1

    goto :goto_1c
.end method

.method private static clamp(III)I
    .registers 4

    const/4 v0, 0x0

    if-lt p1, p2, :cond_4

    :cond_3
    return v0

    :cond_4
    if-ltz p0, :cond_3

    add-int v0, p1, p0

    if-gt v0, p2, :cond_b

    return p0

    :cond_b
    sub-int v0, p2, p1

    return v0
.end method

.method private doScrollY(I)V
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    if-nez v0, :cond_c

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    goto :goto_3
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onRelease()V

    goto :goto_d
.end method

.method private ensureGlows()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    new-instance v1, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    goto :goto_c
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v0, :cond_f

    return-object v1

    :cond_f
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-lt p2, v6, :cond_22

    :cond_1f
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_22
    if-ge v9, p3, :cond_1f

    if-lt p2, v9, :cond_36

    :cond_26
    const/4 v8, 0x0

    :goto_27
    if-eqz v1, :cond_3a

    if-nez p1, :cond_3d

    :cond_2b
    if-eqz p1, :cond_45

    :goto_2d
    const/4 v7, 0x0

    :goto_2e
    if-nez v3, :cond_4c

    if-nez v8, :cond_52

    if-eqz v7, :cond_1f

    move-object v1, v5

    goto :goto_1f

    :cond_36
    if-ge v6, p3, :cond_26

    const/4 v8, 0x1

    goto :goto_27

    :cond_3a
    move-object v1, v5

    move v3, v8

    goto :goto_1f

    :cond_3d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-ge v9, v10, :cond_2b

    :cond_43
    const/4 v7, 0x1

    goto :goto_2e

    :cond_45
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v6, v10, :cond_43

    goto :goto_2d

    :cond_4c
    if-eqz v8, :cond_1f

    if-eqz v7, :cond_1f

    move-object v1, v5

    goto :goto_1f

    :cond_52
    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_1f
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_17

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    if-ge v1, v2, :cond_1a

    :cond_e
    const/4 v0, 0x1

    :goto_f
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_16
    return-void

    :cond_17
    if-gtz p1, :cond_8

    goto :goto_f

    :cond_1a
    if-ltz p1, :cond_e

    goto :goto_f

    :cond_1d
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedFling(FFZ)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->fling(I)V

    goto :goto_16
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2c

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x101004d

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    :cond_2c
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVerticalScrollFactor:F

    return v2

    :cond_2f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inChild(II)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_18

    :cond_17
    :goto_17
    return v2

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_17

    const/4 v2, 0x1

    goto :goto_17
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_9
.end method

.method private initScrollView()V
    .registers 4

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setFocusable(Z)V

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_f

    :goto_c
    move v1, v2

    :cond_d
    return v1

    :cond_e
    return v1

    :cond_f
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_c
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-ge v0, v1, :cond_17

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    if-eq v1, v3, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-eqz v2, :cond_27

    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_d

    :cond_27
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private recycleVelocityTracker()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_5
.end method

.method private scrollAndFocus(III)Z
    .registers 12

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    add-int v0, v1, v4

    const/16 v7, 0x21

    if-eq p1, v7, :cond_26

    :goto_10
    invoke-direct {p0, v6, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_28

    :goto_16
    if-ge p2, v1, :cond_2a

    :cond_18
    if-nez v6, :cond_2e

    sub-int v2, p3, v0

    :goto_1c
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    :goto_1f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-ne v5, v7, :cond_31

    :goto_25
    return v3

    :cond_26
    const/4 v6, 0x1

    goto :goto_10

    :cond_28
    move-object v5, p0

    goto :goto_16

    :cond_2a
    if-gt p3, v0, :cond_18

    const/4 v3, 0x0

    goto :goto_1f

    :cond_2e
    sub-int v2, p2, v1

    goto :goto_1c

    :cond_31
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_25
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_13
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-nez v0, :cond_b

    move v1, v2

    :goto_8
    if-nez v1, :cond_d

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    if-nez p2, :cond_13

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    goto :goto_a

    :cond_13
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_a
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrowScroll(I)Z
    .registers 13

    const/16 v10, 0x82

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v0, p0, :cond_2a

    :goto_9
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getMaxScrollAmount()I

    move-result v3

    if-nez v4, :cond_2c

    :cond_17
    move v6, v3

    const/16 v7, 0x21

    if-eq p1, v7, :cond_4d

    :cond_1c
    if-eq p1, v10, :cond_58

    :cond_1e
    :goto_1e
    if-eqz v6, :cond_7c

    if-eq p1, v10, :cond_7d

    neg-int v7, v6

    :goto_23
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    :goto_26
    if-nez v0, :cond_7f

    :cond_28
    :goto_28
    const/4 v7, 0x1

    return v7

    :cond_2a
    const/4 v0, 0x0

    goto :goto_9

    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_26

    :cond_4d
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v3, :cond_1c

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    goto :goto_1e

    :cond_58
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1e

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int v5, v7, v8

    sub-int v7, v1, v5

    if-ge v7, v3, :cond_1e

    sub-int v6, v1, v5

    goto :goto_1e

    :cond_7c
    return v9

    :cond_7d
    move v7, v6

    goto :goto_23

    :cond_7f
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->requestFocus()Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->setDescendantFocusability(I)V

    goto :goto_28
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_c1

    :goto_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScrollerY:I

    :goto_18
    return-void

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScrollerY:I

    sub-int v4, v19, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-nez v2, :cond_4a

    :goto_3e
    if-nez v4, :cond_53

    :cond_40
    :goto_40
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScrollerY:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_18

    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    goto :goto_3e

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v5

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v6

    sub-int v13, v4, v11

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v17

    if-nez v17, :cond_a3

    :cond_83
    const/16 v16, 0x1

    :goto_85
    if-eqz v16, :cond_40

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ensureGlows()V

    if-lez v19, :cond_ae

    :cond_8c
    move/from16 v0, v19

    if-lt v0, v8, :cond_40

    if-ge v6, v8, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_40

    :cond_a3
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_ab

    :goto_a8
    const/16 v16, 0x0

    goto :goto_85

    :cond_ab
    if-gtz v8, :cond_83

    goto :goto_a8

    :cond_ae
    if-lez v6, :cond_8c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_40

    :cond_c1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    goto/16 :goto_13
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    add-int v4, v5, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-gtz v7, :cond_30

    :goto_19
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_32

    :goto_25
    const/4 v6, 0x0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v4, :cond_34

    :cond_2a
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lt v7, v5, :cond_58

    :cond_2e
    :goto_2e
    return v6

    :cond_2f
    return v9

    :cond_30
    add-int/2addr v5, v2

    goto :goto_19

    :cond_32
    sub-int/2addr v4, v2

    goto :goto_25

    :cond_34
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v7, v3, :cond_52

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x0

    :goto_43
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v1, v0, v4

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_2e

    :cond_52
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x0

    goto :goto_43

    :cond_58
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_2e

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v7, v3, :cond_72

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    rsub-int/lit8 v6, v7, 0x0

    :goto_68
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2e

    :cond_72
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    rsub-int/lit8 v6, v7, 0x0

    goto :goto_68
.end method

.method public computeVerticalScrollExtent()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int v0, v5, v6

    if-eqz v1, :cond_2d

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ltz v4, :cond_2e

    if-gt v4, v2, :cond_30

    :goto_2c
    return v3

    :cond_2d
    return v0

    :cond_2e
    sub-int/2addr v3, v4

    goto :goto_2c

    :cond_30
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_2c
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_8
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    if-nez v4, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_60

    :goto_15
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    neg-int v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v4, v3

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-nez v4, :cond_99

    :goto_5c
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-nez v4, :cond_95

    :goto_91
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_15

    :cond_95
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_91

    :cond_99
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_5c
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9

    const/16 v5, 0x21

    const/16 v4, 0x82

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_43

    :goto_17
    return v1

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    return v3

    :cond_1f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v0, p0, :cond_37

    :goto_2c
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_39

    :cond_36
    :goto_36
    return v3

    :cond_37
    const/4 v0, 0x0

    goto :goto_2c

    :cond_39
    if-eq v2, p0, :cond_36

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v3, 0x1

    goto :goto_36

    :cond_43
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_78

    goto :goto_17

    :sswitch_4b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_17

    :cond_56
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_17

    :sswitch_5b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_17

    :cond_66
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_17

    :sswitch_6b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_76

    move v3, v4

    :goto_72
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->pageScroll(I)Z

    goto :goto_17

    :cond_76
    move v3, v5

    goto :goto_72

    :sswitch_data_78
    .sparse-switch
        0x13 -> :sswitch_4b
        0x14 -> :sswitch_5b
        0x3e -> :sswitch_6b
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 13

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v4, p1

    move v5, v3

    move v6, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScrollerY:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_7
.end method

.method public fullScroll(I)Z
    .registers 9

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_21

    move v1, v4

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_23

    :cond_14
    :goto_14
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_21
    const/4 v1, 0x1

    goto :goto_6

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_14
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    if-lt v2, v1, :cond_2b

    const/high16 v3, 0x3f800000    # 1.0f

    return v3

    :cond_29
    const/4 v3, 0x0

    return v3

    :cond_2b
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    return v3
.end method

.method public getMaxScrollAmount()I
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getScrollRange()I
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_9

    :goto_8
    return v1

    :cond_9
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_8
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-lt v1, v0, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_13
    const/4 v2, 0x0

    return v2

    :cond_15
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    :cond_9
    :goto_9
    return v6

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_44

    goto :goto_9

    :pswitch_12
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_9

    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    sub-int v1, v2, v0

    if-ltz v1, :cond_40

    if-gt v1, v3, :cond_42

    :goto_35
    if-eq v1, v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v5

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v5, 0x1

    return v5

    :cond_40
    const/4 v1, 0x0

    goto :goto_35

    :cond_42
    move v1, v3

    goto :goto_35

    :pswitch_data_44
    .packed-switch 0x8
        :pswitch_12
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eq v7, v4, :cond_12

    :cond_a
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_dc

    :cond_f
    :goto_f
    :pswitch_f
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    return v0

    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_a

    return v0

    :pswitch_17
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    if-eq v8, v2, :cond_f

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    if-eq v10, v2, :cond_52

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_f

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    iput v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_f

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " in onInterceptTouchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NestedScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :pswitch_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->inChild(II)Z

    move-result v1

    if-eqz v1, :cond_a9

    iput v11, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_a2

    move v0, v3

    :cond_a2
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    goto/16 :goto_f

    :cond_a9
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    goto/16 :goto_f

    :pswitch_b0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-nez v0, :cond_d2

    :goto_cd
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll(I)V

    goto/16 :goto_f

    :cond_d2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_cd

    :pswitch_d6
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_74
        :pswitch_b0
        :pswitch_17
        :pswitch_b0
        :pswitch_f
        :pswitch_f
        :pswitch_d6
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-nez v3, :cond_20

    :cond_b
    :goto_b
    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    if-eqz v3, :cond_2e

    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLaidOut:Z

    return-void

    :cond_20
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_b

    :cond_2e
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    if-nez v3, :cond_5f

    :goto_32
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_6d

    move v0, v2

    :goto_39
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-gt v3, v1, :cond_76

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    goto :goto_11

    :cond_5f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    goto :goto_32

    :cond_6d
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_39

    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollTo(II)V

    goto :goto_11
.end method

.method protected onMeasure(II)V
    .registers 11

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    if-eqz v6, :cond_15

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_17

    :cond_14
    :goto_14
    return-void

    :cond_15
    return-void

    :cond_16
    return-void

    :cond_17
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_14
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    return v0

    :cond_4
    float-to-int v0, p3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->flingWithNestedDispatch(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v1, p5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v6

    sub-int v4, p5, v2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_22

    :goto_8
    if-eqz p2, :cond_25

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_2e

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1

    :cond_1f
    const/16 p1, 0x82

    goto :goto_8

    :cond_22
    const/16 p1, 0x21

    goto :goto_8

    :cond_25
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_2e
    return v2

    :cond_2f
    return v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    if-eqz v1, :cond_14

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSavedState:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->requestLayout()V

    return-void

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$SavedState;->scrollPosition:I

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;->onScrollChange(Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;IIII)V

    goto :goto_7
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    if-eq p0, v0, :cond_a

    invoke-direct {p0, v0, v2, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->doScrollY(I)V

    goto :goto_13
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    const/4 v0, 0x0

    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mParentHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 35

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->initVelocityTrackerIfNotExists()V

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    if-eqz v21, :cond_26

    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v21, :pswitch_data_336

    :cond_1b
    :goto_1b
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_32a

    :goto_21
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    return v2

    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    goto :goto_d

    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_69

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x0

    :goto_3d
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_6d

    :cond_43
    :goto_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_7a

    :goto_4d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->startNestedScroll(II)Z

    goto :goto_1b

    :cond_69
    const/4 v2, 0x0

    return v2

    :cond_6b
    const/4 v2, 0x1

    goto :goto_3d

    :cond_6d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-eqz v28, :cond_43

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_43

    :cond_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_4d

    :pswitch_82
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_128

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-nez v2, :cond_14f

    :goto_b4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_177

    :cond_ba
    :goto_ba
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v27

    if-nez v27, :cond_1a3

    :cond_db
    const/16 v23, 0x1

    :goto_dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v2

    if-nez v2, :cond_1af

    :cond_ef
    :goto_ef
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v26

    sub-int v13, v4, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v2

    if-nez v2, :cond_1c1

    if-eqz v23, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->ensureGlows()V

    add-int v29, v26, v4

    if-ltz v29, :cond_1f1

    move/from16 v0, v29

    if-gt v0, v8, :cond_220

    :cond_113
    :goto_113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_253

    :cond_123
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1b

    :cond_128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in onTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NestedScrollView"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_14f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    goto/16 :goto_b4

    :cond_177
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-nez v28, :cond_195

    :goto_187
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-gtz v4, :cond_19c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_ba

    :cond_195
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_187

    :cond_19c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    goto/16 :goto_ba

    :cond_1a3
    const/4 v2, 0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_1ac

    :goto_1a8
    const/16 v23, 0x0

    goto/16 :goto_dd

    :cond_1ac
    if-gtz v8, :cond_db

    goto :goto_1a8

    :cond_1af
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_ef

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_ef

    :cond_1c1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mNestedYOffset:I

    goto/16 :goto_1b

    :cond_1f1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_113

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onRelease()V

    goto/16 :goto_113

    :cond_220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_113

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowTop:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->onRelease()V

    goto/16 :goto_113

    :cond_253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mEdgeGlowBottom:Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslEdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_123

    goto/16 :goto_1b

    :pswitch_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mMinimumVelocity:I

    if-gt v2, v3, :cond_2ae

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v16

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-nez v2, :cond_2b7

    :goto_2a4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->endDrag()V

    goto/16 :goto_1b

    :cond_2ae
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->flingWithNestedDispatch(I)V

    goto :goto_2a4

    :cond_2b7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_2a4

    :pswitch_2bb
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_2cb

    :cond_2c1
    :goto_2c1
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->endDrag()V

    goto/16 :goto_1b

    :cond_2cb
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2c1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v16

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2c1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    goto :goto_2c1

    :pswitch_2f1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    goto/16 :goto_1b

    :pswitch_310
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastMotionY:I

    goto/16 :goto_1b

    :cond_32a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_21

    nop

    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_25f
        :pswitch_82
        :pswitch_2bb
        :pswitch_1b
        :pswitch_2f1
        :pswitch_310
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getOverScrollMode()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    if-gt v1, v4, :cond_4e

    const/4 v9, 0x0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->computeVerticalScrollExtent()I

    move-result v4

    if-gt v1, v4, :cond_50

    const/4 v10, 0x0

    :goto_1a
    if-nez v15, :cond_52

    :cond_1c
    const/4 v14, 0x1

    :goto_1d
    if-nez v15, :cond_5a

    :cond_1f
    const/16 v16, 0x1

    :goto_21
    add-int v2, p3, p1

    if-eqz v14, :cond_63

    :goto_25
    add-int v3, p4, p2

    if-eqz v16, :cond_66

    :goto_29
    move/from16 v0, p7

    neg-int v13, v0

    add-int v17, p7, p5

    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v18, v0

    add-int v8, p8, p6

    const/4 v11, 0x0

    move/from16 v0, v17

    if-gt v2, v0, :cond_69

    if-lt v2, v13, :cond_6d

    :goto_3c
    const/4 v12, 0x0

    if-gt v3, v8, :cond_70

    move/from16 v0, v18

    if-lt v3, v0, :cond_73

    :goto_43
    if-nez v12, :cond_77

    :cond_45
    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->onOverScrolled(IIZZ)V

    if-eqz v11, :cond_8f

    :cond_4c
    const/4 v1, 0x1

    :goto_4d
    return v1

    :cond_4e
    const/4 v9, 0x1

    goto :goto_f

    :cond_50
    const/4 v10, 0x1

    goto :goto_1a

    :cond_52
    const/4 v1, 0x1

    if-eq v15, v1, :cond_57

    :goto_55
    const/4 v14, 0x0

    goto :goto_1d

    :cond_57
    if-nez v9, :cond_1c

    goto :goto_55

    :cond_5a
    const/4 v1, 0x1

    if-eq v15, v1, :cond_60

    :goto_5d
    const/16 v16, 0x0

    goto :goto_21

    :cond_60
    if-nez v10, :cond_1f

    goto :goto_5d

    :cond_63
    const/16 p7, 0x0

    goto :goto_25

    :cond_66
    const/16 p8, 0x0

    goto :goto_29

    :cond_69
    move/from16 v2, v17

    const/4 v11, 0x1

    goto :goto_3c

    :cond_6d
    move v2, v13

    const/4 v11, 0x1

    goto :goto_3c

    :cond_70
    move v3, v8

    const/4 v12, 0x1

    goto :goto_43

    :cond_73
    move/from16 v3, v18

    const/4 v12, 0x1

    goto :goto_43

    :cond_77
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v1

    if-nez v1, :cond_45

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_45

    :cond_8f
    if-nez v12, :cond_4c

    const/4 v1, 0x0

    goto :goto_4d
.end method

.method public pageScroll(I)Z
    .registers 9

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_31

    move v1, v4

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v2

    if-nez v1, :cond_33

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_5d

    :cond_1b
    :goto_1b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_31
    const/4 v1, 0x1

    goto :goto_6

    :cond_33
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1b

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_1b

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1b

    :cond_5d
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1b
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    if-eqz v0, :cond_a

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    :goto_6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_a
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_6
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-nez p1, :cond_6

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->recycleVelocityTracker()V

    goto :goto_2
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->clamp(III)I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v1

    if-eq p1, v1, :cond_42

    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_7

    :cond_42
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    if-ne p2, v1, :cond_3e

    goto :goto_7
.end method

.method public setFillViewport(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->requestLayout()V

    goto :goto_4
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mOnScrollChangeListener:Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 15

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_58

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScroll:J

    sub-long v2, v8, v10

    const-wide/16 v8, 0xfa

    cmp-long v6, v2, v8

    if-gtz v6, :cond_59

    const/4 v6, 0x1

    :goto_16
    if-nez v6, :cond_5b

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v8

    sub-int v1, v6, v8

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v6, v0, v1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {v6, v8, v5, v7, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->postInvalidateOnAnimation()V

    :goto_51
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mLastScroll:J

    return-void

    :cond_58
    return-void

    :cond_59
    move v6, v7

    goto :goto_16

    :cond_5b
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_67

    :goto_63
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->scrollBy(II)V

    goto :goto_51

    :cond_67
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_63
.end method

.method public final smoothScrollTo(II)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->mChildHelper:Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslNestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
