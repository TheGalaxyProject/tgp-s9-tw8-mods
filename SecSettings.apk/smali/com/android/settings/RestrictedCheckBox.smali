.class public Lcom/android/settings/RestrictedCheckBox;
.super Landroid/widget/CheckBox;
.source "RestrictedCheckBox.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/RestrictedCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/RestrictedCheckBox;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 6

    if-eqz p1, :cond_29

    const/4 v0, 0x1

    :goto_3
    iput-object p1, p0, Lcom/android/settings/RestrictedCheckBox;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-boolean v1, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eq v1, v0, :cond_28

    iput-boolean v0, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    iget-object v1, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    invoke-static {v1, p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iget-boolean v1, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/RestrictedCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    const v3, 0x7f0600e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const/4 v0, 0x0

    goto :goto_3

    :cond_2b
    invoke-virtual {p0}, Lcom/android/settings/RestrictedCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_28
.end method