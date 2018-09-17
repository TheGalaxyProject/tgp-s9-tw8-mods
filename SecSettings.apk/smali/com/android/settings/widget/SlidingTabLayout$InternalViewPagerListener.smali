.class final Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/settings/widget/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/SlidingTabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SlidingTabLayout;Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/settings/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/android/settings/widget/SlidingTabLayout;->-get0(Lcom/android/settings/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_e

    if-gez p1, :cond_f

    :cond_e
    return-void

    :cond_f
    if-ge p1, v0, :cond_e

    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    invoke-static {v1, p1, p2}, Lcom/android/settings/widget/SlidingTabLayout;->-wrap0(Lcom/android/settings/widget/SlidingTabLayout;IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/android/settings/widget/SlidingTabLayout;->-get1(Lcom/android/settings/widget/SlidingTabLayout;)Lcom/android/settings/widget/RtlCompatibleViewPager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p1

    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/settings/widget/SlidingTabLayout;->-wrap0(Lcom/android/settings/widget/SlidingTabLayout;IF)V

    :cond_15
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/android/settings/widget/SlidingTabLayout;->-get0(Lcom/android/settings/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v1, :cond_37

    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/android/settings/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/android/settings/widget/SlidingTabLayout;->-get0(Lcom/android/settings/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne p1, v0, :cond_35

    const/4 v2, 0x1

    :goto_2f
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_35
    move v2, v3

    goto :goto_2f

    :cond_37
    return-void
.end method
