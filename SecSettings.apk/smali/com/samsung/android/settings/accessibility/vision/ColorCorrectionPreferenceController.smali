.class public Lcom/samsung/android/settings/accessibility/vision/ColorCorrectionPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "ColorCorrectionPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "daltonizer_preference_screen"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/ColorCorrectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_d
    if-nez v0, :cond_12

    return v1

    :cond_10
    move v0, v1

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 5

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/ColorCorrectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f121b7e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_1d
    return-void

    :cond_1e
    const v0, 0x7f121b7d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1d
.end method
