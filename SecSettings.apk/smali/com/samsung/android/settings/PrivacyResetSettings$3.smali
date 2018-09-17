.class Lcom/samsung/android/settings/PrivacyResetSettings$3;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 10

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ResetSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_39
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_44

    :cond_51
    const-string/jumbo v5, "ResetNetworkSettings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    const-string/jumbo v6, "network_reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Landroid/support/v7/preference/SecRestrictedPreference;->performClick()V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7f

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7f
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_44

    :cond_8b
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_44

    :cond_97
    const-string/jumbo v5, "FactoryDataReset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e0

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v5

    if-eqz v5, :cond_d3

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/SecRestrictedPreference;->performClick()V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_c6

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c6
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_d3
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_e0
    const-string/jumbo v5, "AutoRestartON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f2

    const-string/jumbo v5, "AutoRestartOFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_220

    :cond_f2
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_106

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_213

    :cond_106
    const-string/jumbo v5, "AutoRestartON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_191

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get5(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_166

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get6(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get5(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_159

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_159
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_166
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_191
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get5(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1e8

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get6(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get5(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1db

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOFF"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1db
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_1e8
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "AutoRestart"

    const-string/jumbo v7, "AlreadyOFF"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Reset"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_213
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_220
    const-string/jumbo v5, "AutoRestart"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_289

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap1()Z

    move-result v5

    if-eqz v5, :cond_23d

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_27c

    :cond_23d
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_245
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_24a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_245 .. :try_end_24a} :catch_26c

    :goto_24a
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_25f

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25f
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :catch_26c
    move-exception v0

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_24a

    :cond_27c
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_289
    const-string/jumbo v5, "AutoPowerOnOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    const-string/jumbo v6, "pref_auto_power_on_off"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_2c4

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2b7

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b7
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44

    :cond_2c4
    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings$3;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_44
.end method
