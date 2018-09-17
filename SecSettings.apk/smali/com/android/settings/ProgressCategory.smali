.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d021c

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d021c

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d021c

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    const v0, 0x7f0d021c

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a0737

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    if-ne v2, v5, :cond_3f

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-ne v2, v4, :cond_3f

    const/4 v0, 0x1

    :goto_21
    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v2, :cond_41

    move v2, v3

    :goto_26
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v2, :cond_31

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_44

    :cond_31
    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    const/4 v0, 0x1

    goto :goto_21

    :cond_3f
    const/4 v0, 0x0

    goto :goto_21

    :cond_41
    const/16 v2, 0x8

    goto :goto_26

    :cond_44
    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-nez v2, :cond_6b

    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    const v4, 0x7f0d0204

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget v4, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    :cond_6b
    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3c
.end method

.method public setEmptyTextRes(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method
