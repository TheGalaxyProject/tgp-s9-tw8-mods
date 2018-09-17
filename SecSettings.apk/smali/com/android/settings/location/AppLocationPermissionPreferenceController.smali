.class public Lcom/android/settings/location/AppLocationPermissionPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AppLocationPermissionPreferenceController.java"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "app_level_permissions"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    :cond_12
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "app_level_permissions"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_settings_link_to_permissions_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
