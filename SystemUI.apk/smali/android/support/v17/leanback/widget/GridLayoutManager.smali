.class final Landroid/support/v17/leanback/widget/GridLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GridLayoutManager$1;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$2;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

.field mDisappearingPositions:[I

.field private mExtraLayoutSpace:I

.field mExtraLayoutSpaceInPreLayout:I

.field private mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field private mFocusOutEnd:Z

.field private mFocusOutFront:Z

.field private mFocusOutSideEnd:Z

.field private mFocusOutSideStart:Z

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mFocusSearchDisabled:Z

.field private mForceFullLayout:Z

.field private mGravity:I

.field mGrid:Landroid/support/v17/leanback/widget/Grid;

.field private mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field private mHorizontalSpacing:I

.field mInFastRelayout:Z

.field mInLayout:Z

.field mInLayoutSearchFocus:Z

.field private mInScroll:Z

.field mInSelection:Z

.field mIsSlidingChildViews:Z

.field private final mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

.field mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutEatenInSliding:Z

.field private mLayoutEnabled:Z

.field mMaxPendingMoves:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOrientation:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field mPositionDeltaInPreLayout:I

.field final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field private mPrimaryScrollExtra:I

.field private mPruneChild:Z

.field mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field mReverseFlowPrimary:Z

.field private mReverseFlowSecondary:Z

.field private mRowSecondarySizeRefresh:Z

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mScrollEnabled:Z

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroid/support/v7/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseGridView;)V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const v0, 0x800033

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    new-instance v0, Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    new-instance v0, Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$1;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$2;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private appendVisibleItems()V
    .registers 4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v0, v2

    :goto_c
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(I)V

    return-void

    :cond_10
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v0, v2

    goto :goto_c
.end method

.method private discardLayoutInfo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    return-void
.end method

.method private dispatchChildSelectedAndPositioned()V
    .registers 9

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v3, :cond_20

    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_27

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    :goto_1f
    return-void

    :cond_20
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    goto :goto_e

    :cond_27
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_34
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_1f
.end method

.method private fastRelayout()V
    .registers 20

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v15

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v8, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v2

    if-eq v15, v2, :cond_41

    const/4 v11, 0x1

    :cond_1f
    :goto_1f
    if-eqz v11, :cond_10e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v17

    add-int/lit8 v9, v8, -0x1

    :goto_2b
    if-lt v9, v10, :cond_c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_2b

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v15}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v12

    if-nez v12, :cond_4d

    const/4 v11, 0x1

    goto :goto_1f

    :cond_4d
    iget v2, v12, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v14

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->viewNeedsUpdate()Z

    move-result v2

    if-eqz v2, :cond_94

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    :cond_94
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v16

    add-int v6, v5, v16

    :goto_a7
    iget v3, v12, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    move/from16 v0, v16

    if-eq v14, v0, :cond_be

    const/4 v11, 0x1

    goto/16 :goto_1f

    :cond_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v16

    add-int v6, v5, v16

    goto :goto_a7

    :cond_be
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_e

    :cond_c4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v15}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v2, :cond_f8

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v2, :cond_10e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v0, v17

    if-gt v2, v0, :cond_10e

    :goto_e2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v2, v3, :cond_10e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_e2

    :cond_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_10e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, v17

    if-lt v2, v0, :cond_f8

    :cond_10e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .registers 5

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-eq p1, v2, :cond_1f

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_13
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v2, -0x1

    return v2
.end method

.method private focusToViewInLayout(ZZ)V
    .registers 8

    const/4 v4, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_e
    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    if-nez p1, :cond_1d

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    :cond_37
    :goto_37
    if-eqz p2, :cond_1d

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_1d

    :cond_45
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_4a
    if-ge v2, v0, :cond_37

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_37

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a
.end method

.method private forceRequestLayout()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdapterPositionByIndex(I)I
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getAdapterPositionByView(Landroid/view/View;)I
    .registers 5

    const/4 v2, -0x1

    if-nez p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    return v2

    :cond_13
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    return v1
.end method

.method private getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v3

    aget v3, v3, v4

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    :cond_1b
    return p1
.end method

.method private getAdjustedViewCenter(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    if-eq v0, p1, :cond_17

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, v1, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v1

    return v1

    :cond_17
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_c

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    :cond_c
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, v2

    if-nez v0, :cond_17

    if-eqz v1, :cond_1c

    :cond_17
    aput v0, p3, v3

    aput v1, p3, v4

    return v4

    :cond_1c
    aput v3, p3, v3

    aput v3, p3, v4

    return v3
.end method

.method private getMovement(I)I
    .registers 5

    const/16 v0, 0x11

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1e

    sparse-switch p1, :sswitch_data_3c

    :cond_9
    :goto_9
    return v0

    :sswitch_a
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_10

    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x1

    goto :goto_9

    :sswitch_12
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v1, :cond_18

    const/4 v0, 0x1

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    :sswitch_1a
    const/4 v0, 0x2

    goto :goto_9

    :sswitch_1c
    const/4 v0, 0x3

    goto :goto_9

    :cond_1e
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    sparse-switch p1, :sswitch_data_4e

    goto :goto_9

    :sswitch_27
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_2d

    const/4 v0, 0x2

    goto :goto_9

    :cond_2d
    const/4 v0, 0x3

    goto :goto_9

    :sswitch_2f
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-nez v1, :cond_35

    const/4 v0, 0x3

    goto :goto_9

    :cond_35
    const/4 v0, 0x2

    goto :goto_9

    :sswitch_37
    const/4 v0, 0x0

    goto :goto_9

    :sswitch_39
    const/4 v0, 0x1

    goto :goto_9

    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_a
        0x21 -> :sswitch_1a
        0x42 -> :sswitch_12
        0x82 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_4e
    .sparse-switch
        0x11 -> :sswitch_27
        0x21 -> :sswitch_37
        0x42 -> :sswitch_2f
        0x82 -> :sswitch_39
    .end sparse-switch
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .registers 17

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v12, v4}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v6

    if-ge v11, v3, :cond_82

    move-object v1, p1

    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_65

    :cond_30
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_65

    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v13, v4}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    aget-object v5, v12, v6

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v12, v10, v12

    if-le v12, v0, :cond_30

    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_65

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    :cond_65
    :goto_65
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_bd

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    sub-int v7, v12, v3

    :cond_6f
    :goto_6f
    if-eqz v1, :cond_c8

    move-object v9, v1

    :goto_72
    invoke-direct {p0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v8

    if-nez v7, :cond_7a

    if-eqz v8, :cond_ce

    :cond_7a
    const/4 v12, 0x0

    aput v7, p2, v12

    const/4 v12, 0x1

    aput v8, p2, v12

    const/4 v12, 0x1

    return v12

    :cond_82
    add-int v12, v0, v3

    if-le v10, v12, :cond_65

    iget v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_bb

    move-object v1, p1

    :goto_8c
    iget-object v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v13, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v13}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v13

    invoke-virtual {v12, v4, v13}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v12

    aget-object v5, v12, v6

    invoke-virtual {v5}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    sub-int/2addr v12, v11

    if-le v12, v0, :cond_b4

    const/4 v2, 0x0

    :cond_b0
    if-eqz v2, :cond_65

    const/4 v1, 0x0

    goto :goto_65

    :cond_b4
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v12

    if-eqz v12, :cond_b0

    goto :goto_8c

    :cond_bb
    move-object v2, p1

    goto :goto_65

    :cond_bd
    if-eqz v2, :cond_6f

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v12

    add-int v13, v3, v0

    sub-int v7, v12, v13

    goto :goto_6f

    :cond_c8
    if-eqz v2, :cond_cc

    move-object v9, v2

    goto :goto_72

    :cond_cc
    move-object v9, p1

    goto :goto_72

    :cond_ce
    const/4 v12, 0x0

    return v12
.end method

.method private getPrimaryAlignedScrollDistance(Landroid/view/View;)I
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v0

    return v0
.end method

.method private getRowSizeSecondary(I)I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    return v0

    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v0, v0, p1

    return v0
.end method

.method private getSecondaryScrollDistance(Landroid/view/View;)I
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result v1

    return v1
.end method

.method private getSizeSecondary()I
    .registers 4

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_f
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_5
.end method

.method private getViewCenter(Landroid/view/View;)I
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    goto :goto_8
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    goto :goto_8
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .registers 7

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_d
    const/4 v2, 0x0

    return v2
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .registers 14

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_43

    const/4 v5, 0x0

    const/4 v4, 0x1

    move v2, v1

    :goto_c
    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v6

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v8

    add-int v7, v8, v6

    move v3, v5

    :goto_23
    if-eq v3, v2, :cond_4a

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_48

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v6, :cond_48

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v7, :cond_48

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_48

    const/4 v8, 0x1

    return v8

    :cond_43
    add-int/lit8 v5, v1, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    goto :goto_c

    :cond_48
    add-int/2addr v3, v4

    goto :goto_23

    :cond_4a
    return v9
.end method

.method private initScrollController()V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->reset()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    return-void
.end method

.method private layoutInit()Z
    .registers 5

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_41

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_e
    :goto_e
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_57

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_57

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v1, v2, :cond_57

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollController()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    const/4 v1, 0x1

    return v1

    :cond_41
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v1, v0, :cond_4c

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_e

    :cond_4c
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v1, v2, :cond_e

    if-lez v0, :cond_e

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_e

    :cond_57
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_67

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v2

    if-eq v1, v2, :cond_a7

    :cond_67
    :goto_67
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v1}, Landroid/support/v17/leanback/widget/Grid;->createGrid(I)Landroid/support/v17/leanback/widget/Grid;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGridProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setReversedFlow(Z)V

    :cond_7d
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->initScrollController()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Grid;->setSpacing(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    return v3

    :cond_a7
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eq v1, v2, :cond_7d

    goto :goto_67
.end method

.method private leaveContext()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    return-void
.end method

.method private measureScrapChild(III[I)V
    .registers 13

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    iget v6, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {p2, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    iget v7, v3, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {p3, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    aput v6, p4, v7

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    aput v6, p4, v7

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_69
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_23

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_15

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_22

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_22

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result v0

    return v0
.end method

.method private prependVisibleItems()V
    .registers 4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v0, v2

    :goto_e
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(I)V

    return-void

    :cond_12
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v0, v2

    goto :goto_e
.end method

.method private processPendingMovement(Z)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    :goto_8
    if-eqz v1, :cond_10

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    goto :goto_8

    :cond_10
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v1, :cond_37

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz p1, :cond_33

    move v1, v2

    :goto_1e
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v4, v2, :cond_35

    :goto_22
    invoke-direct {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :cond_32
    :goto_32
    return-void

    :cond_33
    const/4 v1, -0x1

    goto :goto_1e

    :cond_35
    move v2, v3

    goto :goto_22

    :cond_37
    if-eqz p1, :cond_3f

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_32

    :cond_3f
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    goto :goto_32
.end method

.method private processRowSizeSecondary(Z)Z
    .registers 25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    if-nez v20, :cond_13

    :cond_10
    const/16 v20, 0x0

    return v20

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    if-nez v20, :cond_50

    const/4 v15, 0x0

    :goto_1c
    const/4 v4, 0x0

    const/16 v17, -0x1

    const/16 v16, -0x1

    const/4 v9, 0x0

    :goto_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_12e

    if-nez v15, :cond_5b

    const/4 v8, 0x0

    :goto_2f
    if-nez v8, :cond_5e

    const/4 v13, 0x0

    :goto_32
    const/4 v14, -0x1

    const/4 v12, 0x0

    :goto_34
    if-ge v12, v13, :cond_8f

    invoke-virtual {v8, v12}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v11

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/support/v4/util/CircularIntArray;->get(I)I

    move-result v10

    move v5, v11

    :goto_43
    if-gt v5, v10, :cond_8c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_63

    :cond_4d
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;

    move-result-object v15

    goto :goto_1c

    :cond_5b
    aget-object v8, v15, v9

    goto :goto_2f

    :cond_5e
    invoke-virtual {v8}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v13

    goto :goto_32

    :cond_63
    if-eqz p1, :cond_6c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    :cond_6c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_83

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v18

    :goto_7c
    move/from16 v0, v18

    if-le v0, v14, :cond_4d

    move/from16 v14, v18

    goto :goto_4d

    :cond_83
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v18

    goto :goto_7c

    :cond_8c
    add-int/lit8 v12, v12, 0x2

    goto :goto_34

    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFixedSize()Z

    move-result v20

    if-nez v20, :cond_fd

    if-eqz p1, :cond_fd

    if-gez v14, :cond_fd

    if-lez v6, :cond_fd

    if-gez v17, :cond_f3

    if-gez v16, :cond_f3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_119

    const/4 v7, 0x0

    :goto_be
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v17, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v16, v20, v21

    :cond_f3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v20, v0

    if-nez v20, :cond_12b

    move/from16 v14, v16

    :cond_fd
    :goto_fd
    if-gez v14, :cond_100

    const/4 v14, 0x0

    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move/from16 v0, v20

    if-eq v0, v14, :cond_115

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    move-object/from16 v20, v0

    aput v14, v20, v9

    const/4 v4, 0x1

    :cond_115
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_22

    :cond_119
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_126

    add-int/lit8 v7, v6, -0x1

    goto :goto_be

    :cond_126
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    goto :goto_be

    :cond_12b
    move/from16 v14, v17

    goto :goto_fd

    :cond_12e
    return v4
.end method

.method private removeInvisibleViewsAtEnd()V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    :goto_15
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    :cond_18
    return-void

    :cond_19
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    goto :goto_15
.end method

.method private removeInvisibleViewsAtFront()V
    .registers 5

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, v3

    :goto_17
    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    :cond_1a
    return-void

    :cond_1b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, v0

    goto :goto_17
.end method

.method private saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_12

    :cond_9
    const-string/jumbo v0, "GridLayoutManager"

    const-string/jumbo v1, "Recycler information was not released, bug!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .registers 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-nez v7, :cond_24

    if-lez p1, :cond_27

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v3

    if-le p1, v3, :cond_24

    move p1, v3

    :cond_24
    :goto_24
    if-nez p1, :cond_43

    return v6

    :cond_27
    if-gez p1, :cond_24

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v4

    if-ge p1, v4, :cond_24

    move p1, v4

    goto :goto_24

    :cond_43
    neg-int v7, p1

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v7, :cond_4f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1

    :cond_4f
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_86

    if-lez p1, :cond_88

    :cond_59
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    :goto_5c
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-le v7, v0, :cond_8c

    const/4 v5, 0x1

    :goto_63
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v7, :cond_8e

    if-lez p1, :cond_90

    :cond_6d
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    :goto_70
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v7

    if-ge v7, v0, :cond_77

    const/4 v6, 0x1

    :cond_77
    or-int/2addr v5, v6

    if-eqz v5, :cond_7d

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    :cond_7d
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1

    :cond_86
    if-ltz p1, :cond_59

    :cond_88
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    goto :goto_5c

    :cond_8c
    const/4 v5, 0x0

    goto :goto_63

    :cond_8e
    if-ltz p1, :cond_6d

    :cond_90
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    goto :goto_70
.end method

.method private scrollDirectionSecondary(I)I
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    return p1
.end method

.method private scrollGrid(IIZ)V
    .registers 7

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    :goto_a
    return-void

    :cond_b
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_19

    move v0, p1

    move v1, p2

    :goto_11
    if-eqz p3, :cond_1c

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_a

    :cond_19
    move v0, p2

    move v1, p1

    goto :goto_11

    :cond_1c
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->scrollBy(II)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    goto :goto_a
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .registers 9

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v2, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v2, :cond_16

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_30

    :cond_16
    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iput v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_23

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_23
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->invalidate()V

    :cond_30
    if-nez p1, :cond_33

    return-void

    :cond_33
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_44
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-nez v2, :cond_4b

    if-eqz p3, :cond_4b

    return-void

    :cond_4b
    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v2, v2, v3

    sget-object v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v2, v3, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    :cond_5f
    return-void
.end method

.method private updateChildAlignments()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_23

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    :goto_22
    return-void

    :cond_23
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->vertical:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_22

    :cond_38
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ItemAlignment;->horizontal:Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    goto :goto_22
.end method

.method private updateRowSecondarySizeRefresh()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    :cond_e
    return-void
.end method

.method private updateScrollController()V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/WindowAlignment;->vertical:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    return-void
.end method

.method private updateSecondaryScrollLimits()V
    .registers 6

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v1, v3, v4

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v3

    add-int v0, v1, v3

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v2, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method canScrollTo(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public canScrollVertically()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_9

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_15

    move v0, p1

    :goto_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    move-result v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_17

    :cond_11
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_15
    move v0, p2

    goto :goto_9

    :cond_17
    if-gez v0, :cond_25

    :try_start_19
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v2

    :goto_1c
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2, v1, v0, p4}, Landroid/support/v17/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_2c

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_25
    :try_start_25
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2c

    add-int v1, v2, v3

    goto :goto_1c

    :catchall_2c
    move-exception v2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    throw v2
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v2, v3, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    if-eqz p1, :cond_27

    if-eqz v2, :cond_27

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v4, v2, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v4, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    :goto_1b
    if-ge v0, p1, :cond_27

    add-int v3, v1, v2

    if-ge v0, v3, :cond_27

    invoke-interface {p2, v0, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_27
    return-void
.end method

.method dispatchChildSelected()V
    .registers 14

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne v0, v7, :cond_5a

    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_66

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez v12, :cond_61

    move-wide v4, v8

    :goto_2b
    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_2e
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v0, v12, v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    :goto_37
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->isLayoutRequested()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_4a
    if-ge v11, v10, :cond_59

    invoke-virtual {p0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    :cond_59
    return-void

    :cond_5a
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    goto :goto_16

    :cond_61
    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    goto :goto_2b

    :cond_66
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    if-eqz v0, :cond_71

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-interface/range {v4 .. v9}, Landroid/support/v17/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v6, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    goto :goto_37

    :cond_78
    add-int/lit8 v11, v11, 0x1

    goto :goto_4a
.end method

.method fillScrapViewsInPostLayout()V
    .registers 11

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v7, :cond_17

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v7, v7

    if-le v4, v7, :cond_2a

    :cond_17
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-nez v7, :cond_22

    const/16 v1, 0x10

    :goto_1d
    if-ge v1, v4, :cond_26

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_22
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    array-length v1, v7

    goto :goto_1d

    :cond_26
    new-array v7, v1, [I

    iput-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    :cond_2a
    const/4 v5, 0x0

    const/4 v0, 0x0

    move v6, v5

    :goto_2d
    if-ge v0, v4, :cond_45

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ltz v2, :cond_5b

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v5, v6, 0x1

    aput v2, v7, v6

    :goto_41
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    goto :goto_2d

    :cond_45
    if-lez v6, :cond_55

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    invoke-static {v7, v8, v6}, Ljava/util/Arrays;->sort([III)V

    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    iget-object v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8, v6, v9}, Landroid/support/v17/leanback/widget/Grid;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    :cond_55
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    return-void

    :cond_5b
    move v5, v6

    goto :goto_41
.end method

.method fireOnChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .registers 7

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .registers 7

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object v0

    :cond_c
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    return-object v0

    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_24
    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I
    .registers 7

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    return p3

    :cond_9
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge p3, v0, :cond_10

    return p3

    :cond_10
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_1a

    add-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p3

    return v2

    :cond_1a
    return v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class",
            "<+TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v2, p1, Landroid/support/v17/leanback/widget/FacetProvider;

    if-eqz v2, :cond_c

    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/FacetProvider;

    invoke-interface {v2, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_22

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_22
    return-object v0
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v0

    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method getRowStartSecondary(I)I
    .registers 6

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v2, :cond_16

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-le v0, p1, :cond_24

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-ge v0, p1, :cond_24

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_24
    return v1
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .registers 5

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_10

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    return v0

    :pswitch_a
    invoke-direct {p0, p1, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public getSelection()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return v0
.end method

.method getSlideOutDistance()I
    .registers 7

    const/4 v5, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHeight()I

    move-result v3

    neg-int v0, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_1c

    add-int/2addr v0, v2

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v3, :cond_37

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v0, :cond_1c

    move v0, v1

    goto :goto_1c

    :cond_37
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWidth()I

    move-result v3

    neg-int v0, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gez v1, :cond_1c

    add-int/2addr v0, v1

    goto :goto_1c
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .registers 11

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return v7

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_3a

    :goto_1a
    if-eq p2, p1, :cond_3a

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_33

    const/4 v2, 0x1

    :goto_24
    array-length v5, v0

    if-ge v2, v5, :cond_33

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v5

    if-ne v5, v3, :cond_30

    return v2

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_33
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_1a

    :cond_3a
    return v7
.end method

.method public getSubSelection()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    return v0
.end method

.method getTag()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    return v0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewMax(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewMin(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .registers 3

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_10

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_f
.end method

.method public getViewSelectedOffsets(Landroid/view/View;[I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v2

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v2

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result v0

    aput v0, p2, v1

    goto :goto_12
.end method

.method gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .registers 5

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    packed-switch v0, :pswitch_data_10

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method hasCreatedFirstItem()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_11

    :cond_10
    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10
.end method

.method hasCreatedLastItem()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12
.end method

.method protected hasDoneFirstLayout()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method hasPreviousViewInSameRow(I)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    if-ne p1, v4, :cond_a

    :cond_9
    return v5

    :cond_a
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    if-ltz v4, :cond_9

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    if-lez v4, :cond_1b

    return v6

    :cond_1b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v4

    iget v0, v4, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_29
    if-ltz v1, :cond_41

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    if-eqz v2, :cond_3e

    iget v4, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    if-ne v4, v0, :cond_3e

    if-ge v3, p1, :cond_3e

    return v6

    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_41
    return v5
.end method

.method layoutChild(ILandroid/view/View;III)V
    .registers 18

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_69

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v8

    :goto_8
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_12
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v9, v0, 0x70

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-eqz v0, :cond_6e

    :cond_1e
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    :goto_29
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_73

    const/16 v0, 0x30

    if-ne v9, v0, :cond_73

    :cond_31
    :goto_31
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_ae

    move v2, p3

    move/from16 v3, p5

    move/from16 v4, p4

    add-int v5, p5, v8

    :goto_3c
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    sget-object v10, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v4

    sget-object v11, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v5

    invoke-virtual {v7, v0, v1, v10, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    return-void

    :cond_69
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v8

    goto :goto_8

    :cond_6e
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v6, v0, 0x7

    goto :goto_29

    :cond_73
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7b

    const/4 v0, 0x3

    if-eq v6, v0, :cond_31

    :cond_7b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_8b

    const/16 v0, 0x50

    if-ne v9, v0, :cond_8b

    :cond_83
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    add-int p5, p5, v0

    goto :goto_31

    :cond_8b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    const/4 v0, 0x5

    if-eq v6, v0, :cond_83

    :cond_93
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_a5

    const/16 v0, 0x10

    if-ne v9, v0, :cond_a5

    :goto_9b
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    add-int p5, p5, v0

    goto :goto_31

    :cond_a5
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    if-ne v6, v0, :cond_31

    goto :goto_9b

    :cond_ae
    move v3, p3

    move/from16 v2, p5

    move/from16 v5, p4

    add-int v4, p5, v8

    goto :goto_3c
.end method

.method measureChild(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    sget-object v6, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->topMargin:I

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    sget-object v7, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v1, v6, v7

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4d

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_35
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_56

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v6, v5, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v1, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    :goto_49
    invoke-virtual {p1, v4, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_4d
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_35

    :cond_56
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v1, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v6, v2, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    goto :goto_49
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    :cond_11
    instance-of v0, p2, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1e

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    :goto_1a
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    :cond_1e
    iput-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroid/support/v17/leanback/widget/FacetProviderAdapter;

    goto :goto_1a
.end method

.method public onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v22, 0x1

    return v22

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_1b0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    const/16 v22, 0x1

    return v22

    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v9

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_57

    const/4 v12, 0x0

    :goto_3b
    if-eqz v12, :cond_46

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    if-eqz v22, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    if-nez v22, :cond_5e

    :cond_54
    const/16 v22, 0x1

    return v22

    :cond_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    goto :goto_3b

    :cond_5e
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_6e

    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_83

    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_83

    const/16 v22, 0x1

    return v22

    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e2

    if-eqz v12, :cond_e2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v22

    move-object/from16 v0, v22

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    :goto_9d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_b1

    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_e4

    :cond_b1
    const/4 v13, 0x1

    :goto_b2
    if-lez v13, :cond_e6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    add-int/lit8 v16, v22, -0x1

    :goto_ba
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_f0

    if-lez v13, :cond_e9

    const/16 v17, 0x0

    :goto_c4
    move/from16 v11, v17

    :goto_c6
    if-lez v13, :cond_f3

    move/from16 v0, v16

    if-gt v11, v0, :cond_f7

    :cond_cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_e0

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_fa

    :cond_e0
    :goto_e0
    add-int/2addr v11, v13

    goto :goto_c6

    :cond_e2
    const/4 v10, -0x1

    goto :goto_9d

    :cond_e4
    const/4 v13, -0x1

    goto :goto_b2

    :cond_e6
    const/16 v16, 0x0

    goto :goto_ba

    :cond_e9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v22

    add-int/lit8 v17, v22, -0x1

    goto :goto_c4

    :cond_f0
    add-int v17, v8, v13

    goto :goto_c4

    :cond_f3
    move/from16 v0, v16

    if-ge v11, v0, :cond_cc

    :cond_f7
    :goto_f7
    const/16 v22, 0x1

    return v22

    :cond_fa
    if-nez v12, :cond_10e

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_e0

    goto :goto_f7

    :cond_10e
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v15

    if-eqz v15, :cond_e0

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_14a

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_e0

    move/from16 v0, v19

    if-le v0, v9, :cond_e0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_e0

    goto :goto_f7

    :cond_14a
    if-nez v18, :cond_16a

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_e0

    move/from16 v0, v19

    if-ge v0, v9, :cond_e0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v6, :cond_e0

    goto :goto_f7

    :cond_16a
    const/16 v22, 0x3

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_18d

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v10, :cond_e0

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v0, v10, :cond_f7

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_e0

    :cond_18d
    const/16 v22, 0x2

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_e0

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v10, :cond_e0

    iget v0, v15, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v0, v10, :cond_f7

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto/16 :goto_e0

    :cond_1b0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v22, v0

    if-eqz v22, :cond_236

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v22

    add-int v20, v22, v14

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_1df
    if-ge v11, v5, :cond_20f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_20c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_20c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_20c

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_20c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1df

    :cond_20f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v6, :cond_251

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    :goto_21c
    if-ge v11, v5, :cond_251

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-nez v22, :cond_233

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_233
    add-int/lit8 v11, v11, 0x1

    goto :goto_21c

    :cond_236
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_251

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_251
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_25c

    const/16 v22, 0x1

    return v22

    :cond_25c
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->isFocusable()Z

    move-result v22

    if-eqz v22, :cond_f7

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f7
.end method

.method onChildRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    :cond_e
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7

    if-eqz p1, :cond_a

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_a

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 9

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    const/16 v1, 0x2000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_18
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    const/16 v1, 0x1000

    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_2c
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isLayoutHierarchical(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelectionModeForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 16

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_e

    instance-of v1, v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    :cond_e
    return-void

    :cond_f
    move-object v8, v9

    check-cast v8, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v8}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v10

    if-ltz v10, :cond_21

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1, v10}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v0

    :goto_1e
    if-gez v0, :cond_23

    return-void

    :cond_21
    const/4 v0, -0x1

    goto :goto_1e

    :cond_23
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getNumRows()I

    move-result v1

    div-int v2, v10, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_3a
    return-void

    :cond_3b
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 14

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v6, :cond_8

    return-object p1

    :cond_8
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v4, 0x0

    if-eq p2, v10, :cond_11

    if-ne p2, v7, :cond_49

    :cond_11
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v6

    if-eqz v6, :cond_21

    if-ne p2, v10, :cond_3f

    const/16 v0, 0x82

    :goto_1b
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    :cond_21
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_42

    const/4 v5, 0x1

    :goto_2e
    if-ne p2, v10, :cond_44

    move v6, v7

    :goto_31
    xor-int/2addr v6, v5

    if-eqz v6, :cond_46

    const/16 v0, 0x42

    :goto_36
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    :cond_3c
    :goto_3c
    if-eqz v4, :cond_50

    return-object v4

    :cond_3f
    const/16 v0, 0x21

    goto :goto_1b

    :cond_42
    const/4 v5, 0x0

    goto :goto_2e

    :cond_44
    move v6, v8

    goto :goto_31

    :cond_46
    const/16 v0, 0x11

    goto :goto_36

    :cond_49
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v1, v6, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_3c

    :cond_50
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getDescendantFocusability()I

    move-result v6

    const/high16 v9, 0x60000

    if-ne v6, v9, :cond_65

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    return-object v6

    :cond_65
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v3

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v6

    if-eqz v6, :cond_90

    const/4 v2, 0x1

    :goto_72
    if-ne v3, v7, :cond_92

    if-nez v2, :cond_7c

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7d

    :cond_7c
    move-object v4, p1

    :cond_7d
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_8d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8d

    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    move-object v4, p1

    :cond_8d
    :goto_8d
    if-eqz v4, :cond_c7

    return-object v4

    :cond_90
    const/4 v2, 0x0

    goto :goto_72

    :cond_92
    if-nez v3, :cond_ae

    if-nez v2, :cond_9c

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9d

    :cond_9c
    move-object v4, p1

    :cond_9d
    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v6, :cond_8d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8d

    invoke-direct {p0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    move-object v4, p1

    goto :goto_8d

    :cond_ae
    const/4 v6, 0x3

    if-ne v3, v6, :cond_bb

    if-nez v2, :cond_b9

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8d

    :cond_b9
    move-object v4, p1

    goto :goto_8d

    :cond_bb
    if-ne v3, v10, :cond_8d

    if-nez v2, :cond_c5

    iget-boolean v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8d

    :cond_c5
    move-object v4, p1

    goto :goto_8d

    :cond_c7
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/BaseGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d4

    return-object v4

    :cond_d4
    if-eqz p1, :cond_d7

    :goto_d6
    return-object p1

    :cond_d7
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    goto :goto_d6
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_24

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_24

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_24

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_24
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .registers 8

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_24

    add-int v1, p2, p4

    if-ge v0, v1, :cond_24

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p3, p2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_1e
    :goto_1e
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void

    :cond_24
    if-ge p2, v0, :cond_30

    sub-int v1, v0, p4

    if-le p3, v1, :cond_30

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_1e

    :cond_30
    if-le p2, v0, :cond_1e

    if-ge p3, v0, :cond_1e

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p4

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_1e
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    if-ltz v1, :cond_2a

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2a

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int v0, v1, v2

    if-gt p2, v0, :cond_2a

    add-int v1, p2, p3

    if-le v1, v0, :cond_30

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int v2, p2, v0

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->clear()V

    return-void

    :cond_30
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr v1, p3

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_2a
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 7

    move v1, p2

    add-int v0, p2, p3

    :goto_3
    if-ge v1, v0, :cond_d

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 44

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    move/from16 v39, v0

    if-nez v39, :cond_9

    return-void

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-gez v9, :cond_10

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    move/from16 v39, v0

    if-eqz v39, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v39

    if-lez v39, :cond_27

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    return-void

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    move/from16 v39, v0

    if-nez v39, :cond_36

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    :cond_36
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct/range {p0 .. p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v39

    if-eqz v39, :cond_141

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_135

    if-lez v4, :cond_135

    const v14, 0x7fffffff

    const/high16 v12, -0x80000000

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    add-int/lit8 v40, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v13

    const/4 v8, 0x0

    :goto_8b
    if-ge v8, v4, :cond_125

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    if-nez v8, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v40

    sub-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v16

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v39

    if-nez v39, :cond_e7

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v39

    if-nez v39, :cond_e7

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->isLayoutRequested()Z

    move-result v39

    if-nez v39, :cond_e7

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-nez v39, :cond_106

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_106

    :cond_e7
    :goto_e7
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_103
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    :cond_106
    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-eqz v39, :cond_11c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    invoke-virtual {v11}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getViewAdapterPosition()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_e7

    :cond_11c
    move/from16 v0, v16

    if-lt v0, v15, :cond_e7

    move/from16 v0, v16

    if-le v0, v13, :cond_103

    goto :goto_e7

    :cond_125
    if-le v12, v14, :cond_12f

    sub-int v39, v12, v14

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    :cond_12f
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    :cond_135
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_141
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v39

    if-eqz v39, :cond_14a

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updatePositionToRowMapInPostLayout()V

    :cond_14a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v39

    if-nez v39, :cond_392

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    move/from16 v39, v0

    if-nez v39, :cond_38e

    const/16 v33, 0x1

    :goto_15a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    const/16 v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_192

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move/from16 v39, v0

    const/high16 v40, -0x80000000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_192

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_192
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/BaseGridView;->hasFocus()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_396

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v6

    :goto_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    if-eqz v39, :cond_399

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v10

    :goto_1e2
    if-nez v29, :cond_39c

    const/16 v31, 0x0

    :goto_1e6
    if-nez v29, :cond_3a6

    const/16 v32, 0x0

    :goto_1ea
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-eqz v39, :cond_3b0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fastRelayout()V

    :cond_208
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v24

    if-eqz v33, :cond_3f8

    if-eqz v29, :cond_3f8

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v22

    sub-int v39, v21, v31

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    sub-int v39, v22, v32

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    :goto_24e
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_208

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-ne v0, v1, :cond_208

    if-eqz v33, :cond_330

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_401

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v39

    if-eqz v39, :cond_401

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v17

    :goto_296
    if-eqz v18, :cond_330

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v20

    :cond_2a8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v24

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v39

    sub-int v25, v19, v39

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v39

    sub-int v36, v20, v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    move/from16 v39, v0

    if-nez v39, :cond_405

    move/from16 v34, v25

    move/from16 v35, v36

    :goto_318
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_32c

    move/from16 v0, v27

    move/from16 v1, v35

    if-eq v0, v1, :cond_43e

    :cond_32c
    if-nez v26, :cond_40b

    if-nez v27, :cond_40b

    :cond_330
    :goto_330
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v39

    if-eqz v39, :cond_339

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->fillScrapViewsInPostLayout()V

    :cond_339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    move/from16 v39, v0

    if-eqz v39, :cond_453

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSecondarySizeRefresh:Z

    :goto_349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    move/from16 v39, v0

    if-eqz v39, :cond_46c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v28

    if-ne v0, v1, :cond_369

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v30

    if-eq v0, v1, :cond_458

    :cond_369
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_36c
    :goto_36c
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    move/from16 v39, v0

    if-eqz v39, :cond_382

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v39

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    :cond_382
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_38e
    const/16 v33, 0x0

    goto/16 :goto_15a

    :cond_392
    const/16 v33, 0x0

    goto/16 :goto_15a

    :cond_396
    const/4 v6, -0x1

    goto/16 :goto_1d0

    :cond_399
    const/4 v10, -0x1

    goto/16 :goto_1e2

    :cond_39c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdjustedViewCenter(Landroid/view/View;)I

    move-result v31

    goto/16 :goto_1e6

    :cond_3a6
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result v32

    goto/16 :goto_1ea

    :cond_3b0
    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v33, :cond_3f4

    if-ltz v6, :cond_3c2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-le v0, v10, :cond_3ea

    :cond_3c2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v37, v5

    :goto_3c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    const/16 v39, -0x1

    move/from16 v0, v39

    if-eq v5, v0, :cond_208

    :goto_3db
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v39

    if-eqz v39, :cond_208

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v39

    if-nez v39, :cond_208

    goto :goto_3db

    :cond_3ea
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move/from16 v0, v39

    if-lt v0, v6, :cond_3c2

    :cond_3f4
    move/from16 v37, v6

    move v5, v10

    goto :goto_3c8

    :cond_3f8
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZ)V

    goto/16 :goto_24e

    :cond_401
    const/16 v17, 0x0

    goto/16 :goto_296

    :cond_405
    move/from16 v35, v25

    move/from16 v34, v36

    goto/16 :goto_318

    :cond_40b
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollAndAppendPrepend(II)V

    if-nez v34, :cond_422

    if-eqz v35, :cond_433

    :cond_422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto/16 :goto_330

    :cond_433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v17/leanback/widget/BaseGridView;->stopScroll()V

    goto/16 :goto_330

    :cond_43e
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollAndAppendPrepend(II)V

    goto/16 :goto_330

    :cond_453
    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    goto/16 :goto_349

    :cond_458
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_369

    :cond_46c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    move/from16 v39, v0

    if-nez v39, :cond_36c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    move/from16 v39, v0

    if-eqz v39, :cond_36c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto/16 :goto_36c
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutCompleteListener:Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$OnLayoutCompleteListener;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    :cond_9
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 15

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_4f

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v8

    add-int v3, v6, v8

    :goto_1f
    iput v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v8, -0x2

    if-ne v6, v8, :cond_89

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_66

    move v6, v7

    :goto_2b
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iput v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v6, :cond_3a

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    array-length v6, v6

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    if-eq v6, v8, :cond_40

    :cond_3a
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    :cond_40
    invoke-direct {p0, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    sparse-switch v2, :sswitch_data_11a

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4f
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPaddingRight()I

    move-result v8

    add-int v3, v6, v8

    goto :goto_1f

    :cond_66
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_2b

    :sswitch_69
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int v1, v6, v3

    :cond_6f
    :goto_6f
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v6, :cond_114

    invoke-virtual {p0, v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    :goto_76
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :sswitch_7a
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result v6

    add-int/2addr v6, v3

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6f

    :sswitch_86
    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    goto :goto_6f

    :cond_89
    sparse-switch v2, :sswitch_data_128

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "wrong spec"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_95
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_b3

    sub-int v6, v5, v3

    :goto_9b
    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_b6

    :goto_a1
    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v1, v6, v3

    goto :goto_6f

    :cond_b3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    goto :goto_9b

    :cond_b6
    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    goto :goto_a1

    :sswitch_b9
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_df

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_df

    iput v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v6, v5, v3

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    :goto_c7
    move v1, v5

    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_6f

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int v0, v6, v3

    if-ge v0, v1, :cond_6f

    move v1, v0

    goto :goto_6f

    :cond_df
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v6, :cond_f3

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v6, v5

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v7, v8

    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_c7

    :cond_f3
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v6, :cond_10b

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v6, v5, v3

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iget v8, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    div-int/2addr v6, v7

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_c7

    :cond_10b
    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    iget v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_c7

    :cond_114
    invoke-virtual {p0, v1, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setMeasuredDimension(II)V

    goto/16 :goto_76

    nop

    :sswitch_data_11a
    .sparse-switch
        -0x80000000 -> :sswitch_7a
        0x0 -> :sswitch_69
        0x40000000 -> :sswitch_86
    .end sparse-switch

    :sswitch_data_128
    .sparse-switch
        -0x80000000 -> :sswitch_b9
        0x0 -> :sswitch_95
        0x40000000 -> :sswitch_b9
    .end sparse-switch
.end method

.method public onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    if-eqz v0, :cond_6

    return v2

    :cond_6
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return v2

    :cond_e
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    invoke-direct {p0, p2, p3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    :cond_21
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v1, p1, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    if-nez v1, :cond_5

    return-void

    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    iget v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_15

    if-ne p1, v2, :cond_13

    const/4 v0, 0x1

    :goto_9
    const/4 v1, 0x0

    :goto_a
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-ne v4, v0, :cond_1c

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    if-ne v4, v1, :cond_1c

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    if-ne p1, v2, :cond_1a

    const/4 v1, 0x1

    :goto_18
    const/4 v0, 0x0

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    goto :goto_18

    :cond_1c
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowSecondary:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/WindowAlignment;->horizontal:Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v2, :cond_2c

    :goto_28
    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    return-void

    :cond_2c
    move v2, v3

    goto :goto_28
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 8

    new-instance v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v6

    iput v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->index:I

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    :goto_16
    if-ge v2, v1, :cond_2c

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_29

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v0, v5, v3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v0

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2c
    iput-object v0, v4, Landroid/support/v17/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    return-object v4
.end method

.method public performAccessibilityAction(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    sparse-switch p3, :sswitch_data_22

    :goto_7
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    const/4 v0, 0x1

    return v0

    :sswitch_c
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_7

    :sswitch_17
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_7

    nop

    :sswitch_data_22
    .sparse-switch
        0x1000 -> :sswitch_17
        0x2000 -> :sswitch_c
    .end sparse-switch
.end method

.method processSelectionMoves(ZI)I
    .registers 16

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    if-nez v9, :cond_8

    return p2

    :cond_8
    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v2, v11, :cond_2c

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v2}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v3

    :goto_12
    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    :goto_18
    if-ge v4, v1, :cond_58

    if-eqz p2, :cond_58

    if-lez p2, :cond_2e

    move v5, v4

    :goto_1f
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_33

    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2c
    const/4 v3, -0x1

    goto :goto_12

    :cond_2e
    add-int/lit8 v9, v1, -0x1

    sub-int v5, v9, v4

    goto :goto_1f

    :cond_33
    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v7

    iget-object v9, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v9, v7}, Landroid/support/v17/leanback/widget/Grid;->getRowIndex(I)I

    move-result v8

    if-ne v3, v11, :cond_43

    move v2, v7

    move-object v6, v0

    move v3, v8

    goto :goto_29

    :cond_43
    if-ne v8, v3, :cond_29

    if-lez p2, :cond_50

    if-le v7, v2, :cond_50

    :goto_49
    move v2, v7

    move-object v6, v0

    if-lez p2, :cond_55

    add-int/lit8 p2, p2, -0x1

    goto :goto_29

    :cond_50
    if-gez p2, :cond_29

    if-ge v7, v2, :cond_29

    goto :goto_49

    :cond_55
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_58
    if-eqz v6, :cond_6d

    if-eqz p1, :cond_6e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_69

    iput-boolean v12, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    iput-boolean v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    :cond_69
    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v10, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    :cond_6d
    :goto_6d
    return p2

    :cond_6e
    invoke-virtual {p0, v6, v12}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    goto :goto_6d
.end method

.method public removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_e
    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method scrollAndAppendPrepend(II)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 7

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    :cond_d
    return v2

    :cond_e
    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_22

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    :goto_1c
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    return v0

    :cond_22
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    goto :goto_1c
.end method

.method public scrollToPosition(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method scrollToSelection(IIZI)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    invoke-virtual {p0, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInSelection:Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v1, :cond_23

    :cond_22
    return-void

    :cond_23
    if-eqz p3, :cond_43

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, v1, :cond_11

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iput v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_11

    :cond_43
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_11
.end method

.method scrollToView(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_7

    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_3
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEnabled:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    :cond_e
    return v2

    :cond_f
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    invoke-direct {p0, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->saveContext(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v1, v3, :cond_22

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result v0

    :goto_1c
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->leaveContext()V

    iput-boolean v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInScroll:Z

    return v0

    :cond_22
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result v0

    goto :goto_1c
.end method

.method setChildrenVisibility(I)V
    .registers 6

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-void
.end method

.method public setFocusOutAllowed(ZZ)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutFront:Z

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutEnd:Z

    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideStart:Z

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusOutSideEnd:Z

    return-void
.end method

.method setFocusSearchDisabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusSearchDisabled:Z

    return-void
.end method

.method public setGravity(I)V
    .registers 2

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGravity:I

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_9

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    :goto_8
    return-void

    :cond_9
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    goto :goto_8
.end method

.method public setItemAlignmentOffset(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffset(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffsetPercent(F)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentOffsetWithPadding(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemAlignment;->mainAxis()Landroid/support/v17/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment$Axis;->setItemAlignmentViewId(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setNumRows(I)V
    .registers 3

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    return-void
.end method

.method setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method public setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    :goto_11
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_17
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_11
.end method

.method public setOrientation(I)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_6

    return-void

    :cond_6
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment;->setOrientation(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mItemAlignment:Landroid/support/v17/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemAlignment;->setOrientation(I)V

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mForceFullLayout:Z

    return-void
.end method

.method public setPruneChild(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPruneChild:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    :cond_d
    return-void
.end method

.method public setRowHeight(I)V
    .registers 5

    if-gez p1, :cond_5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_8

    :cond_5
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid row height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScrollEnabled(Z)V
    .registers 6

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eq v0, p1, :cond_1d

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez v0, :cond_1d

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_1d
    return-void
.end method

.method public setSelection(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelection(IIZI)V
    .registers 6

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    :cond_7
    :goto_7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_a
    return-void

    :cond_b
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_7

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_a

    goto :goto_7
.end method

.method public setSelectionSmooth(I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelectionWithSub(III)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 4

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    :goto_9
    return-void

    :cond_a
    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    goto :goto_9
.end method

.method public setWindowAlignment(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffset(I)V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffsetPercent(F)V

    return-void
.end method

.method slideIn()V
    .registers 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_33

    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v0, :cond_34

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :goto_15
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    if-eqz v0, :cond_33

    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_29
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    new-instance v1, Landroid/support/v17/leanback/widget/GridLayoutManager$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$3;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iput-boolean v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mLayoutEatenInSliding:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_15

    :cond_3a
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->requestLayout()V

    goto :goto_33
.end method

.method slideOut()V
    .registers 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mIsSlidingChildViews:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_22
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v1, v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method startPositionSmoothScroller(I)I
    .registers 4

    new-instance v0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    return v1
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method updatePositionToRowMapInPostLayout()V
    .registers 7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2e

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v3

    if-ltz v3, :cond_2b

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v5, v2, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2e
    return-void
.end method

.method updateScrollLimits()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    if-nez v17, :cond_d

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    move/from16 v17, v0

    if-nez v17, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v8

    const/4 v7, 0x0

    :goto_36
    if-ltz v5, :cond_3a

    if-gez v8, :cond_5d

    :cond_3a
    return-void

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    goto :goto_36

    :cond_5d
    if-ne v5, v4, :cond_8a

    const/4 v3, 0x1

    :goto_60
    if-ne v8, v7, :cond_8c

    const/4 v6, 0x1

    :goto_63
    if-nez v3, :cond_8e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v17

    if-eqz v17, :cond_8e

    xor-int/lit8 v17, v6, 0x1

    if-eqz v17, :cond_8e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v17

    if-eqz v17, :cond_8e

    return-void

    :cond_8a
    const/4 v3, 0x0

    goto :goto_60

    :cond_8c
    const/4 v6, 0x0

    goto :goto_63

    :cond_8e
    if-eqz v3, :cond_116

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v11

    sget-object v17, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v16

    if-eqz v16, :cond_dc

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_dc

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget v17, v16, v17

    const/16 v18, 0x0

    aget v18, v16, v18

    sub-int v17, v17, v18

    add-int v12, v12, v17

    :cond_dc
    :goto_dc
    if-eqz v6, :cond_11d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v14

    sget-object v17, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v15

    :goto_106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11, v15, v12}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    return-void

    :cond_116
    const v11, 0x7fffffff

    const v12, 0x7fffffff

    goto :goto_dc

    :cond_11d
    const/high16 v14, -0x80000000

    const/high16 v15, -0x80000000

    goto :goto_106
.end method
