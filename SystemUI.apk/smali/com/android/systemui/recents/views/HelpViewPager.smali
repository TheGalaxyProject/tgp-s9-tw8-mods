.class public Lcom/android/systemui/recents/views/HelpViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "HelpViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onPageScrolled(IFI)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onScrollChanged(IIII)V

    return-void
.end method
