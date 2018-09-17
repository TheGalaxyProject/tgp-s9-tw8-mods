.class public Lcom/android/settings/display/WallpaperPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WallpaperPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private disablePreferenceIfManaged(Lcom/android/settingslib/RestrictedPreference;)V
    .registers 6

    const/4 v1, 0x0

    const-string/jumbo v0, "no_set_wallpaper"

    if-eqz p1, :cond_1c

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v1, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "no_set_wallpaper"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const-string/jumbo v1, "no_set_wallpaper"

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_1c
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "wallpaper"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 2

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/WallpaperPreferenceController;->disablePreferenceIfManaged(Lcom/android/settingslib/RestrictedPreference;)V

    return-void
.end method
