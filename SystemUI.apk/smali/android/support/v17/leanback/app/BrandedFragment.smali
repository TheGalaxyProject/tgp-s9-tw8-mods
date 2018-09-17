.class public Landroid/support/v17/leanback/app/BrandedFragment;
.super Landroid/app/Fragment;
.source "BrandedFragment.java"


# instance fields
.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

.field private mSearchAffordanceColorSet:Z

.field private mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private mShowingTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    return-void
.end method


# virtual methods
.method getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrandedFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v1, Landroid/support/v17/leanback/R$id;->browse_title_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrandedFragment;->setTitleView(Landroid/view/View;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrandedFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_13
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$attr;->browseTitleViewLayout:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_18
    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_1e
    sget v2, Landroid/support/v17/leanback/R$layout;->lb_browse_title:I

    goto :goto_18
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_a
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "titleShow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedFragment;->showTitle(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    :cond_12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_e

    const-string/jumbo v0, "titleShow"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    :cond_e
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    if-eqz v0, :cond_28

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    new-instance v0, Landroid/support/v17/leanback/widget/TitleHelper;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_28
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    if-nez v0, :cond_c

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_2f
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedFragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    new-instance v1, Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleView:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    goto :goto_b
.end method

.method public showTitle(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->updateComponentsVisibility(I)V

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedFragment;->showTitle(Z)V

    return-void
.end method

.method public showTitle(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mShowingTitle:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    :cond_10
    return-void
.end method
