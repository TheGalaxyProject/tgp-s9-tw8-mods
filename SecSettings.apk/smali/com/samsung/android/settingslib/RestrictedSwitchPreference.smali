.class public Lcom/samsung/android/settingslib/RestrictedSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v5, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    iput-object v6, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    new-instance v4, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_4f

    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_32

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6a

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_68

    const/4 v4, 0x1

    :goto_30
    iput-boolean v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    :cond_32
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_4a

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4a

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_6c

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4a
    :goto_4a
    if-nez v1, :cond_6f

    move-object v4, v6

    :goto_4d
    iput-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_4f
    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_5b

    sget v4, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_5b
    iget-boolean v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_67

    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setLayoutResource(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_67
    return-void

    :cond_68
    move v4, v5

    goto :goto_30

    :cond_6a
    move v4, v5

    goto :goto_30

    :cond_6c
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_4a

    :cond_6f
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4d
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    sget v4, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_48

    move v4, v5

    :goto_1c
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    if-eqz v3, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4a

    move v4, v6

    :goto_28
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    iget-boolean v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_50

    sget v4, Lcom/android/settingslib/R$id;->additional_summary:I

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    move v4, v6

    goto :goto_1c

    :cond_4a
    move v4, v5

    goto :goto_28

    :cond_4c
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47

    :cond_50
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47
.end method

.method public onClick()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    :cond_b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_f
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
