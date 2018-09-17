.class public Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GuidedActionAdapter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;
    }
.end annotation


# instance fields
.field private final mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

.field private final mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

.field private final mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

.field mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

.field private final mIsSubAdapter:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field final mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;",
            "Landroid/support/v17/leanback/widget/GuidedActionsStylist;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_2f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_11
    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    iput-object p4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-direct {v0, p0, p3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    iput-boolean p5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    return-void

    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_11
.end method

.method private setupListeners(Landroid/widget/EditText;)V
    .registers 4

    if-eqz p1, :cond_19

    const-string/jumbo v1, "EscapeNorth=1;"

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    instance-of v1, p1, Landroid/support/v17/leanback/widget/ImeKeyMonitor;

    if-eqz v1, :cond_19

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ImeKeyMonitor;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/ImeKeyMonitor;->setImeKeyListener(Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-nez v2, :cond_8

    return-object v3

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_d
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eq v0, v2, :cond_1f

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_d

    :cond_1f
    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    :cond_2d
    return-object v1
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getItemViewType(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result v0

    return v0
.end method

.method getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    goto :goto_a
.end method

.method public handleCheckedActions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    if-eqz v6, :cond_59

    if-eqz v2, :cond_59

    if-eq v2, v8, :cond_4b

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    :goto_1c
    if-ge v3, v4, :cond_4b

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    if-eq v0, v1, :cond_48

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v6

    if-ne v6, v2, :cond_48

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-virtual {v0, v7}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz v5, :cond_48

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v6, v5, v7}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_4b
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v6

    if-nez v6, :cond_5a

    invoke-virtual {v1, v9}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v6, p1, v9}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    if-ne v2, v8, :cond_59

    invoke-virtual {v1, v7}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v6, p1, v7}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_59
.end method

.method public indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_9

    return-void

    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v1, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 6

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v1

    iget-object v0, v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    return-object v1
.end method

.method public performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;->onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V

    :cond_d
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    :cond_a
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->unFocus()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyDataSetChanged()V

    return-void
.end method
