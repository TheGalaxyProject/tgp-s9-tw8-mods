.class Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ToggleAccessControlPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->setLayoutResource(I)V

    :goto_18
    return-void

    :cond_19
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->setLayoutResource(I)V

    goto :goto_18
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 10

    const v7, 0x7f0a022f

    const/16 v6, 0x8

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v4, 0x7f0a0527

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    const v4, 0x7f0a0415

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_56

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f080357

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_51
    :goto_51
    return-void

    :cond_52
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    :cond_56
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f08035c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_51

    :cond_75
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;->this$0:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_96

    const v4, 0x7f080358

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8a
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_51

    :cond_96
    const v4, 0x7f080353

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8a
.end method
