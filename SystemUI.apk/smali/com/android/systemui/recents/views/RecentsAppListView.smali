.class public Lcom/android/systemui/recents/views/RecentsAppListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecentsAppListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsAppListView$1;,
        Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mAutoHideRunnable:Ljava/lang/Runnable;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field mGoToTopBottomMargin:I

.field mGoToTopButton:Landroid/widget/Button;

.field mGoToTopScrollRequested:Z

.field mHandler:Landroid/os/Handler;

.field private mKioskId:I

.field mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

.field mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

.field private mSystemInsets:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsAppListView;)Landroid/widget/EdgeEffect;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->initRecyclerView()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopBottomMargin:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    return-void
.end method

.method private initRecyclerView()V
    .registers 3

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->bindAdapter(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)V

    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsAppListView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsAppListView$2;-><init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    :goto_8
    :pswitch_8
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_d
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-nez v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    goto :goto_8

    :pswitch_1f
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAutoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1f
        :pswitch_8
        :pswitch_1f
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2a
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public fling(II)Z
    .registers 5

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    return v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getNextFocusUpId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/16 v0, 0x21

    if-ne p2, v0, :cond_1e

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsAppListView;->smoothScrollToPosition(I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    iget v1, v2, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v2

    iget v0, v2, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mHeaderHeight:I

    if-lt v1, v0, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    :cond_f
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2
.end method

.method public handleGoToTopButton(Z)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1c
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->reinitialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    :cond_10
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onSizeChanged(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v1

    iget v0, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetEdge:I

    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/android/systemui/recents/views/RecentsAppListView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public reload()V
    .registers 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    if-eq v1, v0, :cond_17

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mKioskId:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preload()V

    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_22
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mLayoutManager:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->reload()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->reload()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    return-void
.end method

.method public resetScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mScroller:Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->resetScroll()V

    return-void
.end method

.method public unload(Z)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopButton:Landroid/widget/Button;

    :cond_11
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method
