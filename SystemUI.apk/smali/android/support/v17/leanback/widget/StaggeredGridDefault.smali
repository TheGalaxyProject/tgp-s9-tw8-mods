.class final Landroid/support/v17/leanback/widget/StaggeredGridDefault;
.super Landroid/support/v17/leanback/widget/StaggeredGrid;
.source "StaggeredGridDefault.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;-><init>()V

    return-void
.end method

.method private findRowEdgeLimitSearchIndex(Z)I
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    :goto_5
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v0, v3, :cond_39

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-nez v1, :cond_15

    const/4 v2, 0x1

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_15
    if-eqz v2, :cond_12

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_12

    return v0

    :cond_1e
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    :goto_20
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v0, v3, :cond_39

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v1, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_34

    const/4 v2, 0x1

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    if-eqz v2, :cond_31

    if-nez v1, :cond_31

    return v0

    :cond_39
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method protected appendVisibleItemsWithoutCache(IZ)Z
    .registers 16

    iget-object v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-ltz v11, :cond_8e

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v12

    if-ge v11, v12, :cond_14

    const/4 v11, 0x0

    return v11

    :cond_14
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v6, v11, 0x1

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v11

    iget v9, v11, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v3

    if-gez v3, :cond_6e

    const/high16 v1, -0x80000000

    const/4 v5, 0x0

    :goto_2a
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v5, v11, :cond_3a

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_66

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    :goto_36
    const/high16 v11, -0x80000000

    if-eq v1, v11, :cond_6b

    :cond_3a
    :goto_3a
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_80

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v11

    if-gt v11, v1, :cond_55

    :goto_44
    add-int/lit8 v9, v9, 0x1

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ne v9, v11, :cond_55

    const/4 v9, 0x0

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_87

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v1

    :cond_55
    :goto_55
    const/4 v2, 0x1

    :goto_56
    const/4 v4, 0x0

    :goto_57
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v9, v11, :cond_15d

    if-eq v6, v0, :cond_65

    if-nez p2, :cond_b4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_b4

    :cond_65
    return v4

    :cond_66
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    goto :goto_36

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_6e
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_79

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v3, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v1

    goto :goto_3a

    :cond_79
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v3, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v1

    goto :goto_3a

    :cond_80
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v11

    if-lt v11, v1, :cond_55

    goto :goto_44

    :cond_87
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v1

    goto :goto_55

    :cond_8e
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_b0

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    :goto_95
    iget-object v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v11}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v11

    if-lez v11, :cond_b2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v11

    iget v11, v11, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v11, v11, 0x1

    :goto_a9
    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int v9, v11, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_56

    :cond_b0
    const/4 v6, 0x0

    goto :goto_95

    :cond_b2
    move v11, v6

    goto :goto_a9

    :cond_b4
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_101

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    :goto_bc
    const v11, 0x7fffffff

    if-eq v8, v11, :cond_c5

    const/high16 v11, -0x80000000

    if-ne v8, v11, :cond_124

    :cond_c5
    if-nez v9, :cond_112

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_106

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    :goto_d3
    const v11, 0x7fffffff

    if-eq v8, v11, :cond_e4

    const/high16 v11, -0x80000000

    if-eq v8, v11, :cond_e4

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_10f

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v11, v11

    :goto_e3
    add-int/2addr v8, v11

    :cond_e4
    :goto_e4
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6, v9, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    const/4 v4, 0x1

    if-eqz v2, :cond_14c

    :goto_ed
    move v6, v7

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_130

    sub-int v11, v8, v10

    if-le v11, v1, :cond_134

    :cond_f6
    if-eq v6, v0, :cond_100

    if-nez p2, :cond_138

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkAppendOverLimit(I)Z

    move-result v11

    if-eqz v11, :cond_138

    :cond_100
    return v4

    :cond_101
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_bc

    :cond_106
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_d3

    :cond_10f
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_e3

    :cond_112
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_11d

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v8

    goto :goto_e4

    :cond_11d
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v8

    goto :goto_e4

    :cond_124
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_12d

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v11, v11

    :goto_12b
    add-int/2addr v8, v11

    goto :goto_e4

    :cond_12d
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    goto :goto_12b

    :cond_130
    add-int v11, v8, v10

    if-lt v11, v1, :cond_f6

    :cond_134
    :goto_134
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_57

    :cond_138
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_148

    neg-int v11, v10

    iget v12, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v11, v12

    :goto_140
    add-int/2addr v8, v11

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6, v9, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->appendVisibleItemToRow(III)I

    move-result v10

    goto :goto_ed

    :cond_148
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v11, v10

    goto :goto_140

    :cond_14c
    const/4 v2, 0x1

    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_157

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v1

    move v6, v7

    goto :goto_134

    :cond_157
    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v1

    move v6, v7

    goto :goto_134

    :cond_15d
    if-eqz p2, :cond_160

    return v4

    :cond_160
    iget-boolean v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v11, :cond_16d

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v1

    :goto_16a
    const/4 v9, 0x0

    goto/16 :goto_57

    :cond_16d
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v1

    goto :goto_16a
.end method

.method public findRowMax(ZI[I)I
    .registers 14

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    move v2, p2

    const/4 v8, 0x1

    move v7, v5

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_3a

    move v6, v0

    add-int/lit8 v1, p2, 0x1

    :goto_16
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v9, :cond_70

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v9

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_34

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    if-eqz p1, :cond_37

    if-le v0, v6, :cond_34

    :goto_31
    move v5, v7

    move v6, v0

    move v2, v1

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    if-ge v0, v6, :cond_34

    goto :goto_31

    :cond_3a
    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    add-int v6, v0, v9

    add-int/lit8 v1, p2, -0x1

    :goto_44
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v9, :cond_70

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v9

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_6a

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    add-int v4, v0, v9

    if-eqz p1, :cond_6d

    if-le v4, v6, :cond_6a

    :goto_67
    move v5, v7

    move v6, v4

    move v2, v1

    :cond_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    :cond_6d
    if-ge v4, v6, :cond_6a

    goto :goto_67

    :cond_70
    if-eqz p3, :cond_78

    const/4 v9, 0x0

    aput v5, p3, v9

    const/4 v9, 0x1

    aput v2, p3, v9

    :cond_78
    return v6
.end method

.method public findRowMin(ZI[I)I
    .registers 14

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    move v2, p2

    const/4 v8, 0x1

    move v7, v5

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v9, :cond_49

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    sub-int v6, v0, v9

    add-int/lit8 v1, p2, -0x1

    :goto_1d
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-lt v1, v9, :cond_70

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v9

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_43

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v9

    sub-int v4, v0, v9

    if-eqz p1, :cond_46

    if-le v4, v6, :cond_43

    :goto_40
    move v6, v4

    move v5, v7

    move v2, v1

    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_46
    if-ge v4, v6, :cond_43

    goto :goto_40

    :cond_49
    move v6, v0

    add-int/lit8 v1, p2, 0x1

    :goto_4c
    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    if-ge v8, v9, :cond_70

    iget v9, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    if-gt v1, v9, :cond_70

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v9

    iget v9, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-eq v9, v7, :cond_6a

    iget v7, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    add-int/lit8 v8, v8, 0x1

    if-eqz p1, :cond_6d

    if-le v0, v6, :cond_6a

    :goto_67
    move v6, v0

    move v5, v7

    move v2, v1

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_6d
    if-ge v0, v6, :cond_6a

    goto :goto_67

    :cond_70
    if-eqz p3, :cond_78

    const/4 v9, 0x0

    aput v5, p3, v9

    const/4 v9, 0x1

    aput v2, p3, v9

    :cond_78
    return v6
.end method

.method getRowMax(I)I
    .registers 8

    const/high16 v5, -0x80000000

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-gez v3, :cond_7

    return v5

    :cond_7
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v3, :cond_37

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_1e

    return v0

    :cond_1e
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v1, v3, 0x1

    :goto_22
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v1, v3, :cond_69

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_34

    return v0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_37
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_4d

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v3, v0

    return v3

    :cond_4d
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v1, v3, -0x1

    :goto_51
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v3

    if-lt v1, v3, :cond_69

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_66

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr v3, v0

    return v3

    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_51

    :cond_69
    return v5
.end method

.method getRowMin(I)I
    .registers 8

    const v5, 0x7fffffff

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-gez v3, :cond_8

    return v5

    :cond_8
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_23

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v3, v0, v3

    return v3

    :cond_23
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLastVisibleIndex:I

    add-int/lit8 v1, v3, -0x1

    :goto_27
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v3

    if-lt v1, v3, :cond_6c

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_3d

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v3, v0, v3

    return v3

    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_40
    iget-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_53

    return v0

    :cond_53
    iget v3, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v1, v3, 0x1

    :goto_57
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLastIndex()I

    move-result v3

    if-gt v1, v3, :cond_6c

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v2

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v3, p1, :cond_69

    return v0

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_6c
    return v5
.end method

.method protected prependVisibleItemsWithoutCache(IZ)Z
    .registers 15

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    if-ltz v10, :cond_8d

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v11

    if-le v10, v11, :cond_e

    const/4 v10, 0x0

    return v10

    :cond_e
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    add-int/lit8 v5, v10, -0x1

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mFirstVisibleIndex:I

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v10

    iget v8, v10, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowEdgeLimitSearchIndex(Z)I

    move-result v2

    if-gez v2, :cond_6d

    add-int/lit8 v8, v8, -0x1

    const v0, 0x7fffffff

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v4, v10, -0x1

    :goto_2a
    if-ltz v4, :cond_39

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_65

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    :goto_34
    const v10, 0x7fffffff

    if-eq v0, v10, :cond_6a

    :cond_39
    :goto_39
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_7f

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v10

    if-lt v10, v0, :cond_55

    :goto_43
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_55

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v8, v10, -0x1

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_86

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v0

    :cond_55
    :goto_55
    const/4 v1, 0x1

    :goto_56
    const/4 v3, 0x0

    move v6, v5

    :goto_58
    if-ltz v8, :cond_15c

    if-ltz v6, :cond_64

    if-nez p2, :cond_b6

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_b6

    :cond_64
    return v3

    :cond_65
    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    goto :goto_34

    :cond_6a
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a

    :cond_6d
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_78

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v2, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(ZI[I)I

    move-result v0

    goto :goto_39

    :cond_78
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v2, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(ZI[I)I

    move-result v0

    goto :goto_39

    :cond_7f
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v10

    if-gt v10, v0, :cond_55

    goto :goto_43

    :cond_86
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v0

    goto :goto_55

    :cond_8d
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b2

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mStartIndex:I

    :goto_94
    iget-object v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v10}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v10

    if-ltz v10, :cond_b4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getFirstIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v10

    iget v10, v10, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    :goto_ab
    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    rem-int v8, v10, v11

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_56

    :cond_b2
    const/4 v5, 0x0

    goto :goto_94

    :cond_b4
    move v10, v5

    goto :goto_ab

    :cond_b6
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_102

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_be
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_c7

    const/high16 v10, -0x80000000

    if-ne v7, v10, :cond_123

    :cond_c7
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_111

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_107

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    :goto_d6
    const v10, 0x7fffffff

    if-eq v7, v10, :cond_e6

    const/high16 v10, -0x80000000

    if-eq v7, v10, :cond_e6

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_10d

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_e5
    add-int/2addr v7, v10

    :cond_e6
    :goto_e6
    add-int/lit8 v5, v6, -0x1

    invoke-virtual {p0, v6, v8, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    const/4 v3, 0x1

    if-eqz v1, :cond_14d

    :goto_ef
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12f

    add-int v10, v7, v9

    if-ge v10, v0, :cond_133

    :cond_f7
    if-ltz v5, :cond_101

    if-nez p2, :cond_138

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->checkPrependOverLimit(I)Z

    move-result v10

    if-eqz v10, :cond_138

    :cond_101
    return v3

    :cond_102
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_be

    :cond_107
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_d6

    :cond_10d
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    goto :goto_e5

    :cond_111
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_11c

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v7

    goto :goto_e6

    :cond_11c
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v7

    goto :goto_e6

    :cond_123
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_12b

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    :goto_129
    add-int/2addr v7, v10

    goto :goto_e6

    :cond_12b
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    neg-int v10, v10

    goto :goto_129

    :cond_12f
    sub-int v10, v7, v9

    if-gt v10, v0, :cond_f7

    :cond_133
    :goto_133
    add-int/lit8 v8, v8, -0x1

    move v6, v5

    goto/16 :goto_58

    :cond_138
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_148

    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    add-int/2addr v10, v9

    :goto_13f
    add-int/2addr v7, v10

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v5, v8, v7}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->prependVisibleItemToRow(III)I

    move-result v9

    move v5, v6

    goto :goto_ef

    :cond_148
    neg-int v10, v9

    iget v11, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mSpacing:I

    sub-int/2addr v10, v11

    goto :goto_13f

    :cond_14d
    const/4 v1, 0x1

    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_157

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMax(I)I

    move-result v0

    goto :goto_133

    :cond_157
    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->getRowMin(I)I

    move-result v0

    goto :goto_133

    :cond_15c
    if-eqz p2, :cond_15f

    return v3

    :cond_15f
    iget-boolean v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mReversedFlow:Z

    if-eqz v10, :cond_16f

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMax(Z[I)I

    move-result v0

    :goto_169
    iget v10, p0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->mNumRows:I

    add-int/lit8 v8, v10, -0x1

    goto/16 :goto_58

    :cond_16f
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;->findRowMin(Z[I)I

    move-result v0

    goto :goto_169
.end method
