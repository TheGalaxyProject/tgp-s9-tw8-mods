.class public Lcom/android/systemui/stackdivider/GuideViewController;
.super Ljava/lang/Object;
.source "GuideViewController.java"


# static fields
.field private static sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDefaultHandleMoveThreshold:I

.field private mDismissEndPosition:I

.field private mDismissStartPosition:I

.field private mFirstSplitTargetPosition:I

.field private final mGuideHeight:I

.field private final mGuideRect:Landroid/graphics/Rect;

.field private mGuideView:Lcom/android/systemui/stackdivider/GuideView;

.field private mIsMoving:Z

.field private mLastSplitTargetPosition:I

.field private mMaximizeGuideView:Z

.field private mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

.field private mShowing:Z

.field private mSnapWindowHandleMoveThreshold:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/GuideViewController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->removeView()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDefaultHandleMoveThreshold:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mSnapWindowHandleMoveThreshold:I

    return-void
.end method

.method private addView(Landroid/content/Context;IZ)V
    .registers 8

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/GuideView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/systemui/stackdivider/GuideView;->setFocusedZone(ILandroid/graphics/Rect;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V
    .registers 15

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_a

    return-void

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_27

    :cond_14
    sget v0, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    if-ne v0, v3, :cond_62

    if-eqz p4, :cond_60

    const/4 v3, 0x2

    :goto_1b
    iget-object v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, v3, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :goto_20
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v0, p4}, Lcom/android/systemui/stackdivider/GuideViewController;->addView(Landroid/content/Context;IZ)V

    :cond_27
    if-eqz p4, :cond_6b

    const/4 v1, 0x0

    :goto_2a
    iget-object v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_6e

    move v3, v5

    :goto_2f
    iput v3, v6, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_71

    :goto_35
    iput p3, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_73

    :goto_3b
    iput p6, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    if-eqz p4, :cond_49

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    add-int p7, v5, v6

    :cond_49
    iput p7, v3, Landroid/graphics/Rect;->bottom:I

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-nez v3, :cond_7c

    new-instance v2, Lcom/android/systemui/stackdivider/GuideViewController$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/stackdivider/GuideViewController$2;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V

    :goto_54
    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/systemui/stackdivider/GuideView;->show(Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V

    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void

    :cond_60
    move v3, v4

    goto :goto_1b

    :cond_62
    if-eqz p4, :cond_65

    const/4 v3, 0x4

    :cond_65
    iget-object v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, v3, v6}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_20

    :cond_6b
    iget v1, p5, Landroid/graphics/Rect;->left:I

    goto :goto_2a

    :cond_6e
    sub-int v3, p2, v1

    goto :goto_2f

    :cond_71
    move p3, v5

    goto :goto_35

    :cond_73
    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideHeight:I

    add-int p6, v5, v6

    goto :goto_3b

    :cond_7c
    const/4 v2, 0x0

    goto :goto_54
.end method

.method private drawGuideViewDimLayer(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm;I)V
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p2, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    sget v2, Lcom/android/systemui/stackdivider/FocusedFrameView;->mFocusedStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_23

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/GuideView;->setDimLayer(F)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v0, v3, :cond_23

    iget-object v3, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/GuideView;->setDimLayer(F)V

    goto :goto_23
.end method

.method private generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string/jumbo v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x901

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/stackdivider/GuideViewController;
    .registers 2

    sget-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/systemui/stackdivider/GuideViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/GuideViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    :cond_b
    sget-object v0, Lcom/android/systemui/stackdivider/GuideViewController;->sGuideViewController:Lcom/android/systemui/stackdivider/GuideViewController;

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_stackdivider_GuideViewController_9388(Lcom/android/systemui/stackdivider/DividerView;I)V
    .registers 6

    const-string/jumbo v0, "divider"

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->showSnapWindowDismissToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p1}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZI)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private removeView()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/GuideView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/GuideView;->removeAllViews()V

    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    return-void
.end method

.method private scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V
    .registers 25

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    move/from16 v10, p6

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-eqz p6, :cond_62

    move/from16 v11, p4

    :goto_13
    if-eqz p2, :cond_72

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-ge v11, v0, :cond_65

    iget v13, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v12, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :cond_21
    :goto_21
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v13, v0, v1

    const/4 v1, 0x1

    aput v12, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v14, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$2;

    move/from16 v1, p6

    move/from16 v2, p6

    move/from16 v3, p3

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p4

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$2;-><init>(ZZIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_62
    move/from16 v11, p3

    goto :goto_13

    :cond_65
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    if-le v11, v0, :cond_21

    iget v13, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v12, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_21

    :cond_72
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-le v11, v0, :cond_83

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-ge v11, v0, :cond_83

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v13, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v12, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    goto :goto_21

    :cond_83
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    if-ge v11, v0, :cond_21

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    if-le v11, v0, :cond_21

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v13, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v12, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_21
.end method

.method private scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V
    .registers 24

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    move/from16 v10, p5

    if-eqz p5, :cond_68

    move/from16 v11, p3

    :goto_11
    move v13, v11

    iget v12, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v13, v0, v1

    const/4 v1, 0x1

    aput v12, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v14, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;

    move/from16 v1, p5

    move/from16 v2, p5

    move/from16 v3, p2

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p3

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$3;-><init>(ZZIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/stackdivider/GuideViewController$3;

    move-object v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p2

    move v5, v12

    move-object/from16 v6, p6

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController$3;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;ZLcom/android/systemui/stackdivider/DividerView;IILandroid/graphics/Rect;I)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_68
    move/from16 v11, p2

    goto :goto_11
.end method


# virtual methods
.method actionDown(Lcom/android/internal/policy/DividerSnapAlgorithm;Lcom/android/internal/policy/DividerSnapAlgorithm;ZZII)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz p4, :cond_28

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_d
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-eqz p4, :cond_2f

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_17
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-eqz p3, :cond_40

    if-eqz p4, :cond_36

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :goto_25
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_d

    :cond_2f
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_17

    :cond_36
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    sub-int v0, p6, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    add-int/2addr v0, v1

    goto :goto_25

    :cond_40
    if-eqz p4, :cond_47

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    :goto_44
    iput v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    goto :goto_27

    :cond_47
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    sub-int v0, p5, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    add-int/2addr v0, v1

    goto :goto_44
.end method

.method actionMove(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IIZZLandroid/graphics/Rect;II)V
    .registers 35

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    if-nez v3, :cond_23

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v3, :cond_59

    if-eqz p8, :cond_59

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mSnapWindowHandleMoveThreshold:I

    move/from16 v22, v0

    :goto_12
    if-eqz p7, :cond_62

    sub-int v3, p6, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_60

    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    :cond_23
    if-eqz p7, :cond_6d

    move/from16 v7, p3

    :goto_27
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-nez v3, :cond_da

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-lt v7, v3, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    if-le v7, v3, :cond_85

    :cond_39
    if-eqz p7, :cond_70

    const/4 v5, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    :cond_4f
    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideViewDimLayer(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm;I)V

    return-void

    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDefaultHandleMoveThreshold:I

    move/from16 v22, v0

    goto :goto_12

    :cond_60
    const/4 v3, 0x0

    goto :goto_1f

    :cond_62
    sub-int v3, p5, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v22

    if-le v3, v0, :cond_60

    goto :goto_1e

    :cond_6d
    move/from16 v7, p2

    goto :goto_27

    :cond_70
    const/4 v6, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p7

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_4f

    :cond_85
    move v11, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-ge v7, v3, :cond_a4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    :cond_90
    :goto_90
    if-eqz p7, :cond_c7

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p7

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_4f

    :cond_a4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    if-le v7, v3, :cond_af

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_90

    :cond_af
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_90

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_90

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_90

    :cond_c7
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v12, p3

    move/from16 v13, p7

    move-object/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto/16 :goto_4f

    :cond_da
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    if-le v7, v3, :cond_4f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    if-ge v7, v3, :cond_4f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-lt v7, v3, :cond_f2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    if-le v7, v3, :cond_136

    :cond_f2
    if-eqz p7, :cond_11a

    const/4 v14, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p7

    move-object/from16 v19, p9

    move/from16 v20, p10

    move/from16 v21, p11

    invoke-direct/range {v12 .. v21}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    :goto_109
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    if-ge v7, v3, :cond_131

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    :goto_113
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    goto/16 :goto_4f

    :cond_11a
    const/4 v14, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p2

    move/from16 v16, v7

    move-object/from16 v17, p4

    move/from16 v18, p7

    move-object/from16 v19, p9

    move/from16 v20, p10

    move/from16 v21, p11

    invoke-direct/range {v12 .. v21}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollGuideView(Lcom/android/systemui/stackdivider/DividerView;ZIILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_109

    :cond_131
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    goto :goto_113

    :cond_136
    if-eqz p7, :cond_14b

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move v15, v7

    move/from16 v16, p7

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_113

    :cond_14b
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v14, v7

    move/from16 v15, p3

    move/from16 v16, p7

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-direct/range {v12 .. v19}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_113
.end method

.method actionUpOrCancel(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;IIZZZLandroid/graphics/Rect;II)V
    .registers 29

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_48

    if-eqz p7, :cond_48

    if-nez p9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    if-nez v2, :cond_14

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz v2, :cond_48

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-nez v2, :cond_b1

    const/4 v12, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz v2, :cond_ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_ca

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_ca

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;

    move-object/from16 v0, p1

    invoke-direct {v3, v12, v0}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg;-><init>(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_48
    :goto_48
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    if-eqz v2, :cond_e6

    if-eqz p8, :cond_e2

    move/from16 p6, p3

    :goto_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mIsMoving:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-nez v2, :cond_145

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    move/from16 v0, p6

    if-lt v0, v2, :cond_77

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    move/from16 v0, p6

    if-le v0, v2, :cond_ee

    :cond_77
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    move/from16 v0, p5

    if-eq v0, v2, :cond_87

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_ec

    :cond_87
    const/4 v11, 0x1

    :goto_88
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    move/from16 v0, p6

    if-ge v0, v2, :cond_f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mFirstSplitTargetPosition:I

    move/from16 p6, v0

    :cond_96
    :goto_96
    if-nez p9, :cond_116

    if-eqz p8, :cond_ff

    new-instance v4, Landroid/graphics/Point;

    move/from16 v0, p2

    move/from16 v1, p6

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    xor-int/lit8 v5, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p8

    move-object/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V

    :goto_b0
    return-void

    :cond_b1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    move/from16 v0, p6

    if-le v0, v2, :cond_bc

    const/4 v12, 0x2

    goto/16 :goto_1b

    :cond_bc
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    move/from16 v0, p6

    if-ge v0, v2, :cond_c7

    const/4 v12, 0x3

    goto/16 :goto_1b

    :cond_c7
    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_ca
    const-string/jumbo v2, "divider"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->showSnapWindowDismissToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6, v12}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZI)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_48

    :cond_e2
    move/from16 p6, p2

    goto/16 :goto_52

    :cond_e6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result p6

    goto/16 :goto_52

    :cond_ec
    const/4 v11, 0x0

    goto :goto_88

    :cond_ee
    const/4 v11, 0x0

    goto :goto_88

    :cond_f0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    move/from16 v0, p6

    if-le v0, v2, :cond_96

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mLastSplitTargetPosition:I

    move/from16 p6, v0

    goto :goto_96

    :cond_ff
    new-instance v4, Landroid/graphics/Point;

    move/from16 v0, p6

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    xor-int/lit8 v5, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p8

    move-object/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V

    goto :goto_b0

    :cond_116
    if-eqz p8, :cond_12e

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p6

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p8

    move-object/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto :goto_b0

    :cond_12e
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p6

    move-object/from16 v6, p4

    move/from16 v7, p8

    move-object/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/stackdivider/GuideViewController;->scrollMinimizeGuideView(Lcom/android/systemui/stackdivider/DividerView;IILcom/android/internal/policy/DividerSnapAlgorithm;ZLandroid/graphics/Rect;II)V

    goto/16 :goto_b0

    :cond_145
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissStartPosition:I

    move/from16 v0, p6

    if-ge v0, v2, :cond_19d

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    :cond_15b
    :goto_15b
    iget v4, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    if-eqz p8, :cond_1aa

    move/from16 v0, p2

    invoke-virtual {v7, v0, v4}, Landroid/graphics/Point;->set(II)V

    :goto_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1b0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1b0

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;

    move/from16 v3, p8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/stackdivider/-$Lambda$pKB6uSXyPAGeoGfs_nvtDrFb-Wg$1;-><init>(ZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v14

    invoke-virtual {v9, v2, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_196
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    goto/16 :goto_b0

    :cond_19d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/stackdivider/GuideViewController;->mDismissEndPosition:I

    move/from16 v0, p6

    if-le v0, v2, :cond_15b

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    goto :goto_15b

    :cond_1aa
    move/from16 v0, p3

    invoke-virtual {v7, v4, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_169

    :cond_1b0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V

    goto :goto_196
.end method

.method hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V
    .registers 9

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mShowing:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mScrollGuideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    if-eqz p3, :cond_31

    if-eqz p2, :cond_31

    if-nez p4, :cond_26

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Point;->x:I

    :cond_26
    new-instance v0, Lcom/android/systemui/stackdivider/GuideViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/GuideViewController$1;-><init>(Lcom/android/systemui/stackdivider/GuideViewController;Lcom/android/systemui/stackdivider/DividerView;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/stackdivider/GuideView;->dismiss(Landroid/graphics/Point;Landroid/animation/AnimatorListenerAdapter;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mGuideView:Lcom/android/systemui/stackdivider/GuideView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/GuideView;->cancelAnimation()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/stackdivider/DividerView;->onGuideViewVisibilityChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideViewController;->removeView()V

    goto :goto_30
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_GuideViewController_12323(Lcom/android/systemui/stackdivider/DividerView;ILandroid/graphics/Point;ZLandroid/graphics/Rect;)V
    .registers 12

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/GuideViewController;->hideGuideView(Lcom/android/systemui/stackdivider/DividerView;Landroid/graphics/Point;ZZLandroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_GuideViewController_19678(ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V
    .registers 18

    if-eqz p1, :cond_17

    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p2

    move/from16 v3, p8

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_16
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_GuideViewController_21085(ZLcom/android/systemui/stackdivider/DividerView;IZLandroid/graphics/Rect;IIILandroid/animation/ValueAnimator;)V
    .registers 18

    if-eqz p1, :cond_17

    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p2

    move/from16 v3, p8

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_16
.end method

.method onLongPress(Lcom/android/systemui/stackdivider/DividerView;IIZILandroid/graphics/Rect;II)V
    .registers 17

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideViewController;->mMaximizeGuideView:Z

    if-eqz p4, :cond_12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p5

    move v4, p4

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    :goto_11
    return-void

    :cond_12
    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move v3, p3

    move v4, p4

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/stackdivider/GuideViewController;->drawGuideView(Lcom/android/systemui/stackdivider/DividerView;IIZLandroid/graphics/Rect;II)V

    goto :goto_11
.end method
