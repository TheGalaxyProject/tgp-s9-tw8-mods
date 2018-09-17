.class Lcom/samsung/android/settings/ConnectionsSettings$5;
.super Ljava/lang/Object;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get8(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_52
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_27

    :cond_5e
    const-string/jumbo v1, "BluetoothSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_85
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_27

    :cond_91
    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_b0
    const-string/jumbo v1, "DataUsage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "data_usage_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_da
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_e7
    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "wireless_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_129

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "wireless_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_11c

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11c
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_129
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_135
    const-string/jumbo v1, "NfcSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get6(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_15c

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15c
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_169
    const-string/jumbo v1, "MobileHotspotAndTethering"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecRestrictedPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_190

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_190
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_19d
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1c4

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_1d1
    const-string/jumbo v1, "AdvancedCalling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "vzw_provision_volte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_213

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "vzw_provision_volte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_206

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_206
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_27

    :cond_213
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
