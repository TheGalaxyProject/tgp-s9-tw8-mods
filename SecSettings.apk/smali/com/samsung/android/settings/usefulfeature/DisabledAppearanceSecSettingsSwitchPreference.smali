.class public Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;
.super Lcom/android/settings/SecSettingsSwitchPreference;
.source "DisabledAppearanceSecSettingsSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mEnabledAppearance:Z

.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mMsg:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected enableView(Landroid/view/View;Z)V
    .registers 6

    if-eqz p2, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_7
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_26

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->enableView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    const v2, 0x3f2b851f    # 0.67f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    :cond_26
    return-void
.end method

.method public inEnabledAppearance()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    :goto_b
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->enableView(Landroid/view/View;Z)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onClick()V
    .registers 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    if-eqz v0, :cond_8

    invoke-super {p0}, Lcom/android/settings/SecSettingsSwitchPreference;->onClick()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7
.end method

.method public setEnabledAppearance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mEnabledAppearance:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnableSwitch(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->mMsg:Ljava/lang/String;

    return-void
.end method
