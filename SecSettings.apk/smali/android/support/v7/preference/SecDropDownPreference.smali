.class public Landroid/support/v7/preference/SecDropDownPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "SecDropDownPreference.java"


# instance fields
.field private mIsSummaryColorPrimaryDark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040099

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/SecDropDownPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Landroid/support/v7/preference/SecDropDownPreference;->mIsSummaryColorPrimaryDark:Z

    if-eqz v2, :cond_20

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorPrimaryDark(Landroid/widget/TextView;)V

    :goto_1f
    return-void

    :cond_20
    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorSecondary(Landroid/widget/TextView;)V

    goto :goto_1f
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/preference/SecDropDownPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SecDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/support/v7/preference/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method
