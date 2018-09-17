.class public Lcom/android/systemui/statusbar/NotificationGuts;
.super Landroid/widget/FrameLayout;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;,
        Lcom/android/systemui/statusbar/NotificationGuts$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

.field private mExposed:Z

.field private mFalsingCheck:Ljava/lang/Runnable;

.field private mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

.field private mHandler:Landroid/os/Handler;

.field private mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

.field private mNeedsFalsingProtection:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationGuts;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setWillNotDraw(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationGuts$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationGuts$1;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private animateClose(II)V
    .registers 11

    const/4 v6, -0x1

    if-eq p1, v6, :cond_5

    if-ne p2, v6, :cond_1c

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 p1, v6, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int p2, v6, v7

    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v2, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v6

    sub-int/2addr v6, p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    const/4 v6, 0x0

    invoke-static {p0, p1, p2, v1, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0x168

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/systemui/statusbar/NotificationGuts$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/NotificationGuts$2;-><init>(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipBottomAmount:I

    sub-int v0, v2, v3

    if-eqz p2, :cond_17

    if-ge v1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_17
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_f
    return-void
.end method


# virtual methods
.method public closeControls(IIZZ)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0, p3, p4}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->handleCloseControls(ZZ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationGuts;->animateClose(II)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsClosed(Lcom/android/systemui/statusbar/NotificationGuts;)V

    :cond_30
    return-void
.end method

.method public closeControls(ZZIIZ)V
    .registers 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0, p3, p4, v1, p5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p0, p3, p4, v1, p5}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    goto :goto_12
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_9
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getActualHeight()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v0

    goto :goto_e
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isExposed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mContext:Landroid/content/Context;

    const v1, 0x7f080476

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_17
    return-void
.end method

.method protected onHeightChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/NotificationGuts;)V

    :cond_9
    return-void
.end method

.method public resetFalsingCheck()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method public setActualHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipBottomAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->invalidate()V

    return-void
.end method

.method public setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mClosedListener:Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    return-void
.end method

.method public setExposed(ZZ)V
    .registers 7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mNeedsFalsingProtection:Z

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    :goto_11
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eq v1, v2, :cond_2b

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mExposed:Z

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_2b
    return-void

    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mFalsingCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public setGutsContent(Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationGuts;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->addView(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method public setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mHeightListener:Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public willBeRemoved()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->willBeRemoved()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
