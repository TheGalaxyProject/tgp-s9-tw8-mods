.class Lcom/samsung/android/settings/PrivacySettings$4;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GoogleAccountBackupDataOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_79

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6d
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_78
    :goto_78
    return-void

    :cond_79
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a3
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_78

    :cond_af
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_78

    :cond_bb
    const-string/jumbo v2, "GoogleAccountBackupDataOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_157

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_157

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-wrap7(Lcom/samsung/android/settings/PrivacySettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_113

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_113
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_120
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_14a

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountBackupData"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14a
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_157
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_164
    const-string/jumbo v2, "GoogleAccountAdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1dd

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1dd

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19b

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_19b
    :goto_19b
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_1e9

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e9

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1d0

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountAdd"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_1dd
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_19b

    :cond_1e9
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_1f6
    const-string/jumbo v2, "GoogleAccountAutoRestoreOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f5

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_297

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_297

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_22d

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_22d
    :goto_22d
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_2e8

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2e8

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2b1

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :try_start_256
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_260
    .catch Landroid/os/RemoteException; {:try_start_256 .. :try_end_260} :catch_2a3

    :goto_260
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_28a

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_28a
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_297
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_22d

    :catch_2a3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_260

    :cond_2b1
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2db

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2db
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_2e8
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_2f5
    const-string/jumbo v2, "GoogleAccountAutoRestoreOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_396

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_396

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_32c

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_32c
    :goto_32c
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_3e7

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e7

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3b0

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :try_start_355
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_35f
    .catch Landroid/os/RemoteException; {:try_start_355 .. :try_end_35f} :catch_3a2

    :goto_35f
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_389

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_389
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_396
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_32c

    :catch_3a2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_35f

    :cond_3b0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3da

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "GoogleAccountAutoRestore"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BackupAndReset"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3da
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_3e7
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$4;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78
.end method
