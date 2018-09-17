.class public Lcom/android/settings/widget/RadioButtonPreference;
.super Landroid/support/v7/preference/SecCheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mIconVisibility:Z

.field private mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x7f040156

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/SecCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mIconVisibility:Z

    const v0, 0x7f0d0238

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 6

    const v2, 0x7f0a03f8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecCheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-boolean v1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mIconVisibility:Z

    if-eqz v1, :cond_25

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_12
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_24
    return-void

    :cond_25
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method public onClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    :cond_9
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecCheckBoxPreference;->setIcon(I)V

    return-void
.end method

.method public setIconVisibility(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mIconVisibility:Z

    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecCheckBoxPreference;->setLayoutResource(I)V

    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreference;->mListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    return-void
.end method
