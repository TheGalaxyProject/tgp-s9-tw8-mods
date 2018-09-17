.class public Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "DarkScreenPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;ZLandroid/support/v7/preference/Preference;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->checkSOSMessages(ZLandroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private checkSOSMessages(ZLandroid/support/v7/preference/Preference;)V
    .registers 9

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "send_emergency_message"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->showSOSMessagesDialog(Landroid/support/v7/preference/Preference;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_11

    :cond_1b
    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "DARK"

    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_49

    const/16 v1, 0x3e8

    :goto_2e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x12e

    const/16 v5, 0x135d

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "lcd_curtain"

    if-eqz p1, :cond_45

    const/4 v2, 0x1

    :cond_45
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_18

    :cond_49
    move v1, v2

    goto :goto_2e
.end method

.method public static onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "toggle_dark_screen"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_38

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DarkScreenOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "DarkScreen"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "VoiceAssistantState"

    const-string/jumbo v3, "State"

    const-string/jumbo v4, "Off"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_57
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "DarkScreen"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6f
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_37

    :cond_75
    const-string/jumbo v2, "DarkScreenOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_99

    const-string/jumbo v2, "DarkScreen"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_37

    :cond_99
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b1

    const-string/jumbo v2, "DarkScreen"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b1
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_37
.end method

.method private showQuickLaunchDialog(Landroid/support/v7/preference/Preference;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120f81

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1215a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1205a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f121c55

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;Landroid/support/v7/preference/Preference;)V

    const v7, 0x7f120149

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$2;-><init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$3;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSOSMessagesDialog(Landroid/support/v7/preference/Preference;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12189b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$4;-><init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;)V

    const v2, 0x7f120608

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController$5;-><init>(Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "toggle_dark_screen"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.app.talkback"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "toggle_dark_screen"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_tab_launch"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_2b

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2b

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->showQuickLaunchDialog(Landroid/support/v7/preference/Preference;)V

    :goto_29
    const/4 v2, 0x1

    return v2

    :cond_2b
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->checkSOSMessages(ZLandroid/support/v7/preference/Preference;)V

    goto :goto_29

    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "lcd_curtain"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_34

    move v1, v2

    :goto_15
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/DarkScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_36

    :cond_30
    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_33
    return-void

    :cond_34
    move v1, v3

    goto :goto_15

    :cond_36
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_33
.end method
