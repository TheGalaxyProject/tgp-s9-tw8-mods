.class Landroid/support/v17/leanback/widget/GridLayoutManager$4;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .registers 3

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->getChildCount()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    return-object v3

    :cond_a
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v3, :cond_31

    if-le p1, v1, :cond_2f

    const/4 v2, 0x1

    :goto_1f
    if-eqz v2, :cond_37

    const/4 v0, -0x1

    :goto_22
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_39

    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    :cond_2f
    const/4 v2, 0x0

    goto :goto_1f

    :cond_31
    if-ge p1, v1, :cond_35

    const/4 v2, 0x1

    goto :goto_1f

    :cond_35
    const/4 v2, 0x0

    goto :goto_1f

    :cond_37
    const/4 v0, 0x1

    goto :goto_22

    :cond_39
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v3, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method
