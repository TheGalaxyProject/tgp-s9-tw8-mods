.class Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecSearchInferface$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHistoryEmptyView:Landroid/view/View;

.field private mHistoryLayout:Landroid/view/ViewGroup;

.field private mHistoryListView:Landroid/widget/ListView;

.field private mLoadingView:Landroid/view/ViewGroup;

.field private mSearchResultEmptyView:Landroid/view/ViewGroup;

.field private mSearchResultLayout:Landroid/view/ViewGroup;

.field private mSearchResultListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initSearchView(Landroid/view/View;)V
    .registers 6

    const v3, 0x7f0a0760

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f0e0008

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->inflateMenu(I)V

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3, v0}, Lcom/android/settings/SettingsActivity;->updateOptionMenu(Landroid/view/Menu;)Z

    const v3, 0x7f0a0753

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;-><init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_48
    return-void

    :cond_49
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    goto :goto_48
.end method


# virtual methods
.method public clearFocusOnSearchView()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_9
    return-void
.end method

.method public getSearchText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_b
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public hideHistoryLayout()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public hideIme()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1d
    return-void
.end method

.method public hideLoadingView(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_10

    iput-object v2, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    :cond_10
    return-void
.end method

.method public hideSearchResultLayout()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v1, 0x7f0a04c6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0487

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a05bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    const v1, 0x7f0a04bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0489

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a05be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryEmptyView:Landroid/view/View;

    const v1, 0x7f0a04bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    const v3, 0x7f0d02a3

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->initSearchView(Landroid/view/View;)V

    return-void
.end method

.method public isSearchViewFocused()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isFocused()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public requestFocusOnSearchView()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x1020459

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_12
    return-void
.end method

.method public setHistoryListAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_9
    return-void
.end method

.method public setOnHistoryListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_9
    return-void
.end method

.method public setOnSearchResultsListItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_9
    return-void
.end method

.method public setOnSearchResultsListScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_9
    return-void
.end method

.method public setSearchResultsListAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_9
    return-void
.end method

.method public setSearchText(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_9
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_14

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_14
    return-void
.end method

.method public showHistoryLayout(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryEmptyView:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryEmptyView:Landroid/view/View;

    if-eqz p1, :cond_20

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    move v0, v2

    goto :goto_15

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1f
.end method

.method public showLoadingViewIfPossible()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mLoadingView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public showSearchResultLayout(Z)V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->mSearchResultEmptyView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_16

    :goto_12
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_15
    return-void

    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method
