.class public Lcom/android/setupwizardlib/view/StickyHeaderScrollView;
.super Lcom/android/setupwizardlib/view/BottomScrollView;
.source "StickyHeaderScrollView.java"


# instance fields
.field private mStatusBarInset:I

.field private mSticky:Landroid/view/View;

.field private mStickyContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/view/BottomScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/view/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    return-void
.end method

.method private updateStickyHeaderPosition()V
    .registers 6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3b

    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    if-eqz v3, :cond_3c

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    :goto_10
    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->getScrollY()I

    move-result v4

    sub-int v2, v3, v4

    add-int v3, v2, v0

    iget v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    if-lt v3, v4, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    :cond_32
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    goto :goto_10

    :cond_3f
    const/4 v0, 0x0

    goto :goto_1a

    :cond_41
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3b
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStatusBarInset:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_1d
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/view/BottomScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->updateStickyView()V

    :cond_a
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->updateStickyHeaderPosition()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/setupwizardlib/view/BottomScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->updateStickyHeaderPosition()V

    return-void
.end method

.method public updateStickyView()V
    .registers 2

    const-string/jumbo v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mSticky:Landroid/view/View;

    const-string/jumbo v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderScrollView;->mStickyContainer:Landroid/view/View;

    return-void
.end method
