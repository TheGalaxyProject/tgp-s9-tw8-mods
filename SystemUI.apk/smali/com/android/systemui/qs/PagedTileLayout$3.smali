.class Lcom/android/systemui/qs/PagedTileLayout$3;
.super Ljava/lang/Object;
.source "PagedTileLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/PagedTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 6

    if-nez p1, :cond_13

    sget-object v0, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v1, "2024"

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get4(Lcom/android/systemui/qs/PagedTileLayout;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_13
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_13
    invoke-static {v3, p1, v0}, Lcom/android/systemui/qs/PagedTileLayout;->-wrap1(Lcom/android/systemui/qs/PagedTileLayout;IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    int-to-float v3, p1

    add-float/2addr v3, p2

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v0

    if-nez p3, :cond_48

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/PagedTileLayout;->-get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_48

    :goto_47
    move v2, v1

    :cond_48
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_4b
    return-void

    :cond_4c
    move v0, v2

    goto :goto_13

    :cond_4e
    if-nez p1, :cond_48

    goto :goto_47
.end method

.method public onPageSelected(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v2}, Lcom/android/systemui/qs/PagedTileLayout;->-get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout$3;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/PagedTileLayout;->-get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_33

    :cond_2f
    :goto_2f
    invoke-interface {v2, v0}, Lcom/android/systemui/qs/PagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_32
    return-void

    :cond_33
    move v0, v1

    goto :goto_2f

    :cond_35
    if-eqz p1, :cond_2f

    move v0, v1

    goto :goto_2f
.end method
