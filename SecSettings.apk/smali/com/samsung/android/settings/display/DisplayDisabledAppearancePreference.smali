.class public Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
.super Landroid/support/v7/preference/SecPreference;
.source "DisplayDisabledAppearancePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field protected mIsEnabled:Z

.field private mMsg:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    :goto_b
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onClick()V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_f
    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onClick()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method public setEnabledAppearance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->mMsg:Ljava/lang/String;

    return-void
.end method
