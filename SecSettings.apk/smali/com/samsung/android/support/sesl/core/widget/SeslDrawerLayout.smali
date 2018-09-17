.class public Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.super Landroid/view/ViewGroup;
.source "SeslDrawerLayout.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;,
        Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;
    }
.end annotation


# static fields
.field static final CAN_HIDE_DESCENDANTS:Z

.field static final LAYOUT_ATTRS:[I

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field private static final THEME_ATTRS:[I


# instance fields
.field private final mChildAccessibilityDelegate:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Landroid/view/WindowInsets;

.field private final mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

.field private final mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    const v3, 0x10100b3

    aput v3, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->LAYOUT_ATTRS:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_27

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_29

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    new-array v0, v2, [I

    const v2, 0x1010434

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->THEME_ATTRS:[I

    return-void

    :cond_27
    move v0, v2

    goto :goto_12

    :cond_29
    move v0, v2

    goto :goto_1b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildAccessibilityDelegate:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

    const/high16 v2, -0x67000000

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mMinDrawerMargin:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v2, v0

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;I)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;I)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setMinVelocity(F)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->setDragger(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-static {p0, v6, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setMinVelocity(F)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->setDragger(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setImportantForAccessibility(I)V

    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;-><init>()V

    invoke-static {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setMotionEventSplittingEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getFitsSystemWindows()Z

    move-result v2

    if-nez v2, :cond_af

    :goto_a2
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void

    :cond_af
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->configureApplyInsets(Landroid/view/View;)V

    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_a2
.end method

.method private static applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/WindowInsets;I)V
    .registers 8

    const/4 v4, 0x0

    move-object v0, p1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_21

    const/4 v1, 0x5

    if-eq p2, v1, :cond_32

    :goto_8
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void

    :cond_21
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_8

    :cond_32
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_8
.end method

.method private static configureApplyInsets(Landroid/view/View;)V
    .registers 2

    instance-of v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayoutImpl;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$InsetsListener;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_4
.end method

.method private static dispatchChildInsets(Landroid/view/View;Landroid/view/WindowInsets;I)V
    .registers 8

    const/4 v4, 0x0

    move-object v0, p1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_c

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1d

    :goto_8
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_8

    :cond_1d
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    goto :goto_8
.end method

.method private static getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 5

    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_f
    move-exception v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static getTopInset(Landroid/view/WindowInsets;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_3
.end method

.method static gravityToString(I)Ljava/lang/String;
    .registers 3

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string/jumbo v0, "LEFT"

    return-object v0

    :cond_13
    const-string/jumbo v0, "RIGHT"

    return-object v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method private hasPeekingDrawer()Z
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v0, :cond_9

    return v4

    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v3, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    const/4 v3, 0x1

    return v3
.end method

.method private hasVisibleDrawer()Z
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_19

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_19

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveShadowDrawables()V
    .registers 2

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_11
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_17

    :cond_e
    if-nez p2, :cond_22

    :goto_10
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_1d
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_14

    :cond_22
    if-eq v0, p1, :cond_1d

    goto :goto_10
.end method


# virtual methods
.method public addDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V
    .registers 3
    .param p1    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_d

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    goto :goto_6
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDescendantFocusability()I

    move-result v5

    const/high16 v6, 0x60000

    if-eq v5, v6, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v1, :cond_19

    if-eqz v3, :cond_36

    :cond_12
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_18
    return-void

    :cond_19
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_28

    :cond_36
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v4, :cond_12

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_50

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_50
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_4d
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_9
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_d
    sget-boolean v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-eqz v1, :cond_1d

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_d

    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildAccessibilityDelegate:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->setAccessibilityDelegate(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V

    goto :goto_11
.end method

.method cancelChildViewTouch()V
    .registers 12

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v2, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_17
    if-lt v10, v9, :cond_20

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_6

    :cond_20
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_17
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    and-int v1, v0, p2

    if-eq v1, p2, :cond_a

    const/4 v1, 0x0

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x1

    goto :goto_9
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public closeDrawer(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    if-nez v1, :cond_45

    if-nez p2, :cond_4a

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void

    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iput v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    goto :goto_20

    :cond_4a
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_20

    :cond_65
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_20
.end method

.method public closeDrawers()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .registers 12

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_7
    if-lt v3, v1, :cond_16

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-nez v5, :cond_5a

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_29

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_29
    if-nez p1, :cond_48

    :goto_2b
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v6, 0x3

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_4d

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    :goto_45
    iput-boolean v9, v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    goto :goto_26

    :cond_48
    iget-boolean v6, v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v6, :cond_26

    goto :goto_2b

    :cond_4d
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    neg-int v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_45

    :cond_5a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    goto :goto_15
.end method

.method public computeScroll()V
    .registers 9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_7
    if-lt v1, v0, :cond_1d

    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->continueSettling(Z)Z

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->continueSettling(Z)Z

    move-result v4

    if-eqz v2, :cond_30

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->postInvalidateOnAnimation()V

    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v3, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_30
    if-nez v4, :cond_19

    goto :goto_1c
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v4, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iput v6, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-nez v4, :cond_2a

    :cond_15
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_e

    :cond_2a
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_32
    if-ltz v0, :cond_15

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_32
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iput v4, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-nez v3, :cond_23

    :cond_14
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->sendAccessibilityEvent(I)V

    goto :goto_d

    :cond_23
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2b
    if-ltz v0, :cond_14

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-nez v2, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 34

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v17

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    if-nez v17, :cond_3a

    :goto_17
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d

    if-nez v17, :cond_9f

    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_d7

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_12d

    :cond_39
    :goto_39
    return v22

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v10

    const/16 v19, 0x0

    :goto_40
    move/from16 v0, v19

    if-lt v0, v10, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v3, v14, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_17

    :cond_4f
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_60

    :cond_5d
    :goto_5d
    add-int/lit8 v19, v19, 0x1

    goto :goto_40

    :cond_60
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5d

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, v18

    if-lt v2, v0, :cond_5d

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_94

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v14, :cond_5d

    move/from16 v14, v26

    goto :goto_5d

    :cond_94
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v13, :cond_5d

    move/from16 v13, v27

    goto :goto_5d

    :cond_9f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v9, v2, 0x18

    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    shl-int/lit8 v2, v20, 0x18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v13

    int-to-float v5, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_39

    :cond_d7
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgeSize()I

    move-result v16

    int-to-float v2, v12

    move/from16 v0, v16

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v4, v12, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_39

    :cond_12d
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    sub-int v24, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgeSize()I

    move-result v16

    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v16

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_39
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {p1, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    and-int/lit8 v0, v5, 0x7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_f
    if-lt v4, v3, :cond_13

    const/4 v5, 0x0

    return-object v5

    :cond_13
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v5, v2, 0x7

    if-eq v5, v0, :cond_22

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_22
    return-object v1
.end method

.method findOpenDrawer()Landroid/view/View;
    .registers 7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_9

    const/4 v4, 0x0

    return-object v4

    :cond_9
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v4, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1d

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1d
    return-object v0
.end method

.method findVisibleDrawer()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v1, :cond_9

    const/4 v3, 0x0

    return-object v3

    :cond_9
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    if-nez v0, :cond_e

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_16

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    check-cast p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;)V

    goto :goto_d

    :cond_16
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_d
.end method

.method public getDrawerElevation()F
    .registers 2

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    return v0
.end method

.method public getDrawerLockMode(I)I
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    sparse-switch p1, :sswitch_data_4e

    :cond_9
    return v7

    :sswitch_a
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    if-ne v5, v6, :cond_15

    if-eqz v1, :cond_18

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    :goto_12
    if-eq v2, v6, :cond_9

    return v2

    :cond_15
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    return v5

    :cond_18
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    goto :goto_12

    :sswitch_1b
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    if-ne v5, v6, :cond_26

    if-eqz v1, :cond_29

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    :goto_23
    if-eq v3, v6, :cond_9

    return v3

    :cond_26
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    return v5

    :cond_29
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    goto :goto_23

    :sswitch_2c
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    if-ne v5, v6, :cond_37

    if-eqz v1, :cond_3a

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    :goto_34
    if-eq v4, v6, :cond_9

    return v4

    :cond_37
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    return v5

    :cond_3a
    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    goto :goto_34

    :sswitch_3d
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    if-ne v5, v6, :cond_48

    if-eqz v1, :cond_4b

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    :goto_45
    if-eq v0, v6, :cond_9

    return v0

    :cond_48
    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    return v5

    :cond_4b
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    goto :goto_45

    :sswitch_data_4e
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_1b
        0x800003 -> :sswitch_2c
        0x800005 -> :sswitch_3d
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .registers 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v2, :cond_36

    :goto_14
    return v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    move v1, v2

    goto :goto_14
.end method

.method isDrawerView(Landroid/view/View;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v1, v2, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_1b

    and-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_1c

    return v3

    :cond_1b
    return v4

    :cond_1c
    return v4
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_37

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move v0, v1

    goto :goto_15
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v5, v4

    mul-float/2addr v5, v2

    float-to-int v3, v5

    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v1, v5

    sub-int v0, v1, v3

    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_18

    neg-int v0, v0

    :cond_18
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawStatusBarBackground:Z

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getTopInset(Landroid/view/WindowInsets;)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v8, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    or-int v2, v8, v9

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_70

    :cond_18
    :goto_18
    if-eqz v2, :cond_62

    :cond_1a
    move v6, v7

    :goto_1b
    return v6

    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionX:F

    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionY:F

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimOpacity:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_39

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3e

    :cond_39
    :goto_39
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_18

    :cond_3e
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_39

    const/4 v3, 0x1

    goto :goto_39

    :pswitch_46
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(I)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightCallback:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_18

    :pswitch_5a
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_18

    :cond_62
    if-nez v3, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasPeekingDrawer()Z

    move-result v8

    if-nez v8, :cond_1a

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v8, :cond_1a

    goto :goto_1b

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_5a
        :pswitch_46
        :pswitch_5a
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_9

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_f
    :goto_f
    if-nez v0, :cond_1c

    :goto_11
    return v1

    :cond_12
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers()V

    goto :goto_f

    :cond_1c
    const/4 v1, 0x1

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 29

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInLayout:Z

    sub-int v17, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v6

    const/4 v12, 0x0

    :goto_f
    if-lt v12, v6, :cond_22

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInLayout:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    return-void

    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_ae

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_b2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v18

    if-nez v18, :cond_da

    int-to-float v0, v10

    move/from16 v18, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v8, v17, v18

    sub-int v18, v17, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    :goto_72
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-eqz v18, :cond_fb

    const/4 v4, 0x1

    :goto_7b
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    move/from16 v18, v0

    and-int/lit8 v16, v18, 0x70

    sparse-switch v16, :sswitch_data_164

    :sswitch_84
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v19, v8, v10

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_99
    if-nez v4, :cond_154

    :goto_9b
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_15b

    const/4 v15, 0x0

    :goto_a6
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v15, :cond_15e

    :cond_ae
    :goto_ae
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_f

    :cond_b2
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v20, v20, v21

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_ae

    :cond_da
    neg-int v0, v10

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v18, v19

    add-int v18, v10, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v14, v18, v19

    goto/16 :goto_72

    :cond_fb
    const/4 v4, 0x0

    goto/16 :goto_7b

    :sswitch_fe
    sub-int v11, p5, p3

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v19, v8, v10

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_99

    :sswitch_11f
    sub-int v11, p5, p3

    sub-int v18, v11, v7

    div-int/lit8 v9, v18, 0x2

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_148

    add-int v18, v9, v7

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_14b

    :goto_13b
    add-int v18, v8, v10

    add-int v19, v9, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_99

    :cond_148
    iget v9, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    goto :goto_13b

    :cond_14b
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v18, v11, v18

    sub-int v9, v18, v7

    goto :goto_13b

    :cond_154
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    goto/16 :goto_9b

    :cond_15b
    const/4 v15, 0x4

    goto/16 :goto_a6

    :cond_15e
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ae

    nop

    :sswitch_data_164
    .sparse-switch
        0x10 -> :sswitch_11f
        0x30 -> :sswitch_84
        0x50 -> :sswitch_fe
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 28

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_27

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isInEditMode()Z

    move-result v22

    if-nez v22, :cond_4e

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_27
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v14, v0, :cond_18

    :cond_2d
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    move-object/from16 v22, v0

    if-nez v22, :cond_70

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v18

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v6

    const/16 v16, 0x0

    :goto_49
    move/from16 v0, v16

    if-lt v0, v6, :cond_78

    return-void

    :cond_4e
    const/high16 v22, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_65

    if-eqz v20, :cond_68

    :goto_58
    const/high16 v22, -0x80000000

    move/from16 v0, v22

    if-eq v14, v0, :cond_6d

    if-nez v14, :cond_2d

    const/high16 v14, 0x40000000    # 2.0f

    const/16 v15, 0x12c

    goto :goto_2d

    :cond_65
    const/high16 v20, 0x40000000    # 2.0f

    goto :goto_58

    :cond_68
    const/high16 v20, 0x40000000    # 2.0f

    const/16 v21, 0x12c

    goto :goto_58

    :cond_6d
    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_2d

    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getFitsSystemWindows()Z

    move-result v22

    if-eqz v22, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_78
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_133

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    if-nez v3, :cond_d6

    :goto_94
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v22

    if-nez v22, :cond_104

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v22

    if-nez v22, :cond_137

    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Child "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " at index "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_d6
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v22

    if-nez v22, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/WindowInsets;I)V

    goto :goto_94

    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v5, v0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchChildInsets(Landroid/view/View;Landroid/view/WindowInsets;I)V

    goto :goto_94

    :cond_104
    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v22, v21, v22

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V

    :cond_133
    :goto_133
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_49

    :cond_137
    sget-boolean v22, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-nez v22, :cond_19a

    :cond_13b
    :goto_13b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v22

    and-int/lit8 v7, v22, 0x7

    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v7, v0, :cond_1b4

    const/16 v17, 0x0

    :goto_14b
    if-nez v17, :cond_1b7

    :cond_14d
    if-eqz v17, :cond_1ec

    :goto_14f
    if-nez v17, :cond_1f0

    const/4 v13, 0x1

    :goto_152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mMinDrawerMargin:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildMeasureSpec(III)I

    move-result v11

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V

    goto :goto_133

    :cond_19a
    invoke-virtual {v5}, Landroid/view/View;->getElevation()F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_13b

    :cond_1b4
    const/16 v17, 0x1

    goto :goto_14b

    :cond_1b7
    if-eqz v12, :cond_14d

    :cond_1b9
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Child drawer has absolute gravity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " but this "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "DrawerLayout"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " already has a drawer view along that edge"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_1ec
    if-nez v13, :cond_1b9

    goto/16 :goto_14f

    :cond_1f0
    const/4 v12, 0x1

    goto/16 :goto_152
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    const/4 v4, 0x3

    instance-of v2, p1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    if-eqz v2, :cond_24

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    if-nez v2, :cond_28

    :cond_13
    :goto_13
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    if-ne v2, v4, :cond_34

    :goto_17
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    if-ne v2, v4, :cond_3a

    :goto_1b
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    if-ne v2, v4, :cond_41

    :goto_1f
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    if-ne v2, v4, :cond_4a

    :goto_23
    return-void

    :cond_24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_28
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_13

    :cond_34
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    goto :goto_17

    :cond_3a
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    goto :goto_1b

    :cond_41
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    goto :goto_1f

    :cond_4a
    iget v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    const v3, 0x800005

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    goto :goto_23
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveShadowDrawables()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    new-instance v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;

    invoke-direct {v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-lt v2, v1, :cond_23

    :goto_12
    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeLeft:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeRight:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeStart:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->lockModeEnd:I

    return-object v6

    :cond_23
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v10, v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    if-eq v10, v9, :cond_3f

    move v4, v8

    :goto_32
    iget v10, v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_41

    move v3, v8

    :goto_38
    if-eqz v4, :cond_43

    :cond_3a
    iget v8, v5, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    iput v8, v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$SavedState;->openDrawerGravity:I

    goto :goto_12

    :cond_3f
    move v4, v9

    goto :goto_32

    :cond_41
    move v3, v9

    goto :goto_38

    :cond_43
    if-nez v3, :cond_3a

    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v10, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x1

    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_80

    :goto_14
    :pswitch_14
    const/4 v10, 0x1

    return v10

    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionX:F

    iput v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionY:F

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_14

    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/4 v4, 0x1

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    float-to-int v11, v8

    float-to-int v12, v9

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_43

    :cond_3c
    :goto_3c
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_14

    :cond_43
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3c

    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionX:F

    sub-float v1, v8, v10

    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInitialMotionY:F

    sub-float v2, v9, v10

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getTouchSlop()I

    move-result v5

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    mul-int v11, v5, v5

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_72

    const/4 v4, 0x0

    :goto_71
    goto :goto_3c

    :cond_72
    const/4 v4, 0x1

    goto :goto_71

    :pswitch_74
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_14

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_16
        :pswitch_29
        :pswitch_14
        :pswitch_74
    .end packed-switch
.end method

.method public openDrawer(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .registers 8

    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mFirstLayout:Z

    if-nez v1, :cond_46

    if-nez p2, :cond_4e

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a sliding drawer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    iput v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    iput v4, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_21

    :cond_4e
    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->openState:I

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_21

    :cond_6e
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_21
.end method

.method public removeDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V
    .registers 3
    .param p1    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_c
    return-void

    :cond_d
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDisallowInterceptRequested:Z

    if-nez p1, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawers(Z)V

    goto :goto_7
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mInLayout:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_4
.end method

.method public setChildInsets(Landroid/view/WindowInsets;Z)V
    .registers 5

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLastInsets:Landroid/view/WindowInsets;

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz p2, :cond_e

    :cond_7
    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->requestLayout()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDrawerElevation(F)V
    .registers 5

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_14
.end method

.method public setDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    if-nez v0, :cond_9

    :goto_4
    if-nez p1, :cond_f

    :goto_6
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    return-void

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->removeDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->addDrawerListener(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;)V

    goto :goto_6
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    sparse-switch p2, :sswitch_data_3e

    :goto_b
    if-nez p1, :cond_1d

    :goto_d
    packed-switch p1, :pswitch_data_50

    :cond_10
    :goto_10
    return-void

    :sswitch_11
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeLeft:I

    goto :goto_b

    :sswitch_14
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeRight:I

    goto :goto_b

    :sswitch_17
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeStart:I

    goto :goto_b

    :sswitch_1a
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLockModeEnd:I

    goto :goto_b

    :cond_1d
    const/4 v4, 0x3

    if-eq v0, v4, :cond_26

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    :goto_22
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto :goto_d

    :cond_26
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    goto :goto_22

    :pswitch_29
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_10

    :pswitch_33
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_10

    nop

    :sswitch_data_3e
    .sparse-switch
        0x3 -> :sswitch_11
        0x5 -> :sswitch_14
        0x800003 -> :sswitch_17
        0x800005 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 7

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerLockMode(II)V

    return-void

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDrawerShadow(II)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    const v2, 0x800005

    const v1, 0x800003

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-nez v0, :cond_1d

    and-int v0, p2, v1

    if-eq v0, v1, :cond_1e

    and-int v0, p2, v2

    if-eq v0, v2, :cond_27

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2d

    return-void

    :cond_1d
    return-void

    :cond_1e
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    :goto_20
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->resolveShadowDrawables()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void

    :cond_27
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    :cond_2a
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_20

    :cond_2d
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_20
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getLayoutDirection()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    :goto_e
    return-void

    :cond_f
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_12
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iput p2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    return-void
.end method

.method public setScrimColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mScrimColor:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->invalidate()V

    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .registers 13

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mLeftDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mRightDragger:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v4

    if-ne v1, v7, :cond_18

    :cond_10
    const/4 v5, 0x1

    :goto_11
    if-nez p3, :cond_22

    :cond_13
    :goto_13
    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerState:I

    if-ne v5, v6, :cond_41

    :cond_17
    return-void

    :cond_18
    if-eq v4, v7, :cond_10

    if-ne v1, v8, :cond_1e

    :cond_1c
    const/4 v5, 0x2

    goto :goto_11

    :cond_1e
    if-eq v4, v8, :cond_1c

    const/4 v5, 0x0

    goto :goto_11

    :cond_22
    if-nez p2, :cond_13

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;

    iget v6, v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_35

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_13

    :cond_35
    iget v6, v3, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$LayoutParams;->onScreen:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_13

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_13

    :cond_41
    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mDrawerState:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_4f
    if-ltz v0, :cond_17

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;

    invoke-interface {v6, v5}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4f
.end method
