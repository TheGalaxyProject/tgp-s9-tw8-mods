.class abstract Landroid/support/v17/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Grid$Location;,
        Landroid/support/v17/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field mTmpItem:[Ljava/lang/Object;

.field protected mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method

.method public static createGrid(I)Landroid/support/v17/leanback/widget/Grid;
    .registers 3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    new-instance v0, Landroid/support/v17/leanback/widget/SingleRow;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/SingleRow;-><init>()V

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/Grid;->setNumRows(I)V

    goto :goto_8
.end method

.method private resetVisibleIndexIfEmpty()V
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    :cond_9
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_d

    const v0, 0x7fffffff

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result v0

    return v0

    :cond_d
    const/high16 v0, -0x80000000

    goto :goto_7
.end method

.method public final appendVisibleItems(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v2, :cond_8

    return v1

    :cond_8
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_18

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15

    :cond_18
    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v3, p1, v3

    if-ge v2, v3, :cond_15

    move v0, v1

    goto :goto_15
.end method

.method protected final checkPrependOverLimit(I)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v2, :cond_8

    return v1

    :cond_8
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_19

    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v3, p1, v3

    if-lt v2, v3, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :cond_19
    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, p1

    if-le v2, v3, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 4
    .param p3    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public fillDisappearingItems([IILandroid/util/SparseIntArray;)V
    .registers 20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v11

    if-ltz v11, :cond_6e

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v2, v1, v11}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v13

    :goto_f
    if-gez v13, :cond_91

    neg-int v2, v13

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_70

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v7, v2, v3

    :goto_31
    move v10, v8

    :goto_32
    move/from16 v0, p2

    if-ge v10, v0, :cond_91

    aget v4, p1, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-gez v6, :cond_41

    const/4 v6, 0x0

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-interface {v2, v4, v14, v3, v15}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v3, v3, v14

    invoke-interface/range {v2 .. v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_88

    sub-int v2, v7, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v7, v2, v3

    :goto_6b
    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_6e
    const/4 v13, 0x0

    goto :goto_f

    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int v7, v2, v3

    goto :goto_31

    :cond_88
    add-int v2, v7, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int v7, v2, v3

    goto :goto_6b

    :cond_91
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v9

    if-ltz v9, :cond_ed

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v2, v1, v9}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v12

    :goto_a0
    if-gez v12, :cond_101

    neg-int v2, v12

    add-int/lit8 v8, v2, -0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_ef

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    :goto_b3
    move v10, v8

    :goto_b4
    if-ltz v10, :cond_101

    aget v4, p1, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-gez v6, :cond_c1

    const/4 v6, 0x0

    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-interface {v2, v4, v14, v3, v15}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_f8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v2, v7

    add-int v7, v2, v5

    :goto_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v3, v3, v14

    invoke-interface/range {v2 .. v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_b4

    :cond_ed
    const/4 v12, 0x0

    goto :goto_a0

    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    goto :goto_b3

    :cond_f8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v2, v7, v2

    sub-int v7, v2, v5

    goto :goto_dc

    :cond_101
    return-void
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .registers 4
    .param p2    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_6
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result v0

    return v0

    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_6
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .registers 4
    .param p2    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_6
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result v0

    return v0

    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_6
.end method

.method public final getFirstVisibleIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return v0
.end method

.method public final getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    return v0
.end method

.method public abstract getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
.end method

.method public getNumRows()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    return v0
.end method

.method public final getRowIndex(I)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, -0x1

    return v1

    :cond_8
    iget v1, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    return v1
.end method

.method public invalidateItemsAfter(I)V
    .registers 3

    if-gez p1, :cond_3

    return-void

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-lt v0, p1, :cond_10

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_10
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_1c

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    :cond_1c
    return-void
.end method

.method public isReversedFlow()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .registers 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_c

    const/high16 v0, -0x80000000

    :goto_6
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    move-result v0

    return v0

    :cond_c
    const v0, 0x7fffffff

    goto :goto_6
.end method

.method public final prependVisibleItems(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .registers 6

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v1, v2, :cond_39

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-le v1, p1, :cond_39

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v1, :cond_2b

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    if-lt v1, p2, :cond_29

    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_39

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_29
    const/4 v0, 0x0

    goto :goto_19

    :cond_2b
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    if-gt v1, p2, :cond_37

    const/4 v0, 0x1

    goto :goto_19

    :cond_37
    const/4 v0, 0x0

    goto :goto_19

    :cond_39
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .registers 7

    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v2, v3, :cond_43

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v2, p1, :cond_43

    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v2, :cond_34

    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, p2, :cond_32

    const/4 v0, 0x1

    :goto_22
    if-eqz v0, :cond_43

    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_32
    const/4 v0, 0x0

    goto :goto_22

    :cond_34
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v2, p2, :cond_41

    const/4 v0, 0x1

    goto :goto_22

    :cond_41
    const/4 v0, 0x0

    goto :goto_22

    :cond_43
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public resetVisibleIndex()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return-void
.end method

.method setNumRows(I)V
    .registers 5

    if-gtz p1, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_8
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ne v1, p1, :cond_d

    return-void

    :cond_d
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    new-array v1, v1, [Landroid/support/v4/util/CircularIntArray;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    const/4 v0, 0x0

    :goto_16
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    new-instance v2, Landroid/support/v4/util/CircularIntArray;

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    return-void
.end method

.method public setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    return-void
.end method

.method public final setReversedFlow(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return-void
.end method

.method public final setSpacing(I)V
    .registers 2

    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    return-void
.end method

.method public setStart(I)V
    .registers 2

    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method
