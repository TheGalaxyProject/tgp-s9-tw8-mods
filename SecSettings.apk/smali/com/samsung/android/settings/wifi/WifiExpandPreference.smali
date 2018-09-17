.class public Lcom/samsung/android/settings/wifi/WifiExpandPreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiExpandPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerArrow:Landroid/widget/ImageView;

.field private mDividerTextView:Landroid/widget/TextView;

.field private mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d03a6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a076f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerTextView:Landroid/widget/TextView;

    const v0, 0x7f0a076e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public setDividerState(Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_46

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mIsOpen:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1221c5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mDividerArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    :goto_31
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1221c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_43
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_31

    :cond_46
    return-void
.end method
