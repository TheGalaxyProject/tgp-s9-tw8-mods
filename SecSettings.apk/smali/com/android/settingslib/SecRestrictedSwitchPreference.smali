.class public Lcom/android/settingslib/SecRestrictedSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SecRestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget v4, Lcom/android/settingslib/R$style;->SecRestrictedSwitchPreference:I

    invoke-direct {p0, p1, p2, v5, v4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v5, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    iput-object v6, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    new-instance v4, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_4f

    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_65

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_63

    const/4 v4, 0x1

    :goto_2d
    iput-boolean v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    :cond_2f
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_47

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_47

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_67

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_47
    :goto_47
    if-nez v1, :cond_6a

    move-object v4, v6

    :goto_4a
    iput-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4f
    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_5b

    sget v4, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_5b
    iget-boolean v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_62

    invoke-virtual {p0, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_62
    return-void

    :cond_63
    move v4, v5

    goto :goto_2d

    :cond_65
    move v4, v5

    goto :goto_2d

    :cond_67
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_47

    :cond_6a
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4a
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    sget v4, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4d

    move v4, v5

    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    if-eqz v3, :cond_30

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4f

    move v4, v6

    :goto_2d
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    iget-boolean v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_55

    sget v4, Lcom/android/settingslib/R$id;->additional_summary:I

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    move v4, v6

    goto :goto_21

    :cond_4f
    move v4, v5

    goto :goto_2d

    :cond_51
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4c

    :cond_55
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4c

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4c
.end method

.method public performClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_b
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->notifyChanged()V

    :cond_b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_f
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
