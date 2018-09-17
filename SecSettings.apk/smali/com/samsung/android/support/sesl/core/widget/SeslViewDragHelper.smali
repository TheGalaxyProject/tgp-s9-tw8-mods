.class public Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
.super Ljava/lang/Object;
.source "SeslViewDragHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$2;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_4a

    if-eqz p3, :cond_53

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    return-void

    :cond_4a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkNewEdgeDrag(FFII)Z
    .registers 10

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_11

    :cond_10
    return v2

    :cond_11
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_10

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_10

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_32

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-lez v3, :cond_10

    :cond_32
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_41

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-nez v3, :cond_49

    :cond_41
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eqz v3, :cond_51

    :cond_48
    :goto_48
    return v2

    :cond_49
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    return v2

    :cond_51
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_48

    const/4 v2, 0x1

    goto :goto_48
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1d

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-gtz v4, :cond_1e

    move v0, v2

    :goto_d
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-gtz v4, :cond_20

    move v1, v2

    :goto_16
    if-nez v0, :cond_22

    :cond_18
    if-nez v0, :cond_36

    if-nez v1, :cond_44

    return v2

    :cond_1d
    return v2

    :cond_1e
    move v0, v3

    goto :goto_d

    :cond_20
    move v1, v3

    goto :goto_16

    :cond_22
    if-eqz v1, :cond_18

    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_34

    :goto_33
    return v3

    :cond_34
    move v3, v2

    goto :goto_33

    :cond_36
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_42

    :goto_41
    return v3

    :cond_42
    move v3, v2

    goto :goto_41

    :cond_44
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_50

    :goto_4f
    return v3

    :cond_50
    move v3, v2

    goto :goto_4f
.end method

.method private clampMag(FFF)F
    .registers 7

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_a

    return v2

    :cond_a
    cmpl-float v1, v0, p3

    if-lez v1, :cond_15

    cmpl-float v1, p1, v2

    if-lez v1, :cond_13

    :goto_12
    return p3

    :cond_13
    neg-float p3, p3

    goto :goto_12

    :cond_15
    return p1
.end method

.method private clampMag(III)I
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p2, :cond_a

    if-gt v0, p3, :cond_b

    return p1

    :cond_a
    return v1

    :cond_b
    if-gtz p1, :cond_e

    neg-int p3, p3

    :cond_e
    return p3
.end method

.method private clearMotionHistory()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    return-void

    :cond_2c
    return-void
.end method

.method private clearMotionHistory(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private computeAxisDuration(III)I
    .registers 14

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_3c

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gtz p2, :cond_3d

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    :goto_35
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    :cond_3c
    return v6

    :cond_3d
    int-to-float v6, p2

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    goto :goto_35
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .registers 20

    iget v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(III)I

    move-result p4

    iget v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(III)I

    move-result p5

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v7, v4, v5

    add-int v6, v2, v3

    if-nez p4, :cond_5b

    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    :goto_32
    if-nez p5, :cond_60

    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    :goto_38
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    :cond_5b
    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    goto :goto_32

    :cond_60
    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    goto :goto_38
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
    .registers 6

    invoke-static {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;
    .registers 4

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mReleaseInProgress:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mReleaseInProgress:Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-eq v0, v3, :cond_12

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    goto :goto_11
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .registers 13

    move v2, p1

    move v3, p2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-nez p3, :cond_20

    :goto_10
    if-nez p4, :cond_30

    :goto_12
    if-eqz p3, :cond_40

    :cond_14
    sub-int v4, v2, v6

    sub-int v5, v3, v7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_10

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_12

    :cond_40
    if-nez p4, :cond_14

    goto :goto_1f
.end method

.method private ensureMotionHistorySizeForId(I)V
    .registers 12

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-nez v7, :cond_34

    :cond_5
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    if-nez v7, :cond_3a

    :goto_25
    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    iput-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    iput-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    :goto_33
    return-void

    :cond_34
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-le v7, p1, :cond_5

    goto :goto_33

    :cond_3a
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .registers 16

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v10

    sub-int v3, p2, v6

    if-eqz v2, :cond_2a

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    const/4 v0, 0x1

    return v0

    :cond_2a
    if-nez v3, :cond_13

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return v1
.end method

.method private getEdgesTouched(II)I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_2e

    :goto_c
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_30

    :goto_17
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_33

    :goto_22
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_36

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x1

    goto :goto_c

    :cond_30
    or-int/lit8 v0, v0, 0x4

    goto :goto_17

    :cond_33
    or-int/lit8 v0, v0, 0x2

    goto :goto_22

    :cond_36
    or-int/lit8 v0, v0, 0x8

    goto :goto_2d
.end method

.method private isValidPointerForActionMove(I)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  SeslViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslViewDragHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private releaseViewForPointerUp()V
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clampMag(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_21

    :goto_8
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_23

    :goto_f
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_26

    :goto_16
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-nez v1, :cond_29

    :goto_1e
    if-nez v0, :cond_2c

    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    or-int/lit8 v0, v0, 0x4

    goto :goto_f

    :cond_26
    or-int/lit8 v0, v0, 0x2

    goto :goto_16

    :cond_29
    or-int/lit8 v0, v0, 0x8

    goto :goto_1e

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeDragStarted(II)V

    goto :goto_20
.end method

.method private saveInitialMotion(FFI)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public abort()V
    .registers 9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    :goto_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    goto :goto_8
.end method

.method public cancel()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_b
.end method

.method public captureChildView(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the SeslViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTouchSlop(I)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    const/4 v1, 0x0

    :goto_5
    if-lt v1, v0, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-nez v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    const/4 v2, 0x1

    return v2
.end method

.method public checkTouchSlop(II)Z
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-eqz v6, :cond_2e

    and-int/lit8 v6, p1, 0x1

    if-eq v6, v5, :cond_2f

    move v0, v4

    :goto_d
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_31

    move v1, v4

    :goto_13
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    if-nez v0, :cond_33

    :cond_29
    if-nez v0, :cond_47

    if-nez v1, :cond_55

    return v4

    :cond_2e
    return v4

    :cond_2f
    move v0, v5

    goto :goto_d

    :cond_31
    move v1, v5

    goto :goto_13

    :cond_33
    if-eqz v1, :cond_29

    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_45

    :goto_44
    return v5

    :cond_45
    move v5, v4

    goto :goto_44

    :cond_47
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_53

    :goto_52
    return v5

    :cond_53
    move v5, v4

    goto :goto_52

    :cond_55
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_61

    :goto_60
    return v5

    :cond_61
    move v5, v4

    goto :goto_60
.end method

.method public continueSettling(Z)Z
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-eq v0, v8, :cond_c

    :cond_6
    :goto_6
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-eq v0, v8, :cond_73

    move v0, v7

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-nez v4, :cond_45

    :goto_30
    if-nez v5, :cond_4b

    :goto_32
    if-eqz v4, :cond_51

    :cond_34
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :goto_3b
    if-nez v6, :cond_54

    :cond_3d
    :goto_3d
    if-nez v6, :cond_6

    if-nez p1, :cond_6b

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setDragState(I)V

    goto :goto_6

    :cond_45
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    goto :goto_30

    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_32

    :cond_51
    if-nez v5, :cond_34

    goto :goto_3b

    :cond_54
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v6, 0x0

    goto :goto_3d

    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_73
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .registers 8

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_8
    if-gez v2, :cond_c

    const/4 v3, 0x0

    return-object v3

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge p1, v3, :cond_21

    :cond_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_1e

    return-object v0
.end method

.method public getCapturedView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getTouchSlop()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isPointerDown(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mPointersDown:I

    shl-int v3, v1, p1

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge p2, v1, :cond_b

    :cond_9
    :goto_9
    return v0

    :cond_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .registers 23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eqz v3, :cond_23

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_27

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v3, :pswitch_data_2de

    :cond_22
    :goto_22
    :pswitch_22
    return-void

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto :goto_a

    :cond_27
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_12

    :pswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_22

    :pswitch_90
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-eqz v19, :cond_d8

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_22

    :cond_d8
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_22

    :pswitch_11c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_136

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v8, 0x0

    :goto_12f
    if-lt v8, v14, :cond_1ac

    :cond_131
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_22

    :cond_136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v19

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->dragTo(IIII)V

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_22

    :cond_1ac
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v19

    if-eqz v19, :cond_20b

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_131

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-nez v19, :cond_20f

    :cond_20b
    :goto_20b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12f

    :cond_20f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_131

    goto :goto_20b

    :pswitch_21a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_235

    :cond_22e
    :goto_22e
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_22

    :cond_235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_22e

    const/4 v13, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v8, 0x0

    :goto_245
    if-lt v8, v14, :cond_251

    :goto_247
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_22e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->releaseViewForPointerUp()V

    goto :goto_22e

    :cond_251
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v9, v0, :cond_28d

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_290

    :cond_28d
    add-int/lit8 v8, v8, 0x1

    goto :goto_245

    :cond_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_28d

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    goto :goto_247

    :pswitch_2a5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2b8

    :goto_2b3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto/16 :goto_22

    :cond_2b8
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->releaseViewForPointerUp()V

    goto :goto_2b3

    :pswitch_2bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2cf

    :goto_2ca
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto/16 :goto_22

    :cond_2cf
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->dispatchViewReleased(FF)V

    goto :goto_2ca

    nop

    :pswitch_data_2de
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2a5
        :pswitch_11c
        :pswitch_2bc
        :pswitch_22
        :pswitch_90
        :pswitch_21a
    .end packed-switch
.end method

.method setDragState(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-ne v0, p1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onViewDragStateChanged(I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    goto :goto_b
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .registers 6

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-eqz v4, :cond_33

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-eqz v24, :cond_37

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_266

    :cond_22
    :goto_22
    :pswitch_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_262

    const/16 v24, 0x0

    :goto_32
    return v24

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto :goto_a

    :cond_37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_12

    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_aa

    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_22

    :cond_aa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7f

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_7f

    :pswitch_c2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    if-eqz v24, :cond_120

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_22

    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_22

    :pswitch_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    const/4 v10, 0x0

    :goto_160
    move/from16 v0, v16

    if-lt v10, v0, :cond_169

    :cond_164
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_22

    :cond_169
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v24

    if-eqz v24, :cond_1c9

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v6, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v7, v23, v24

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_1cc

    :cond_1af
    const/4 v15, 0x0

    :goto_1b0
    if-nez v15, :cond_1d8

    :cond_1b2
    :goto_1b2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v7, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_164

    if-nez v15, :cond_240

    :cond_1c9
    :goto_1c9
    add-int/lit8 v10, v10, 0x1

    goto :goto_160

    :cond_1cc
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v24

    if-eqz v24, :cond_1af

    const/4 v15, 0x1

    goto :goto_1b0

    :cond_1d8
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v13

    float-to-int v0, v6

    move/from16 v24, v0

    add-int v18, v13, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v6

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v14

    float-to-int v0, v7

    move/from16 v24, v0

    add-int v19, v14, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v7

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v21

    if-nez v9, :cond_23a

    :cond_232
    if-eqz v21, :cond_164

    if-lez v21, :cond_1b2

    if-eq v12, v14, :cond_164

    goto/16 :goto_1b2

    :cond_23a
    if-lez v9, :cond_1b2

    if-eq v11, v13, :cond_232

    goto/16 :goto_1b2

    :cond_240
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v24

    if-nez v24, :cond_164

    goto/16 :goto_1c9

    :pswitch_24e
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_22

    :pswitch_25d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    goto/16 :goto_22

    :cond_262
    const/16 v24, 0x1

    goto/16 :goto_32

    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_42
        :pswitch_25d
        :pswitch_14b
        :pswitch_25d
        :pswitch_22
        :pswitch_c2
        :pswitch_24e
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, p2, p3, v2, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mDragState:I

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_d

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    goto :goto_d
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eq p1, v0, :cond_9

    :cond_6
    if-nez p1, :cond_e

    :cond_8
    return v1

    :cond_9
    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_6

    return v2

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mCallback:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->mActivePointerId:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v2
.end method
