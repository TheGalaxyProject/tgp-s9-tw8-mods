.class public Lcom/android/settings/SecSettingsSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SecSettingsSwitchPreference.java"


# instance fields
.field private mIsEnableSwitch:Z

.field private mIsSummaryColorPrimaryDark:Z

.field private mSwitchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x7f0401ce

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsEnableSwitch:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsSummaryColorPrimaryDark:Z

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SecSettingsSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101030e

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v6, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    const v6, 0x1020040

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mSwitchView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mSwitchView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4e

    instance-of v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4e

    iget-object v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mSwitchView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mSwitchView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setClickable(Z)V

    :cond_4e
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsSummaryColorPrimaryDark:Z

    if-eqz v6, :cond_96

    invoke-static {v4}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorPrimaryDark(Landroid/widget/TextView;)V

    :goto_6a
    iget-object v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mSwitchView:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsEnableSwitch:Z

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mSwitchView:Landroid/view/View;

    iget-boolean v7, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsEnableSwitch:Z

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PreferenceImageView;

    const v6, 0x7f0a03f8

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/PreferenceImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_9a

    if-eqz v1, :cond_95

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_95
    :goto_95
    return-void

    :cond_96
    invoke-static {v4}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorSecondary(Landroid/widget/TextView;)V

    goto :goto_6a

    :cond_9a
    if-eqz v1, :cond_95

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_95
.end method

.method protected onClick()V
    .registers 2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    :cond_9
    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method

.method public setEnableSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/SecSettingsSwitchPreference;->mIsEnableSwitch:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnableSwitch(Z)V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method
