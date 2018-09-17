.class public Lcom/android/setupwizardlib/view/StickyHeaderListView;
.super Landroid/widget/ListView;
.source "StickyHeaderListView.java"


# instance fields
.field private mStatusBarInset:I

.field private mSticky:Landroid/view/View;

.field private mStickyContainer:Landroid/view/View;

.field private mStickyRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    const v0, 0x1010074

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/setupwizardlib/R$styleable;->SuwStickyHeaderListView:[I

    invoke-virtual {v4, p1, v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwStickyHeaderListView_suwHeader:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v6}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_24
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    if-eqz v4, :cond_5f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    if-eqz v4, :cond_60

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    :goto_13
    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int v4, v2, v0

    iget v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    if-lt v4, v5, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_65

    :cond_2f
    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    neg-int v5, v0

    iget v6, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget v8, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v4, v9, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v9, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p1, v10, v10, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_5c
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5f
    return-void

    :cond_60
    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    goto :goto_13

    :cond_63
    const/4 v0, 0x0

    goto :goto_1d

    :cond_65
    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_5c
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    :cond_1c
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    if-eqz v1, :cond_30

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->updateStickyView()V

    :cond_a
    return-void
.end method

.method public updateStickyView()V
    .registers 2

    const-string/jumbo v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    const-string/jumbo v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    return-void
.end method
