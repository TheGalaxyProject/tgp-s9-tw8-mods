.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;
.super Ljava/lang/Object;
.source "LanguageAndInputSettingsSamsung.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 16

    const/4 v14, -0x7

    const/4 v13, 0x7

    const/16 v12, 0x64

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "Language"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get6(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_36

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_36
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const-string/jumbo v9, "DefaultKeyboard"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    const-string/jumbo v10, "input_method"

    invoke-static {v9, v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v11}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_71

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "DefaultKeyboard"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_71
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_41

    :cond_7d
    const-string/jumbo v9, "ChangeLanguage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "current_input_method"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_41

    :cond_a4
    const-string/jumbo v9, "VirtualKeyboard"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "virtual_keyboard_settings"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_d7

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "VirtualKeyboard"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d7
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_e4
    const-string/jumbo v9, "PhysicalKeyboard"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_124

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "physical_keyboard_settings"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_117

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PhysicalKeyboard"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_117
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_124
    const-string/jumbo v9, "TextToSpeech"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_166

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "tts_settings"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_159

    invoke-virtual {v8}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_159

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_159
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_166
    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string/jumbo v9, "PointerSpeed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27a

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_24f

    :try_start_17d
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_224

    if-gt v3, v12, :cond_224

    div-int/lit8 v9, v3, 0x7

    add-int/lit8 v5, v9, -0x7

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1ec
    .catch Ljava/lang/NumberFormatException; {:try_start_17d .. :try_end_1ec} :catch_1ee

    goto/16 :goto_41

    :catch_1ee
    move-exception v1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "failed to get param for bixby. "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_224
    :try_start_224
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_24d
    .catch Ljava/lang/NumberFormatException; {:try_start_224 .. :try_end_24d} :catch_1ee

    goto/16 :goto_41

    :cond_24f
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_27a
    const-string/jumbo v9, "PointerSpeedUpByPercentage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3aa

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_37f

    :try_start_28f
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_354

    if-gt v3, v12, :cond_354

    div-int/lit8 v5, v3, 0x7

    add-int/2addr v6, v5

    if-le v6, v13, :cond_2b4

    const/4 v6, 0x7

    :cond_2b4
    add-int/lit8 v9, v6, 0x7

    mul-int/lit8 v9, v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v6, v13, :cond_2c4

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2c4
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v6, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeechSet"

    invoke-virtual {v9, v10, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_31c
    .catch Ljava/lang/NumberFormatException; {:try_start_28f .. :try_end_31c} :catch_31e

    goto/16 :goto_41

    :catch_31e
    move-exception v1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "failed to get param for bixby. "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_354
    :try_start_354
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_37d
    .catch Ljava/lang/NumberFormatException; {:try_start_354 .. :try_end_37d} :catch_31e

    goto/16 :goto_41

    :cond_37f
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_3aa
    const-string/jumbo v9, "PointerSpeedDownByPercentage"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d2

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-lez v9, :cond_4a7

    :try_start_3bf
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v3

    if-ltz v3, :cond_47c

    if-gt v3, v12, :cond_47c

    div-int/lit8 v5, v3, 0x7

    sub-int/2addr v6, v5

    if-ge v6, v14, :cond_3e4

    const/4 v6, -0x7

    :cond_3e4
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v6, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeechSet"

    add-int/lit8 v11, v6, 0x7

    mul-int/lit8 v11, v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_444
    .catch Ljava/lang/NumberFormatException; {:try_start_3bf .. :try_end_444} :catch_446

    goto/16 :goto_41

    :catch_446
    move-exception v1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "failed to get param for bixby. "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_47c
    :try_start_47c
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_4a5
    .catch Ljava/lang/NumberFormatException; {:try_start_47c .. :try_end_4a5} :catch_446

    goto/16 :goto_41

    :cond_4a7
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "TextToSpeech"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_4d2
    const-string/jumbo v9, "PointerSpeedUp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e4

    const-string/jumbo v9, "PointerSpeedMax"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_573

    :cond_4e4
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v13, :cond_521

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_521
    const-string/jumbo v9, "PointerSpeedUp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_571

    add-int/lit8 v5, v5, 0x1

    :goto_52c
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMax"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_571
    const/4 v5, 0x7

    goto :goto_52c

    :cond_573
    const-string/jumbo v9, "PointerSpeedDown"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_585

    const-string/jumbo v9, "PointerSpeedMin"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    :cond_585
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v5

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    if-ne v5, v14, :cond_5cd

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_5cd
    const-string/jumbo v9, "PointerSpeedDown"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61d

    add-int/lit8 v5, v5, -0x1

    :goto_5d8
    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v10}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;

    move-result-object v9

    add-int/lit8 v10, v5, 0x7

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "PointerSpeed"

    const-string/jumbo v11, "AlreadyMin"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LanguageAndInput"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v9}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_41

    :cond_61d
    const/4 v5, -0x7

    goto :goto_5d8
.end method
