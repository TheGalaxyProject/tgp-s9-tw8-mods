.class public Landroid/support/v17/leanback/widget/RowHeaderPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "RowHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAnimateSelect:Z

.field private final mFontMeasurePaint:Landroid/graphics/Paint;

.field private final mLayoutResourceId:I

.field private mNullItemVisibilityGone:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_row_header:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mFontMeasurePaint:Landroid/graphics/Paint;

    iput p1, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mLayoutResourceId:I

    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    return-void
.end method

.method protected static getFontDescent(Landroid/widget/TextView;Landroid/graphics/Paint;)F
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eq v0, v1, :cond_24

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_24
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v0

    return v0
.end method


# virtual methods
.method public getSpaceUnderBaseline(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;)I
    .registers 5

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_18

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mFontMeasurePaint:Landroid/graphics/Paint;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->getFontDescent(Landroid/widget/TextView;Landroid/graphics/Paint;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    :cond_18
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .registers 9

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_2d

    const/4 v0, 0x0

    :goto_7
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-nez v0, :cond_34

    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    if-eqz v2, :cond_15

    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowHeaderView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v2, :cond_1e

    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    iget-object v2, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mNullItemVisibilityGone:Z

    if-eqz v2, :cond_2c

    iget-object v2, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    check-cast p2, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/Row;->getHeaderItem()Landroid/support/v17/leanback/widget/HeaderItem;

    move-result-object v0

    goto :goto_7

    :cond_34
    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    if-eqz v2, :cond_41

    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/RowHeaderView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v2, :cond_5d

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_54
    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5d
    iget-object v2, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c

    :cond_6c
    iget-object v2, v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_54
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .registers 7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mLayoutResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    :cond_1c
    return-object v1
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;)V
    .registers 7

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    if-eqz v0, :cond_15

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    iget v1, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    iget v2, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mSelectLevel:F

    iget v3, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mUnselectAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_15
    return-void
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .registers 5

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    if-eqz v1, :cond_d

    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mTitleView:Landroid/support/v17/leanback/widget/RowHeaderView;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowHeaderView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mAnimateSelect:Z

    if-eqz v1, :cond_20

    check-cast p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    :cond_20
    return-void
.end method

.method public setNullItemVisibilityGone(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->mNullItemVisibilityGone:Z

    return-void
.end method

.method public final setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V
    .registers 3

    iput p2, p1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;)V

    return-void
.end method
