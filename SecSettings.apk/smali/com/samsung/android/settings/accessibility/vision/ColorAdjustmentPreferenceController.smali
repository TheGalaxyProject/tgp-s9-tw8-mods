.class public Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "ColorAdjustmentPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    const-string/jumbo v2, "color_adjustment_preference_screen"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    :cond_15
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1a
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "color_adjustment_preference_screen"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorAdjustment(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "color_blind"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_96

    const/4 v2, 0x1

    :goto_12
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "greyscale_mode"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_99

    const/4 v4, 0x1

    :goto_22
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "color_adjustment_type"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "color_blind_test"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9b

    const/4 v6, 0x1

    :goto_3f
    if-nez v2, :cond_9d

    move v0, v4

    :goto_42
    if-eqz v0, :cond_a1

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f030050

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move-object v7, p1

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const/4 v7, -0x1

    if-ne v1, v7, :cond_6b

    if-eqz v2, :cond_9f

    if-eqz v6, :cond_9f

    const/4 v1, 0x4

    :goto_5f
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "color_adjustment_type"

    invoke-static {v7, v10, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6b
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_70
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "powersaving_switch"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_b0

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/ColorAdjustmentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "blackgrey_powersaving_mode"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_ae

    const/4 v5, 0x1

    :goto_8f
    if-eqz v5, :cond_b2

    move v7, v8

    :goto_92
    invoke-virtual {p1, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_96
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_99
    const/4 v4, 0x0

    goto :goto_22

    :cond_9b
    const/4 v6, 0x0

    goto :goto_3f

    :cond_9d
    const/4 v0, 0x1

    goto :goto_42

    :cond_9f
    const/4 v1, 0x0

    goto :goto_5f

    :cond_a1
    move-object v7, p1

    check-cast v7, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v7, 0x7f1205fa

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_70

    :cond_ae
    const/4 v5, 0x0

    goto :goto_8f

    :cond_b0
    const/4 v5, 0x0

    goto :goto_8f

    :cond_b2
    move v7, v9

    goto :goto_92
.end method
