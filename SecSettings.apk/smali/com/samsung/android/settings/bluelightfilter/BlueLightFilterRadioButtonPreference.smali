.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "BlueLightFilterRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    const v0, 0x7f0d021d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setLayoutResource(I)V

    const v0, 0x7f0d0238

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V

    :cond_9
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->mListener:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;

    return-void
.end method
