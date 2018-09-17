.class public Lcom/android/settings/SummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "SummaryPreference.java"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mChartEnabled:Z

.field private mColorsSet:Z

.field private mEndLabel:Ljava/lang/String;

.field private mLeft:I

.field private mLeftRatio:F

.field private mMiddle:I

.field private mMiddleRatio:F

.field private mRight:I

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;

.field private mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mColorsSet:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    const v0, 0x7f0d02a6

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 9

    const v6, 0x7f0a0471

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0194

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    if-eqz v1, :cond_6b

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/LinearColorBar;->setVisibility(I)V

    iget v1, p0, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    iget v2, p0, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    iget v3, p0, Lcom/android/settings/SummaryPreference;->mRightRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    iget-boolean v1, p0, Lcom/android/settings/SummaryPreference;->mColorsSet:Z

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/settings/SummaryPreference;->mLeft:I

    iget v2, p0, Lcom/android/settings/SummaryPreference;->mMiddle:I

    iget v3, p0, Lcom/android/settings/SummaryPreference;->mRight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    :cond_31
    :goto_31
    iget-boolean v1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6f

    :cond_47
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6a
    return-void

    :cond_6b
    invoke-virtual {v0, v5}, Lcom/android/settings/applications/LinearColorBar;->setVisibility(I)V

    goto :goto_31

    :cond_6f
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6a
.end method

.method public setAmount(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121825

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_29
    return-void
.end method

.method public setChartEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/settings/SummaryPreference;->mChartEnabled:Z

    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setColors(III)V
    .registers 5

    iput p1, p0, Lcom/android/settings/SummaryPreference;->mLeft:I

    iput p2, p0, Lcom/android/settings/SummaryPreference;->mMiddle:I

    iput p3, p0, Lcom/android/settings/SummaryPreference;->mRight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SummaryPreference;->mColorsSet:Z

    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mStartLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setRatios(FFF)V
    .registers 4

    iput p1, p0, Lcom/android/settings/SummaryPreference;->mLeftRatio:F

    iput p2, p0, Lcom/android/settings/SummaryPreference;->mMiddleRatio:F

    iput p3, p0, Lcom/android/settings/SummaryPreference;->mRightRatio:F

    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/settings/SummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121825

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/SummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_29
    return-void
.end method
