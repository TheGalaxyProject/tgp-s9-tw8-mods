.class public Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "MonoAudioPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static getDbUri()Landroid/net/Uri;
    .registers 1

    const-string/jumbo v0, "mono_audio_db"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static needAccFeatureConfirmDialog(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "mono_audio_key_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f1211c4

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

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;Landroid/widget/CheckBox;)V

    const v6, 0x7f1208ab

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$2;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$3;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public executeBixbyAction(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "MonoAudioOn"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v1, "MonoAudio"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Hearing"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_30
    return-void

    :cond_31
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "DoNotShowAgainChecked"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    const-string/jumbo v1, "Hearing"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_56
    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_30

    :cond_5c
    const-string/jumbo v1, "DoNotShowAgainChecked"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_69
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_87

    const-string/jumbo v1, "MonoAudioState"

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "yes"

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Hearing"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_30

    :cond_87
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string/jumbo v1, "MonoAudioState"

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "no"

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Hearing"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a2
    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_30
.end method

.method public getBixbyStateId()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "MonoAudioOn"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "MonoAudioOff"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "mono_audio_key"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V

    return v3

    :cond_1e
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mono_audio_db"

    if-eqz v1, :cond_61

    move v2, v3

    :goto_2a
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "mono"

    if-eqz v1, :cond_63

    move v2, v3

    :goto_33
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v1, :cond_50

    const/16 v4, 0x3e8

    :cond_50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v2, "MonoAudioPrefController"

    const-string/jumbo v4, "Mono Audio broadcast"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_61
    move v2, v4

    goto :goto_2a

    :cond_63
    move v2, v4

    goto :goto_33
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MonoAudioPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mono_audio_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
