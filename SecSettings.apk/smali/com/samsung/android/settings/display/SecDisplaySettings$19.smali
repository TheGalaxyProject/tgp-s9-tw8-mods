.class Lcom/samsung/android/settings/display/SecDisplaySettings$19;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v22, "DisplayBrightnessLevel"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessUp"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessDown"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessMax"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessUpByPercentageByPercentage"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessDownByPercentageByPercentage"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessMin"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessAutoOn"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_71

    const-string/jumbo v22, "DisplayBrightnessAutoOff"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_99

    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v22

    const-wide/16 v24, 0x64

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_99
    const-string/jumbo v22, "BlueLightFilter"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "BlueLightFilter"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_e0
    :goto_e0
    return-void

    :cond_e1
    const-string/jumbo v22, "DisplayBlueLightFilterOn"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_10b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v22

    if-nez v22, :cond_16f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "BlueLightFilter"

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "BlueLightFilter"

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_1a6
    const-string/jumbo v22, "DisplayBlueLightFilterOff"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_1d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_234

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "BlueLightFilter"

    const-string/jumbo v24, "AlreadyOFF"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "BlueLightFilter"

    const-string/jumbo v24, "AlreadyOFF"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_26b
    const-string/jumbo v22, "Font"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_281

    const-string/jumbo v22, "ScreenZoomAndFont"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2bf

    :cond_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_2ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Font"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_2bf
    const-string/jumbo v22, "ScreenResolution"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_378

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "low_power"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_31e

    const/4 v8, 0x1

    :goto_2e0
    if-nez v8, :cond_301

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v22

    if-eqz v22, :cond_320

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "sem_perfomance_mode"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_320

    :cond_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_31e
    const/4 v8, 0x0

    goto :goto_2e0

    :cond_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_367

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenResolution"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_378
    const-string/jumbo v22, "ScreenMode"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3c1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_3b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenMode"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_3c1
    const-string/jumbo v22, "EasyMode"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_40a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_3f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "EasyMode"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_40a
    const-string/jumbo v22, "IconFrame"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_433

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get10(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_433
    const-string/jumbo v22, "StatusBar"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_47c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_46b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "StatusBar"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_47c
    const-string/jumbo v22, "ScreenTimeout"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_4b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenTimeout"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_4c5
    const-string/jumbo v22, "ScreenTimeoutApply"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_753

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v22

    if-eqz v22, :cond_5d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5d5

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_5d5

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_5d5

    const-string/jumbo v22, " "

    const-string/jumbo v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v22, ","

    const-string/jumbo v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const/16 v22, 0x68

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v16, 0x0

    const/16 v22, 0x6d

    :try_start_53d
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x6d

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x73

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3c

    mul-long v22, v22, v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_572
    .catch Ljava/lang/Exception; {:try_start_53d .. :try_end_572} :catch_61b

    move-result-wide v24

    add-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    mul-long v16, v22, v24

    const-string/jumbo v22, "SecDisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "timeout : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    :goto_5b4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_5d5

    aget-object v22, v21, v7

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    cmp-long v22, v16, v22

    if-nez v22, :cond_65f

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aget-object v22, v6, v7

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_5d5
    if-nez v14, :cond_663

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenTimeout"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :catch_61b
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenTimeout"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_65f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5b4

    :cond_663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    const-string/jumbo v24, "AlreadySet"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenTimeout"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_6c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->isDialogShowing()Z

    move-result v22

    if-eqz v22, :cond_6f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/TimeoutListPreference;->updateSelectedItem()V

    :cond_6f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_742

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    const-string/jumbo v24, "AlreadySet"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Object"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "ScreenTimeout"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_753
    const-string/jumbo v22, "KeepScreenTurnedOffOn"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_7a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "KeepScreenTurnedOffOn"

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_7a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_7e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "KeepScreenTurnedOffOn"

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_7f9
    const-string/jumbo v22, "KeepScreenTurnedOffOff"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_89f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-nez v22, :cond_84b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "KeepScreenTurnedOffOff"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_84b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_88e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "KeepScreenTurnedOffOff"

    const-string/jumbo v24, "AlreadyOff"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_88e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_89f
    const-string/jumbo v22, "Screensaver"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_8d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_8e7
    const-string/jumbo v22, "LEDIndicatorOn"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_98d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-eqz v22, :cond_939

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "LED"

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_97c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "LED"

    const-string/jumbo v24, "AlreadyON"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_97c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_98d
    const-string/jumbo v22, "LEDIndicatorOff"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v22

    if-nez v22, :cond_9df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "LED"

    const-string/jumbo v24, "AlreadyOFF"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_9df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_a22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "LED"

    const-string/jumbo v24, "AlreadyOFF"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_a33
    const-string/jumbo v22, "EdgeScreen"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    if-eqz v22, :cond_e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_a8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "EdgeScreen"

    const-string/jumbo v24, "Available"

    const-string/jumbo v25, "yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_a9d
    const-string/jumbo v22, "NavigationBar"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_af1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    if-eqz v22, :cond_e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_ae0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_ae0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_af1
    const-string/jumbo v22, "FullScreenApps"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    if-eqz v22, :cond_e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v22

    if-eqz v22, :cond_b34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_b45
    const-string/jumbo v22, "TouchkeyLightDuration"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v22

    if-eqz v22, :cond_ca6

    const/4 v15, 0x0

    :try_start_b61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_b70
    .catch Ljava/lang/NumberFormatException; {:try_start_b61 .. :try_end_b70} :catch_bc1

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get24(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecListPreference;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/preference/SecListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v21

    if-ltz v15, :cond_b8a

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v15, v0, :cond_bf8

    :cond_b8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "TouchkeyLightDuration"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :catch_bc1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "TouchkeyLightDuration"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_bf8
    aget-object v22, v21, v15

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "button_key_light"

    const/16 v24, 0x1770

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    move/from16 v0, v18

    if-ne v12, v0, :cond_c50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "TouchkeyLightDuration"

    const-string/jumbo v24, "AlreadySet"

    const-string/jumbo v25, "Yes"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_c50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "button_key_light"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap14(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "TouchkeyLightDuration"

    const-string/jumbo v24, "AlreadySet"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "Display"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_ca6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "TouchkeyLightDuration"

    const-string/jumbo v24, "Valid"

    const-string/jumbo v25, "No"

    invoke-virtual/range {v22 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    const-string/jumbo v23, "mBixbyCurrentStateId"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0
.end method
