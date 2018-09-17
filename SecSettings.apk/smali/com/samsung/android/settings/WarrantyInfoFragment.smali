.class public Lcom/samsung/android/settings/WarrantyInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WarrantyInfoFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150134

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 5

    const-string/jumbo v1, "general_terms"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_20

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_20
    const-string/jumbo v1, "warranty_exceptions"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_3c

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Option"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_3c
    const-string/jumbo v1, "product_warranty"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne p1, v1, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Option"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b
.end method
