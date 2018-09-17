.class public Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "MuteAllSoundsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMuteAllSoundsPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mMuteAllSoundsPref:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->supportAnsweringMachine()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showConfirmDialog(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static getDbUri()Landroid/net/Uri;
    .registers 1

    const-string/jumbo v0, "all_sound_off"

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

    const-string/jumbo v1, "all_sound_off_key_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f120143

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

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;Landroid/widget/CheckBox;)V

    const v6, 0x7f1208ab

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$2;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$3;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showConfirmDialog(I)V
    .registers 7

    const/4 v4, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_1d

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4d

    :cond_1d
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c4b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_2d
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120608

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$7;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4d
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121c4a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2d
.end method

.method private showDialog()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120143

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const v6, 0x7f121c55

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const v6, 0x7f120145

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$4;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V

    const v5, 0x7f120149

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$5;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController$6;-><init>(Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private supportAnsweringMachine()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mMuteAllSoundsPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mMuteAllSoundsPref:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120148

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mMuteAllSoundsPref:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120147

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_25
.end method

.method public executeBixbyAction(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "TurnOffAllSoundsOn"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v1, "MuteAllSounds"

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

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

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

    const-string/jumbo v1, "TurnOffAllSoundsState"

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

    const-string/jumbo v1, "TurnOffAllSoundsState"

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

    const-string/jumbo v1, "TurnOffAllSoundsOn"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TurnOffAllSoundsOff"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "all_sound_off_key"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1f

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V

    return v7

    :cond_1f
    if-eqz v2, :cond_8c

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showDialog()V

    return v3

    :cond_2d
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "all_sound_off"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "mute"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->supportAnsweringMachine()Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->showConfirmDialog(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_61
    :goto_61
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v2, :cond_7b

    const/16 v3, 0x3e8

    :cond_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v3, "MuteAllSoundsController"

    const-string/jumbo v4, "All sound off broadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_8c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sound_detector"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_aa

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "doorbell_detector"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_bd

    :cond_aa
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f121c4c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v3

    :cond_bd
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "all_sound_off"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "mute"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_61
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    const v3, 0x7f120148

    const v2, 0x7f120147

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    return-void

    :cond_3d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto :goto_39
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/MuteAllSoundsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "all_sound_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
