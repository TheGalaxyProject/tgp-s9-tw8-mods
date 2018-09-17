.class public Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "NegativeColorPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->changeNegativeColor(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/support/v7/preference/Preference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private changeNegativeColor(Z)V
    .registers 6

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "NEGA"

    const-string/jumbo v3, "Accessibility settings"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->setNegativeColourGreyscale(Landroid/content/Context;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->setNegativeColourGreyscale(Landroid/content/Context;)V

    goto :goto_22
.end method

.method public static needAccFeatureConfirmDialog(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "toggle_negative_color_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "toggle_negative_color"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_11

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NegativeColorsOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "NegativeColorsState"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5b
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_38

    :cond_61
    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_6e
    const-string/jumbo v2, "NegativeColorsOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_92

    const-string/jumbo v2, "NegativeColorsState"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_38

    :cond_92
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string/jumbo v2, "NegativeColorsState"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_aa
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_38
.end method

.method private showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f121273

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f121c57

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d001f

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v4, 0x7f0a028e

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;

    invoke-direct {v5, p0, v0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$4;-><init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/widget/CheckBox;Landroid/support/v7/preference/Preference;)V

    const v6, 0x7f1208ab

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$5;-><init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$6;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$6;-><init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showExclusiveDialog(Landroid/support/v7/preference/Preference;)V
    .registers 13

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v9, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f121273

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d001e

    invoke-virtual {v5, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v7, 0x7f0a0256

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0a0257

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    const v9, 0x7f121c4d

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->getNegativeColorsExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v7, "dialog_content"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f121c4e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)V

    const v9, 0x7f121c4f

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$2;-><init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;

    invoke-direct {v8, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "toggle_negative_color"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "toggle_negative_color"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    if-eqz v2, :cond_23

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V

    return v6

    :cond_23
    if-eqz v2, :cond_3c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->getNegativeColorsExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "is_enabled"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->showExclusiveDialog(Landroid/support/v7/preference/Preference;)V

    :goto_37
    return v6

    :cond_38
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->changeNegativeColor(Z)V

    goto :goto_37

    :cond_3c
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->changeNegativeColor(Z)V

    goto :goto_37

    :cond_40
    return v5
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "high_contrast"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3d

    move v2, v3

    :goto_15
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "powersaving_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_41

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/NegativeColorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blackgrey_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3f

    const/4 v0, 0x1

    :goto_37
    if-eqz v0, :cond_43

    :goto_39
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_3d
    move v2, v4

    goto :goto_15

    :cond_3f
    const/4 v0, 0x0

    goto :goto_37

    :cond_41
    const/4 v0, 0x0

    goto :goto_37

    :cond_43
    move v4, v3

    goto :goto_39
.end method
