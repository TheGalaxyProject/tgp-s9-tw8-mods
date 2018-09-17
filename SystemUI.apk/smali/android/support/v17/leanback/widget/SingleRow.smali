.class Landroid/support/v17/leanback/widget/SingleRow;
.super Landroid/support/v17/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private final mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SingleRow;->setNumRows(I)V

    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    if-nez p2, :cond_13

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v4

    :cond_13
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v2

    :goto_18
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_4e

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-interface {v0, v2, v7, v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_31

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_52

    :cond_31
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4f

    const v5, 0x7fffffff

    :goto_38
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    :goto_3c
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    const/4 v6, 0x1

    if-nez p2, :cond_4e

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_84

    :cond_4e
    return v6

    :cond_4f
    const/high16 v5, -0x80000000

    goto :goto_38

    :cond_52
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    sub-int v5, v0, v1

    :goto_6b
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    goto :goto_3c

    :cond_6e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int v5, v0, v1

    goto :goto_6b

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p3    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v4, :cond_d

    if-lez p2, :cond_f

    :cond_6
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getFirstVisibleIndex()I

    move-result v4

    if-nez v4, :cond_1e

    return-void

    :cond_d
    if-ltz p2, :cond_6

    :cond_f
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getLastVisibleIndex()I

    move-result v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_40

    return-void

    :cond_1e
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v4, :cond_3c

    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    :goto_30
    add-int v3, v5, v4

    :goto_32
    sub-int v4, v3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p3, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    return-void

    :cond_3c
    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    neg-int v4, v4

    goto :goto_30

    :cond_40
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int v2, v4, v5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v5, :cond_5d

    neg-int v2, v2

    :cond_5d
    add-int v3, v4, v2

    goto :goto_32
.end method

.method protected final findRowMax(ZI[I)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    aput v0, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    :cond_8
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_12
.end method

.method protected final findRowMin(ZI[I)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    aput v0, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    :cond_8
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    goto :goto_19
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    return-object v0
.end method

.method getStartIndexForAppend()I
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1e
    return v2
.end method

.method getStartIndexForPrepend()I
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1d
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final prependVisibleItems(IZ)Z
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    if-nez p2, :cond_13

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v4

    :cond_13
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    :goto_1e
    if-lt v2, v7, :cond_4c

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_30

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_51

    :cond_30
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4d

    const/high16 v5, -0x80000000

    :goto_36
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    :goto_3a
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    const/4 v6, 0x1

    if-nez p2, :cond_4c

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_4c
    return v6

    :cond_4d
    const v5, 0x7fffffff

    goto :goto_36

    :cond_51
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int/2addr v0, v1

    add-int v5, v0, v3

    :goto_62
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    goto :goto_3a

    :cond_65
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    sub-int/2addr v0, v1

    sub-int v5, v0, v3

    goto :goto_62

    :cond_73
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e
.end method
