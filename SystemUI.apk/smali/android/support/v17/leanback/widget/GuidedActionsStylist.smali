.class public Landroid/support/v17/leanback/widget/GuidedActionsStylist;
.super Ljava/lang/Object;
.source "GuidedActionsStylist.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FragmentAnimationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionsStylist$2;,
        Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static final sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;


# instance fields
.field private mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field private mBackToCollapseActivatorView:Z

.field private mBackToCollapseSubActions:Z

.field private mBgView:Landroid/view/View;

.field private mButtonActions:Z

.field private mContentView:Landroid/view/View;

.field private mDescriptionMinLines:I

.field private mDisabledChevronAlpha:F

.field private mDisabledDescriptionAlpha:F

.field private mDisabledTextAlpha:F

.field private mDisplayHeight:I

.field private mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

.field private mEnabledChevronAlpha:F

.field private mEnabledDescriptionAlpha:F

.field private mEnabledTextAlpha:F

.field mExpandTransition:Ljava/lang/Object;

.field private mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

.field private mKeyLinePercent:F

.field mMainView:Landroid/view/ViewGroup;

.field private mSubActionsBackground:Landroid/view/View;

.field mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

.field private mTitleMaxLines:I

.field private mTitleMinLines:I

.field private mVerticalPadding:I


# direct methods
.method static synthetic -get0(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)Landroid/support/v17/leanback/widget/GuidedAction;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    sput-object v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    sget v1, Landroid/support/v17/leanback/R$id;->guidedactions_item_title:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setAlignedToTextViewBaseline(Z)V

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetWithPadding(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    sget-object v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->sGuidedActionItemAlignFacet:Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    new-array v2, v2, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    const-string/jumbo v1, "GuidedActionsStylist"

    sput-object v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return-void
.end method

.method private getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;)I
    .registers 6

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    :goto_17
    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17
.end method

.method private static setMaxLines(Landroid/widget/TextView;I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_6
.end method

.method private setupNextImeOptions(Landroid/widget/EditText;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_6
    return-void
.end method

.method private updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isSubAction()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-nez v0, :cond_29

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_1d

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    :cond_1d
    :goto_1d
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindChevronView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    :cond_28
    return-void

    :cond_29
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-ne v0, v1, :cond_60

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getKeyLine()I

    move-result v1

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1d

    :cond_52
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->setActivated(Z)V

    goto :goto_1d

    :cond_60
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1d
.end method


# virtual methods
.method public collapseAction(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-nez v2, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v2

    if-eqz v2, :cond_27

    move v1, p1

    :goto_14
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_29

    return-void

    :cond_27
    const/4 v1, 0x0

    goto :goto_14

    :cond_29
    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-virtual {p0, v2, v4, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    :goto_3e
    return-void

    :cond_3f
    invoke-virtual {p0, v5, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_3e
.end method

.method public expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v2, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    if-gez v0, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpandTransitionSupported()Z

    move-result v2

    if-eqz v2, :cond_3c

    move v1, p2

    :goto_23
    if-nez v1, :cond_3e

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$4;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    const/4 v1, 0x0

    goto :goto_23

    :cond_3e
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$5;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {v2, v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    goto :goto_3b
.end method

.method public getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public getItemViewType(Landroid/support/v17/leanback/widget/GuidedAction;)I
    .registers 3

    instance-of v0, p1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method getKeyLine()I
    .registers 3

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public final isBackKeyToCollapseActivatorView()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseActivatorView:Z

    return v0
.end method

.method public final isBackKeyToCollapseSubActions()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBackToCollapseSubActions:Z

    return v0
.end method

.method public isExpandTransitionSupported()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isExpanded()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInExpandTransition()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .registers 4

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_d
    return-void
.end method

.method public onAnimateItemFocused(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .registers 3

    return-void
.end method

.method public onAnimateItemPressed(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onAnimateItemPressedCancelled(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->press(Z)V

    return-void
.end method

.method public onBindActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 11

    instance-of v3, p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v3, :cond_55

    move-object v1, p2

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast v2, Landroid/support/v17/leanback/widget/picker/DatePicker;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDatePickerFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMinDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setMinDate(J)V

    :cond_23
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-eqz v3, :cond_37

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getMaxDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setMaxDate(J)V

    :cond_37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateDate(IIIZ)V

    :cond_55
    return-void
.end method

.method public onBindCheckMarkView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4a

    const v0, 0x101021a

    :goto_16
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_33

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_33
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    instance-of v4, v4, Landroid/widget/Checkable;

    if-eqz v4, :cond_49

    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    check-cast v4, Landroid/widget/Checkable;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    const v0, 0x1010219

    goto :goto_16

    :cond_4e
    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_49
.end method

.method public onBindChevronView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 8

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasNext()Z

    move-result v0

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_4f

    :cond_c
    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    :goto_1c
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz v0, :cond_3b

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    const/high16 v2, 0x43340000    # 180.0f

    :goto_30
    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_35
    return-void

    :cond_36
    iget v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    goto :goto_1c

    :cond_39
    const/4 v2, 0x0

    goto :goto_30

    :cond_3b
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-ne p2, v3, :cond_47

    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_35

    :cond_47
    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_35

    :cond_4f
    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mChevronView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_35
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 7

    const/4 v1, 0x0

    iput-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    :goto_23
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    :cond_35
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_78

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d4

    const/16 v0, 0x8

    :goto_59
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d6

    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    :goto_66
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    :cond_78
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mCheckmarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7f

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindCheckMarkView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    :cond_7f
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setIcon(Landroid/widget/ImageView;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->hasMultilineDescription()Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_aa

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_aa

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getDescriptionMaxHeight(Landroid/content/Context;Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    :cond_aa
    :goto_aa
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v0, :cond_b1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    :cond_b1
    invoke-virtual {p0, p1, v1, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_c9
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupImeOptions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    return-void

    :cond_d0
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    goto/16 :goto_23

    :cond_d4
    move v0, v1

    goto :goto_59

    :cond_d6
    iget v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    goto :goto_66

    :cond_d9
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e4

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    :cond_e4
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_aa

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setMaxLines(Landroid/widget/TextView;I)V

    goto :goto_aa

    :cond_f0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_c9
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideLayoutId()I

    move-result v4

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v4, :cond_10e

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_content2:I

    :goto_2b
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v4, :cond_112

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list_background2:I

    :goto_39
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBgView:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    instance-of v4, v4, Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v4, :cond_116

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    check-cast v4, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    :cond_4b
    :goto_4b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4, v6}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4, v6}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionEnabledChevronAlpha:I

    invoke-direct {p0, v0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledChevronAlpha:F

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionDisabledChevronAlpha:I

    invoke-direct {p0, v0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getFloat(Landroid/content/Context;Landroid/util/TypedValue;I)F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledChevronAlpha:F

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionTitleMinLines:I

    invoke-direct {p0, v0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMinLines:I

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionTitleMaxLines:I

    invoke-direct {p0, v0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mTitleMaxLines:I

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionDescriptionMinLines:I

    invoke-direct {p0, v0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getInteger(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDescriptionMinLines:I

    sget v4, Landroid/support/v17/leanback/R$attr;->guidedActionVerticalPadding:I

    invoke-direct {p0, v0, v3, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getDimension(Landroid/content/Context;Landroid/util/TypedValue;I)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mVerticalPadding:I

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisplayHeight:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_unselected_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledTextAlpha:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_disabled_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledTextAlpha:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_unselected_description_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEnabledDescriptionAlpha:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$string;->lb_guidedactions_item_disabled_description_text_alpha:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mDisabledDescriptionAlpha:F

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mKeyLinePercent:F

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    instance-of v4, v4, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;

    if-eqz v4, :cond_10b

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;

    new-instance v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout;->setInterceptKeyEventListener(Landroid/support/v17/leanback/widget/GuidedActionsRelativeLayout$InterceptKeyEventListener;)V

    :cond_10b
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-object v4

    :cond_10e
    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_content:I

    goto/16 :goto_2b

    :cond_112
    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list_background:I

    goto/16 :goto_39

    :cond_116
    iget-object v5, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v4, :cond_133

    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list2:I

    :goto_11e
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-nez v4, :cond_136

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "No ListView exists."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_133
    sget v4, Landroid/support/v17/leanback/R$id;->guidedactions_list:I

    goto :goto_11e

    :cond_136
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4, v6}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-nez v4, :cond_4b

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget v5, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    sget v5, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    goto/16 :goto_4b
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v3

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-ne p1, v4, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-direct {v3, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .registers 8

    const/4 v2, 0x0

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v2

    return-object v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId(I)I

    move-result v3

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-ne p1, v4, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    invoke-direct {v3, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;-><init>(Landroid/view/View;Z)V

    return-object v3
.end method

.method public onDestroyView()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mBgView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    return-void
.end method

.method onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    new-instance v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$3;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    :cond_33
    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0, v2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1b
.end method

.method protected onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .registers 14
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_5c

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v4, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v1, :cond_28

    if-eqz v2, :cond_28

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isDescriptionEditable()Z

    move-result v5

    if-eqz v5, :cond_40

    if-eqz v1, :cond_3a

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionEditInputType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setInputType(I)V

    :cond_3a
    iput v8, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    :cond_3c
    :goto_3c
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void

    :cond_40
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_52

    if-eqz v4, :cond_4f

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditInputType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    :cond_4f
    iput v7, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_3c

    :cond_52
    iget-object v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v5, :cond_3c

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    iput v9, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_3c

    :cond_5c
    if-eqz v4, :cond_65

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_65
    if-eqz v1, :cond_6e

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6e
    iget v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v5, v8, :cond_8f

    if-eqz v1, :cond_8a

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    const/16 v5, 0x8

    :goto_80
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getDescriptionInputType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setInputType(I)V

    :cond_8a
    :goto_8a
    iput v6, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    goto :goto_3c

    :cond_8d
    move v5, v6

    goto :goto_80

    :cond_8f
    iget v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v5, v7, :cond_9d

    if-eqz v4, :cond_8a

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getInputType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_8a

    :cond_9d
    iget v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mEditingMode:I

    if-ne v5, v9, :cond_8a

    iget-object v5, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    if-eqz v5, :cond_8a

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    goto :goto_8a
.end method

.method public onImeAppearing(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onImeDisappearing(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProvideItemLayoutId()I
    .registers 2

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions_item:I

    return v0
.end method

.method public onProvideItemLayoutId(I)I
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onProvideItemLayoutId()I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions_datepicker_item:I

    return v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported in GuidedActionsStylist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProvideLayoutId()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedbuttonactions:I

    :goto_6
    return v0

    :cond_7
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedactions:I

    goto :goto_6
.end method

.method public onUpdateActivatorView(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .registers 9

    instance-of v2, p2, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    if-eqz v2, :cond_20

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mActivatorView:Landroid/view/View;

    check-cast v1, Landroid/support/v17/leanback/widget/picker/DatePicker;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getDate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    const/4 v2, 0x1

    return v2

    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method public onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_2e

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    :cond_c
    :goto_c
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_42

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->updateChevronAndVisibility(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2e
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eq v3, v4, :cond_c

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandedAction:Landroid/support/v17/leanback/widget/GuidedAction;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    goto :goto_c

    :cond_42
    return-void
.end method

.method onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz p2, :cond_3a

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getSubActions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    goto :goto_39
.end method

.method public setAsButtonActions()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setAsButtonActions() must be called before creating views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mButtonActions:Z

    return-void
.end method

.method public setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method

.method setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    return-void
.end method

.method setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V
    .registers 5

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditing()Z

    move-result v0

    if-eq p2, v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isInExpandTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onEditingModeChange(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;ZZ)V

    :cond_11
    return-void
.end method

.method protected setupImeOptions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 4

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setupNextImeOptions(Landroid/widget/EditText;)V

    return-void
.end method

.method startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
    .registers 21

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v5

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v5, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    check-cast v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-nez p1, :cond_36

    iget-object v0, v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_36

    move-object v7, v15

    :cond_33
    :goto_33
    if-nez v7, :cond_4b

    return-void

    :cond_36
    if-eqz p1, :cond_48

    invoke-virtual {v15}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_48

    move-object v7, v15

    goto :goto_33

    :cond_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_4b
    if-eqz p1, :cond_e9

    const/4 v9, 0x1

    :goto_4e
    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v10

    if-eqz p2, :cond_1b3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v11

    if-eqz v10, :cond_ec

    iget-object v0, v7, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v13, v0

    :goto_6b
    const/16 v16, 0x70

    move/from16 v0, v16

    invoke-static {v0, v13}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(IF)Ljava/lang/Object;

    move-result-object v12

    new-instance v16, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$6;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeTransform()Ljava/lang/Object;

    move-result-object v3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v2

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v6

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_ff

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-static {v12, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    :goto_b5
    const/4 v8, 0x0

    :goto_b6
    if-ge v8, v5, :cond_133

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    check-cast v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-ne v15, v7, :cond_11c

    if-eqz v10, :cond_e6

    iget-object v0, v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    :cond_e6
    :goto_e6
    add-int/lit8 v8, v8, 0x1

    goto :goto_b6

    :cond_e9
    const/4 v9, 0x0

    goto/16 :goto_4e

    :cond_ec
    iget-object v0, v7, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v13, v16, v17

    goto/16 :goto_6b

    :cond_ff
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    const-wide/16 v16, 0x32

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setStartDelay(Ljava/lang/Object;J)V

    goto :goto_b5

    :cond_11c
    iget-object v0, v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v0, v15, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v6, v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    goto :goto_e6

    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;Landroid/view/View;)V

    invoke-static {v11, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v10, :cond_154

    invoke-static {v11, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_154
    invoke-static {v11, v6}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    move-object/from16 v16, v0

    new-instance v17, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;

    invoke-direct/range {v17 .. v18}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;-><init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V

    invoke-static/range {v16 .. v17}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    if-eqz v9, :cond_1a4

    if-eqz v10, :cond_1a4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v17/leanback/widget/VerticalGridView;->getTop()I

    move-result v17

    sub-int v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Landroid/support/v17/leanback/widget/VerticalGridView;->offsetTopAndBottom(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mSubActionsBackground:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mMainView:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/support/v17/leanback/transition/TransitionHelper;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    :cond_1b3
    invoke-virtual/range {p0 .. p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateExpandedViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    if-eqz v10, :cond_1c3

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onUpdateSubActionsGridView(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    :cond_1c3
    return-void
.end method
