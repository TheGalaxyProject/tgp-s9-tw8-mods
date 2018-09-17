.class public Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;
.super Lcom/android/settings/SecSettingsSwitchPreference;
.source "DisplayDisabledAppearanceSwitchPreference.java"


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

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    :goto_b
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    if-nez v1, :cond_1c

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    if-nez v1, :cond_2d

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    :cond_2d
    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onClick()V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_f
    invoke-super {p0}, Lcom/android/settings/SecSettingsSwitchPreference;->onClick()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method public setEnabledAppearance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnableSwitch(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->mMsg:Ljava/lang/String;

    return-void
.end method
