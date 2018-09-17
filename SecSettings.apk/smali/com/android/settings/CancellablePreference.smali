.class public Lcom/android/settings/CancellablePreference;
.super Landroid/support/v7/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CancellablePreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancellable:Z

.field private mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/android/settings/CancellablePreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a014c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_18
    const/4 v1, 0x4

    goto :goto_11
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    invoke-interface {v0, p0}, Lcom/android/settings/CancellablePreference$OnCancelListener;->onCancel(Lcom/android/settings/CancellablePreference;)V

    :cond_9
    return-void
.end method

.method public setCancellable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    invoke-virtual {p0}, Lcom/android/settings/CancellablePreference;->notifyChanged()V

    return-void
.end method

.method public setOnCancelListener(Lcom/android/settings/CancellablePreference$OnCancelListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    return-void
.end method
