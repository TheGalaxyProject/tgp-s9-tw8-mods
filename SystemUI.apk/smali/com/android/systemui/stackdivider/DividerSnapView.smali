.class public Lcom/android/systemui/stackdivider/DividerSnapView;
.super Landroid/widget/FrameLayout;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerSnapView$1;,
        Lcom/android/systemui/stackdivider/DividerSnapView$2;
    }
.end annotation


# instance fields
.field mAdjConventionalMode:I

.field private mAdjustSnapViewButtonWidth:I

.field private mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mDefaultSnapSize:I

.field private mDeltaY:I

.field private final mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

.field private mDuration:I

.field private mForceImmersiveObserver:Landroid/database/ContentObserver;

.field private mHandlePointHalfSize:I

.field private mHasNavigationBar:Z

.field private mHasStatusBar:Z

.field private mInitGuideViweSize:I

.field private mInitSnapWindowBounds:Landroid/graphics/Rect;

.field private final mLastSnapRect:Landroid/graphics/Rect;

.field private mMaximalSnapSize:I

.field private mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mMinimalSnapSize:I

.field private mNavigationBarHeight:I

.field private mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapButtonsAnimation:Landroid/view/animation/Animation;

.field private mSnapCaller:Ljava/lang/String;

.field private mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapTarget:I

.field private mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapViewButtonHeight:I

.field private mSnapViewButtonPadding:I

.field private mSnapViewButtonWidth:I

.field private mSnapViewButtons:Landroid/widget/FrameLayout;

.field private mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

.field private mSnapViewButtonsDividerWidth:I

.field private mSnapViewButtonsMargin:I

.field private mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapViewCancel:Landroid/widget/TextView;

.field private mSnapViewDone:Landroid/widget/TextView;

.field private mSnapViewGuideText:Landroid/widget/TextView;

.field private mSnapViewGuideTextMargin:I

.field private mSnapWindowBounds:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field mUnSnapReason:I

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerSnapView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjustSnapViewButtonWidth:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerSnapView;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitSnapWindowBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerSnapView;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapPosition(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerSnapView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapHandle(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapView;->moveSnapRect(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitSnapWindowBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitGuideViweSize:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mUnSnapReason:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapCaller:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$1;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$2;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private calculate16_9Height(II)I
    .registers 7

    int-to-float v2, p1

    const/high16 v3, 0x3f100000    # 0.5625f

    mul-float v0, v3, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    return v1
.end method

.method private initSnapHandle(Z)V
    .registers 17

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitGuideViweSize:I

    if-lez v9, :cond_f8

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitGuideViweSize:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    if-le v9, v10, :cond_f8

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitGuideViweSize:I

    iput v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDefaultSnapSize:I

    :goto_e
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDefaultSnapSize:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDefaultSnapSize:I

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjustSnapViewButtonWidth:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjustSnapViewButtonWidth:I

    mul-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonPadding:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsDividerWidth:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjustSnapViewButtonWidth:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    packed-switch v9, :pswitch_data_17e

    :goto_ca
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v12, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v14, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/stackdivider/DividerSnapView;->setSnapGuideColor(I)V

    if-eqz p1, :cond_f1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->showGuideAnimation()V

    :cond_f1
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->invalidate()V

    return-void

    :cond_f8
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/stackdivider/DividerSnapView;->calculate16_9Height(II)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDefaultSnapSize:I

    goto/16 :goto_e

    :pswitch_10e
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v9, 0x30

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideTextMargin:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_ca

    :pswitch_132
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v11, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v9, 0x50

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideTextMargin:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ca

    :pswitch_159
    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v10, v11

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v9, 0x30

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideTextMargin:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_ca

    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_10e
        :pswitch_132
        :pswitch_159
    .end packed-switch
.end method

.method private initSnapPosition(Landroid/view/View;I)I
    .registers 6

    if-eqz p1, :cond_f

    move v1, p2

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int v2, p2, v2

    return v2

    :cond_f
    const/4 v2, 0x0

    return v2
.end method

.method private moveSnapRect(Landroid/view/View;I)V
    .registers 15

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    if-nez v8, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_7c

    move v1, p2

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_188

    :cond_27
    :goto_27
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    packed-switch v8, :pswitch_data_196

    :goto_59
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_67

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideText:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_67
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v11, v4, v5

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->invalidate()V

    :cond_7c
    return-void

    :sswitch_7d
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v6, p2, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_b1

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v6, v8, v9

    :cond_92
    :goto_92
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    sub-int v8, v2, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v5, v8, v9

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMaximalSnapSize:I

    if-le v5, v8, :cond_27

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMaximalSnapSize:I

    sub-int v8, v5, v8

    add-int/2addr v6, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    sub-int v8, v2, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v5, v8, v9

    goto/16 :goto_27

    :cond_b1
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    if-le v8, v9, :cond_92

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    sub-int v6, v2, v8

    goto :goto_92

    :sswitch_c2
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v4, p2, v8

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v4, v8, :cond_dc

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    :cond_d0
    :goto_d0
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v6, v4, v8

    add-int v8, v4, v5

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    goto/16 :goto_27

    :cond_dc
    add-int v8, v4, v5

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_d0

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v8, v5

    goto :goto_d0

    :sswitch_eb
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v2, p2, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_119

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    :cond_104
    :goto_104
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    sub-int v5, v8, v4

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMaximalSnapSize:I

    if-le v5, v8, :cond_27

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMaximalSnapSize:I

    sub-int v8, v5, v8

    sub-int/2addr v2, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    sub-int v5, v8, v4

    goto/16 :goto_27

    :cond_119
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/2addr v9, v4

    if-ge v8, v9, :cond_104

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    goto :goto_104

    :pswitch_129
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_59

    :pswitch_139
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_59

    :pswitch_14b
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_175

    const/4 v0, 0x1

    :goto_161
    if-eqz v0, :cond_177

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_59

    :cond_175
    const/4 v0, 0x0

    goto :goto_161

    :cond_177
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_59

    nop

    :sswitch_data_188
    .sparse-switch
        0x7f0a0178 -> :sswitch_eb
        0x7f0a0179 -> :sswitch_c2
        0x7f0a0180 -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x1
        :pswitch_129
        :pswitch_139
        :pswitch_14b
    .end packed-switch
.end method

.method private setBounds(Landroid/graphics/Rect;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    if-ne v1, v4, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitSnapWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_15
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->isSnapTargetHideStatusbar()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasStatusBar:Z

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasStatusBar:Z

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    if-ne v1, v4, :cond_3b

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStatusBarHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    if-lez v1, :cond_3b

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStatusBarHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    :cond_3b
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_hide_bar_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_69

    const/4 v0, 0x1

    :goto_4c
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasNavigationBar:Z

    if-eqz v1, :cond_66

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5f

    if-nez v0, :cond_66

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    if-ne v1, v4, :cond_66

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    if-nez v1, :cond_66

    :cond_5f
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_66
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    return-void

    :cond_69
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private setSnapGuideColor(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    packed-switch p1, :pswitch_data_1e

    :goto_b
    return-void

    :pswitch_c
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_b

    :pswitch_14
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    const v2, -0xa0a1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_b

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
    .end packed-switch
.end method

.method private setTouchable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->setTouchable(Z)V

    return-void
.end method

.method private showGuideAnimation()V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_42

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$6;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapButtonsAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :array_42
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_25

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_25
    return v5

    :cond_26
    return v4
.end method

.method initGuideViewSize(I)V
    .registers 3

    const/4 v0, 0x0

    if-lez p1, :cond_6

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitGuideViweSize:I

    :goto_5
    return-void

    :cond_6
    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mInitGuideViweSize:I

    goto :goto_5
.end method

.method public makeVisible(ZILandroid/graphics/Rect;Ljava/lang/String;)V
    .registers 6

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    invoke-direct {p0, p3}, Lcom/android/systemui/stackdivider/DividerSnapView;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setTouchable(Z)V

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapHandle(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setVisibility(I)V

    if-eqz p4, :cond_22

    const-string/jumbo v0, "finish"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    invoke-virtual {p0, p4}, Lcom/android/systemui/stackdivider/DividerSnapView;->setSnapCaller(Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setVisibility(I)V

    goto :goto_22
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

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

.method protected onFinishInflate()V
    .registers 8

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasNavigationBar:Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mNavigationBarHeight:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStatusBarHeight:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/stackdivider/DividerSnapView;->calculate16_9Height(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDefaultSnapSize:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMaximalSnapSize:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070389

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    const v2, 0x7f0a0180

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    const v2, 0x7f0a0178

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    const v2, 0x7f0a0179

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    const v4, 0x7f080160

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a017f

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    const v2, 0x7f0a0177

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070388

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060100

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeColor:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070383

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    const v2, 0x7f0a017c

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    const v2, 0x7f0a017d

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07037c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsDividerWidth:I

    const v2, 0x7f0a017a

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    const v2, 0x7f0a017b

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070372

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonPadding:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070374

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonWidth:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonHeight:I

    const v2, 0x7f0a017e

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewGuideTextMargin:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    const v3, 0x7f01009c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapButtonsAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    invoke-virtual {p0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    if-eqz v2, :cond_1ae

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerSnapView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$3;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1ae
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    if-eqz v2, :cond_1c3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerSnapView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$4;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/DividerSnapView$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/stackdivider/DividerSnapView$5;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mForceImmersiveObserver:Landroid/database/ContentObserver;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_9
    .end packed-switch
.end method

.method public setSnapCaller(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapCaller:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    return-void
.end method

.method public startSnapMode(ZZ)V
    .registers 13

    const/4 v9, 0x3

    const/4 v8, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2e
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    if-ne v0, v9, :cond_46

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    if-lez v0, :cond_6b

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    :cond_46
    :goto_46
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    if-eqz p1, :cond_7e

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    :goto_4e
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapCaller:Ljava/lang/String;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->startSnapMode(ZZILandroid/graphics/Rect;Ljava/lang/String;)V

    if-eqz p1, :cond_6a

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    if-ne v0, v9, :cond_6a

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/systemui/SystemUIApplication;

    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v6, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v7, v8, v8}, Lcom/android/systemui/recents/Recents;->showRecentApps(ZZ)V

    :cond_6a
    return-void

    :cond_6b
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasStatusBar:Z

    if-eqz v0, :cond_46

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_46

    :cond_7e
    iget v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mUnSnapReason:I

    goto :goto_4e
.end method
