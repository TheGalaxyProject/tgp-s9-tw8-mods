.class public abstract Landroid/support/v7/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .registers 2

    new-instance v0, Landroid/support/v7/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OrientationHelper$1;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;
    .registers 4

    packed-switch p1, :pswitch_data_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method public static createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .registers 2

    new-instance v0, Landroid/support/v7/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OrientationHelper$2;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .registers 3

    iget v0, p0, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
