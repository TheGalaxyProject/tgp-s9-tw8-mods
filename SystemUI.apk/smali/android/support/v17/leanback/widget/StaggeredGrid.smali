.class abstract Landroid/support/v17/leanback/widget/StaggeredGrid;
.super Landroid/support/v17/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroid/support/v4/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/CircularArray",
            "<",
            "Landroid/support/v17/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    new-instance v0, Landroid/support/v4/util/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .registers 9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v0, v5, :cond_12

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v5, p1, :cond_3b

    const/4 v1, 0x1

    :cond_12
    if-nez v1, :cond_18

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    :cond_18
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->isReversedFlow()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mSpacing:I

    sub-int v4, v5, v6

    :goto_29
    add-int/lit8 v2, v0, 0x1

    :goto_2b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v5

    if-gt v2, v5, :cond_49

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_3e
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mSpacing:I

    add-int v4, v5, v6

    goto :goto_29

    :cond_49
    return v4
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .registers 15

    const v11, 0x7fffffff

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_e

    return v9

    :cond_e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v6

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_67

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    :cond_24
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    :goto_28
    if-ge v2, v6, :cond_a2

    if-gt v2, v7, :cond_a2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    if-eq v5, v11, :cond_35

    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v0

    :cond_35
    iget v4, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v10, v1, v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v3, v0, :cond_4d

    iput v3, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    sub-int v1, v7, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    move v7, v2

    :cond_4d
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-gez v0, :cond_55

    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    :cond_55
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v9

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_8e

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    return v10

    :cond_67
    const v5, 0x7fffffff

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_85

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    :goto_71
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v2, v0, :cond_7f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    if-ge v2, v0, :cond_87

    :cond_7f
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->clear()V

    return v9

    :cond_85
    const/4 v2, 0x0

    goto :goto_71

    :cond_87
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    if-le v2, v0, :cond_24

    return v9

    :cond_8e
    if-ne v5, v11, :cond_96

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    :cond_96
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_9f

    if-eqz p2, :cond_9f

    return v10

    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_a2
    return v9
.end method

.method protected final appendVisibleItemToRow(III)I
    .registers 12

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1b

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v2

    if-ne v0, v2, :cond_15

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_1b

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1b
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_66

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_64

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_64

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v7

    :goto_33
    new-instance v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v6, p2, v7, v3}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/CircularArray;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_71

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    :goto_49
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_80

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :goto_57
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return v0

    :cond_64
    const/4 v7, 0x0

    goto :goto_33

    :cond_66
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v7, p3, v0

    goto :goto_33

    :cond_71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v4, v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v0, v3

    goto :goto_49

    :cond_80
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_89

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    goto :goto_57

    :cond_89
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    goto :goto_57
.end method

.method protected final appendVisibleItems(IZ)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    return v2

    :cond_b
    if-nez p2, :cond_14

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    :try_start_14
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2d

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v0

    :cond_22
    :try_start_22
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2d

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v0

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw v0
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getFirstIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    if-ge v0, v2, :cond_f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/CircularIntArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    if-ltz p1, :cond_3c

    move v0, p1

    :goto_12
    if-gt v0, p2, :cond_3c

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    aget-object v1, v2, v3

    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v2

    if-lez v2, :cond_35

    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->getLast()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_35

    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->popLast()I

    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_35
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    goto :goto_32

    :cond_3c
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v2
.end method

.method public final getLastIndex()I
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .registers 4

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int v0, p1, v1

    if-ltz v0, :cond_e

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    :cond_e
    const/4 v1, 0x0

    return-object v1

    :cond_10
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    return-object v1
.end method

.method public invalidateItemsAfter(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :cond_1a
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    return v10

    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_5a

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v6

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v2, v0, -0x1

    :cond_23
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2f
    if-lt v2, v7, :cond_ae

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    iget v4, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v10, v1, v10}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v3, v0, :cond_82

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    add-int/lit8 v1, v2, 0x1

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v0, v0, v10

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    return v10

    :cond_5a
    const v6, 0x7fffffff

    const/4 v9, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_79

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    :goto_65
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    if-gt v2, v0, :cond_73

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_7b

    :cond_73
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->clear()V

    return v10

    :cond_79
    const/4 v2, 0x0

    goto :goto_65

    :cond_7b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    if-ge v2, v0, :cond_23

    return v10

    :cond_82
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_8a

    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    :cond_8a
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v10

    sub-int v5, v6, v9

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_9e

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    return v11

    :cond_9e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v6

    iget v9, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    if-nez v4, :cond_ab

    if-eqz p2, :cond_ab

    return v11

    :cond_ab
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    :cond_ae
    return v10
.end method

.method protected final prependVisibleItemToRow(III)I
    .registers 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1a

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v2

    if-ne v0, v2, :cond_14

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v2, p1, 0x1

    if-eq v0, v2, :cond_1a

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1a
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ltz v0, :cond_66

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    :goto_24
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    new-instance v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v6, p2, v3, v3}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/CircularArray;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_68

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    :goto_42
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_4c

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    :cond_4c
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mReversedFlow:Z

    if-nez v0, :cond_77

    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v5, p3, v0

    :goto_54
    if-eqz v8, :cond_5a

    sub-int v0, v7, v5

    iput v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    :cond_5a
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return v0

    :cond_66
    const/4 v8, 0x0

    goto :goto_24

    :cond_68
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v3, v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v0, v3

    goto :goto_42

    :cond_77
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int v5, p3, v0

    goto :goto_54
.end method

.method protected final prependVisibleItems(IZ)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    return v2

    :cond_b
    if-nez p2, :cond_14

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    :try_start_14
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2d

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v0

    :cond_22
    :try_start_22
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2d

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return v0

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw v0
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
