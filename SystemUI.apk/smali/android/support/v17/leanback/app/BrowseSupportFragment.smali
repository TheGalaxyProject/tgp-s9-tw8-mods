.class public Landroid/support/v17/leanback/app/BrowseSupportFragment;
.super Landroid/support/v17/leanback/app/BaseSupportFragment;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BrowseSupportFragment$1;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$2;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$3;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$4;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$5;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$6;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;,
        Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;
    }
.end annotation


# static fields
.field private static final ARG_HEADERS_STATE:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;

.field static DEBUG:Z


# instance fields
.field final EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

.field private mBrandColor:I

.field private mBrandColorSet:Z

.field mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

.field mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

.field mCanShowHeaders:Z

.field private mContainerListAlignTop:I

.field private mContainerListMarginStart:I

.field mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

.field private mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

.field mHeadersBackStackEnabled:Z

.field private mHeadersState:I

.field mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

.field mHeadersTransition:Ljava/lang/Object;

.field mIsPageRow:Z

.field mMainFragment:Landroid/support/v4/app/Fragment;

.field mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

.field private mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

.field private mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

.field private mMainFragmentScaleEnabled:Z

.field private final mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private final mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field private mScaleFactor:F

.field private mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field mSceneWithHeaders:Ljava/lang/Object;

.field mSceneWithoutHeaders:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

.field mShowingHeaders:Z

.field mWithHeadersBackStackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".headersState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;

    const-string/jumbo v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "headerFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "mainFragmentViewCreated"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "screenDataReady"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    return-void
.end method

.method private createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z
    .registers 11

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-nez v3, :cond_30

    :goto_8
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v3, :cond_5c

    instance-of v3, v0, Landroid/support/v17/leanback/widget/PageRow;

    :goto_10
    iput-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_5e

    const/4 v2, 0x1

    :goto_17
    if-eqz v2, :cond_94

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapterRegistry:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    if-nez v3, :cond_65

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Fragment must implement MainFragmentAdapterProvider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_30
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-nez v3, :cond_39

    :cond_38
    return v4

    :cond_39
    if-gez p2, :cond_41

    const/4 p2, 0x0

    :cond_3c
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_41
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-lt p2, v3, :cond_3c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid position %d requested"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5c
    move v3, v4

    goto :goto_10

    :cond_5e
    if-eqz v1, :cond_62

    const/4 v2, 0x1

    goto :goto_17

    :cond_62
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    goto :goto_17

    :cond_65
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    invoke-interface {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v6, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v3, v6}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v3, :cond_98

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v3, v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    if-eqz v3, :cond_95

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    invoke-interface {v3}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    :goto_8d
    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-nez v3, :cond_92

    move v4, v5

    :cond_92
    iput-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    :cond_94
    :goto_94
    return v2

    :cond_95
    iput-object v7, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    goto :goto_8d

    :cond_98
    iput-object v7, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    goto :goto_94
.end method

.method private expandMainFragment(Z)V
    .registers 5

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_37

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    :goto_c
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    if-nez p1, :cond_39

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    :goto_2c
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setLayoutScaleY(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setChildScale(F)V

    return-void

    :cond_37
    const/4 v2, 0x0

    goto :goto_c

    :cond_39
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2c
.end method

.method private onExpandTransitionStart(ZLjava/lang/Runnable;)V
    .registers 6

    if-eqz p1, :cond_6

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_6
    new-instance v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->execute()V

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_14
    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->ARG_HEADERS_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersState(I)V

    :cond_25
    return-void
.end method

.method private replaceMainFragment(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0, v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->swapToMainFragment()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    :goto_11
    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setupMainFragment()V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setHeadersOnScreen(Z)V
    .registers 5

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_16

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_16
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    goto :goto_f
.end method

.method private setMainFragmentAlignment()V
    .registers 4

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentScaleEnabled:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v1, :cond_1a

    int-to-float v1, v0

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_1a
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setAlignment(I)V

    return-void
.end method

.method private setupMainFragment()V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/app/ListRowDataAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_14
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-direct {v1, p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentItemViewSelectedListener;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V

    :cond_27
    return-void
.end method

.method private swapToMainFragment()V
    .registers 5

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isShowingHeaders()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    new-instance v3, Landroid/support/v4/app/Fragment;

    invoke-direct {v3}, Landroid/support/v4/app/Fragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :goto_32
    return-void

    :cond_33
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_32
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_browse_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createHeadersTransition()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1b

    sget v0, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_in:I

    :goto_a
    invoke-static {v1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void

    :cond_1b
    sget v0, Landroid/support/v17/leanback/R$transition;->lb_browse_headers_out:I

    goto :goto_a
.end method

.method createStateMachineStates()V
    .registers 3

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .registers 5

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method isFirstRowWithContent(I)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    return v2

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-ge v0, v4, :cond_2e

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-eqz v4, :cond_2b

    if-ne p1, v0, :cond_29

    :goto_28
    return v2

    :cond_29
    move v2, v3

    goto :goto_28

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2e
    return v2
.end method

.method isFirstRowWithContentOrPageRow(I)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    return v2

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-ge v0, v4, :cond_32

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v4

    if-nez v4, :cond_2a

    instance-of v4, v1, Landroid/support/v17/leanback/widget/PageRow;

    if-eqz v4, :cond_2f

    :cond_2a
    if-ne p1, v0, :cond_2d

    :goto_2c
    return v2

    :cond_2d
    move v2, v3

    goto :goto_2c

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_32
    return v2
.end method

.method final isHeadersDataReady()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isInHeadersTransition()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isShowingHeaders()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    return v0
.end method

.method isVerticalScrolling()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->isScrolling()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginStart:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_start:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_browseRowsMarginTop:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$dimen;->lb_browse_rows_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->readArguments(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_73

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v2, :cond_80

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lbHeadersBackStack_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->load(Landroid/os/Bundle;)V

    :cond_73
    :goto_73
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$fraction;->lb_browse_rows_scale:I

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFactor:F

    return-void

    :cond_80
    if-eqz p1, :cond_73

    const-string/jumbo v2, "headerShow"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_73
.end method

.method public onCreateHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;
    .registers 2

    new-instance v0, Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_f0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onCreateHeadersSupportFragment()Landroid/support/v17/leanback/app/HeadersSupportFragment;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-direct {p0, v2, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createMainFragment(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    iget-object v5, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_dd

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_36
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_39
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_4d
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderViewSelectedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersSupportFragment$OnHeaderClickedListener;)V

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_browse_fragment:I

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    sget v2, Landroid/support/v17/leanback/R$id;->browse_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnChildFocusListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v2, p3}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotX(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mScaleFrameLayout:Landroid/support/v17/leanback/widget/ScaleFrameLayout;

    iget v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setPivotY(F)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setupMainFragment()V

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColorSet:Z

    if-eqz v2, :cond_b5

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrandColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setBackgroundColor(I)V

    :cond_b5
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$8;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v3, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-static {v2, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    return-object v1

    :cond_dd
    new-instance v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-direct {v2, v6}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    goto/16 :goto_36

    :cond_f0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$id;->browse_headers_dock:I

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;

    invoke-interface {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;->getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    new-instance v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V

    if-eqz p3, :cond_14a

    const-string/jumbo v2, "isPageRow"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_127
    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz p3, :cond_14c

    const-string/jumbo v2, "currentSelectedPosition"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_132
    iput v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v2, :cond_152

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    instance-of v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    if-eqz v2, :cond_14e

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;

    invoke-interface {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapterProvider;->getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    goto/16 :goto_39

    :cond_14a
    move v2, v3

    goto :goto_127

    :cond_14c
    move v2, v3

    goto :goto_132

    :cond_14e
    iput-object v6, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    goto/16 :goto_39

    :cond_152
    iput-object v6, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    goto/16 :goto_39
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    :cond_d
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroyView()V

    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    :cond_9
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    :cond_12
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    return-void
.end method

.method onRowSelected(I)V
    .registers 5

    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->post(IIZ)V

    :cond_b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isPageRow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->save(Landroid/os/Bundle;)V

    :goto_1c
    return-void

    :cond_1d
    const-string/jumbo v0, "headerShow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1c
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setAlignment(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setMainFragmentAlignment()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2a
    :goto_2a
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showHeaders(Z)V

    :cond_33
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_HEADER_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void

    :cond_3b
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2a

    :cond_45
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2a
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method setEntranceTransitionEndState()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setEntranceTransitionState(Z)V

    return-void
.end method

.method setEntranceTransitionStartState()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSearchOrbViewOnScreen(Z)V

    return-void
.end method

.method public setHeadersState(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-lt p1, v3, :cond_7

    const/4 v0, 0x3

    if-le p1, v0, :cond_21

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid headers state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    sget-boolean v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "BrowseSupportFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeadersState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    if-eq p1, v0, :cond_6f

    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersState:I

    packed-switch p1, :pswitch_data_80

    const-string/jumbo v0, "BrowseSupportFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown headers state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersGone(Z)V

    :cond_6f
    return-void

    :pswitch_70
    iput-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_62

    :pswitch_75
    iput-boolean v3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_62

    :pswitch_7a
    iput-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    iput-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    goto :goto_62

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_70
        :pswitch_75
        :pswitch_7a
    .end packed-switch
.end method

.method setSearchOrbViewOnScreen(Z)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1a

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-void

    :cond_1a
    iget v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mContainerListMarginStart:I

    neg-int v2, v2

    goto :goto_13
.end method

.method setSelection(IZ)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setSelectedPosition(IZ)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->replaceMainFragment(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->setSelectedPosition(IZ)V

    :cond_20
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    return-void
.end method

.method showHeaders(Z)V
    .registers 5

    sget-boolean v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "BrowseSupportFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showHeaders "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->setHeadersEnabled(Z)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setHeadersOnScreen(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->expandMainFragment(Z)V

    return-void
.end method

.method startHeadersTransitionInternal(Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isHeadersDataReady()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionPrepare()Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionStart()V

    xor-int/lit8 v0, p1, 0x1

    new-instance v1, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Z)V

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->onExpandTransitionStart(ZLjava/lang/Runnable;)V

    return-void
.end method

.method updateTitleViewVisibility()V
    .registers 7

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v4, v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v3, v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    :goto_13
    if-eqz v3, :cond_21

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(I)V

    :goto_19
    return-void

    :cond_1a
    iget v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v3

    goto :goto_13

    :cond_21
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(Z)V

    goto :goto_19

    :cond_25
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-eqz v4, :cond_47

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v4, :cond_47

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    iget-object v4, v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    iget-boolean v1, v4, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    :goto_33
    iget v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContentOrPageRow(I)Z

    move-result v2

    const/4 v0, 0x0

    if-eqz v1, :cond_3d

    const/4 v0, 0x2

    :cond_3d
    if-eqz v2, :cond_41

    or-int/lit8 v0, v0, 0x4

    :cond_41
    if-eqz v0, :cond_4e

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(I)V

    goto :goto_19

    :cond_47
    iget v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->isFirstRowWithContent(I)Z

    move-result v1

    goto :goto_33

    :cond_4e
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showTitle(Z)V

    goto :goto_19
.end method
