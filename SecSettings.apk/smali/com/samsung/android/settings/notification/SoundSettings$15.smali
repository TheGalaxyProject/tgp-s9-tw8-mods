.class Lcom/samsung/android/settings/notification/SoundSettings$15;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 15

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "interval_sound_mode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    const-string/jumbo v10, "VibrateWhileRingingOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ea

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_80

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "Disable"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_40

    :cond_80
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_b6

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_40

    :cond_b6
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_ea
    const-string/jumbo v10, "VibrateWhileRingingOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_195

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_12a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "Disable"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_12a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_161

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_161
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_195
    const-string/jumbo v10, "VolumeSetting"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a7

    const-string/jumbo v10, "Volume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d5

    :cond_1a7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "volume_setting"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1c8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c8
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_1d5
    const-string/jumbo v10, "VibrationIntensity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "vibration_feedback_intensity"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1ff

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1ff
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_20c
    const-string/jumbo v10, "Ringtone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24c

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v10

    if-eqz v10, :cond_242

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap7(Lcom/samsung/android/settings/notification/SoundSettings;)V

    :goto_220
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_235

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_235
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_242
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get14(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/DefaultRingtonePreference;->performClick()V

    goto :goto_220

    :cond_24c
    const-string/jumbo v10, "Vibrationpattern"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_280

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_273

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_273
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_280
    const-string/jumbo v10, "NotificationSounds"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c1

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get11(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/DefaultRingtonePreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2b4

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :goto_2a7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_2b4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DefaultNotificationSound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2a7

    :cond_2c1
    const-string/jumbo v10, "DoNotDisturb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get21(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2e8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e8
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_2f5
    const-string/jumbo v10, "TouchSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_375

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_335

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_335
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_368

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_368
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_375
    const-string/jumbo v10, "TouchSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_3b5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_3b5
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_3e8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3e8
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_3f5
    const-string/jumbo v10, "ScreenLockSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_481

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_441

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_434

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_434
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_441
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_474

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_474
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_481
    const-string/jumbo v10, "ScreenLockSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_501

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_4c1

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_4c1
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_4f4

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4f4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_501
    const-string/jumbo v10, "ChargingSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_580

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "charging_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_546

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_546
    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_573

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_573
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_580
    const-string/jumbo v10, "ChargingSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ff

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "charging_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_5c5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_5c5
    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_5f2

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5f2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_5ff
    const-string/jumbo v10, "VibrationFeedbackOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_63f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_63f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_672

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_672
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_67f
    const-string/jumbo v10, "VibrationFeedbackOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6ff

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_6bf

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_6bf
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_6f2

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6f2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_6ff
    const-string/jumbo v10, "DialingKeypadTonesOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_73f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_73f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_772

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_772
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_77f
    const-string/jumbo v10, "DialingKeypadTonesOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7ff

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_7bf

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_7bf
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_7f2

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7f2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_7ff
    const-string/jumbo v10, "KeyboardSoundOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_87f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_83f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_83f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_872

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_872
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_87f
    const-string/jumbo v10, "KeyboardSoundOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8ff

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_8bf

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_8bf
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_8f2

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8f2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_8ff
    const-string/jumbo v10, "KeyboardVibrationOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_987

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_vibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_947

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_947
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_97a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_97a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_987
    const-string/jumbo v10, "KeyboardVibrationOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_vibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_9cf

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_9cf
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_a02

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a02
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_a0f
    const-string/jumbo v10, "SoundQualityAndEffects"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a43

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_a36

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a36
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_a43
    const-string/jumbo v10, "AddRingtone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab4

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10, v12}, Lcom/samsung/android/settings/notification/SoundSettings;->onMusicPickerChosen(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v10, 0x10000

    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "yes"

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a69
    :goto_a69
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a83

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a69

    const-string/jumbo v4, "yes"

    goto :goto_a69

    :cond_a83
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_aa7

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DefaulStorage "

    const-string/jumbo v12, "AlreadySet"

    invoke-virtual {v10, v11, v12, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_aa7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_ab4
    const-string/jumbo v10, "SeparatAppSound"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac6

    const-string/jumbo v10, "SeparateAppSound"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b15

    :cond_ac6
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_ae7

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_ae7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "multi_sound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_b08

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b08
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_b15
    const-string/jumbo v10, "UseVolumeKeysForMediaOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b89

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_b55

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b48
    :goto_b48
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_b55
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_b48

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_b48

    :cond_b89
    const-string/jumbo v10, "UseVolumeKeysForMediaOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_bfd

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_bc9

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_bbc
    :goto_bbc
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_bc9
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_bbc

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_bbc

    :cond_bfd
    const-string/jumbo v10, "SetEmergencyTone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "emergency_tone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_c3c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40

    :cond_c3c
    :try_start_c3c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_c46
    .catch Ljava/lang/NumberFormatException; {:try_start_c3c .. :try_end_c46} :catch_cb0

    move-result v1

    if-eqz v1, :cond_c4c

    const/4 v10, 0x2

    if-ne v10, v1, :cond_cdb

    :cond_c4c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v1, :cond_d07

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SetEmergencyTone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_cb0
    move-exception v0

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_cdb
    if-eq v12, v1, :cond_c4c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_d07
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_d68

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SetEmergencyTone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d68
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_40
.end method
