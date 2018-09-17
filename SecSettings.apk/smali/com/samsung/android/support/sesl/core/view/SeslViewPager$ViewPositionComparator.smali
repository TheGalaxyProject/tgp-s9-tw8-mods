.class Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "SeslViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-ne v2, v3, :cond_18

    iget v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->position:I

    iget v3, v1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    return v2

    :cond_18
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$LayoutParams;->isDecor:Z

    if-nez v2, :cond_1e

    const/4 v2, -0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
