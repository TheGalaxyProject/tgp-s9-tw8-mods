.class Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;
.super Ljava/lang/Object;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "blue_light_filter_opacity"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v20, "BlueLightFilterControl"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_93

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_93
    :try_start_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_a2} :catch_e1

    move-result v5

    if-ltz v5, :cond_ab

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v5, v0, :cond_118

    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_e0
    :goto_e0
    return-void

    :catch_e1
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_118
    div-int/lit8 v4, v5, 0xa

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "opacity_currentValue"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v13, :cond_183

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_1ed
    const-string/jumbo v20, "BlueLightFilterControlUp"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_213

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_213
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "opacity_currentValue"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v13, v0, :cond_26c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_26c
    add-int/lit8 v13, v13, 0x1

    if-ltz v13, :cond_276

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v13, v0, :cond_286

    :cond_276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_2cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_2dc
    const-string/jumbo v20, "BlueLightFilterControlDown"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_302

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_302
    if-nez v13, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_33b
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_345

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v13, v0, :cond_355

    :cond_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_39a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_39a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_3ab
    const-string/jumbo v20, "BlueLightFilterControlMax"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_464

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_3d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_3d1
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v13, v0, :cond_40e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_40e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_453

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_464
    const-string/jumbo v20, "BlueLightFilterControlMin"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_519

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_48a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_48a
    if-nez v13, :cond_4c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_4c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_508

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_519
    const-string/jumbo v20, "BlueLightFilterControlUpByPercentage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_52b

    const-string/jumbo v20, "BlueLightFilterControlDownByPercentage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_79b

    :cond_52b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_548

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v20

    if-eqz v20, :cond_56e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5a4

    :cond_56e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_5a4
    :try_start_5a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_5b3
    .catch Ljava/lang/NumberFormatException; {:try_start_5a4 .. :try_end_5b3} :catch_5f2

    move-result v6

    if-lez v6, :cond_5bc

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v6, v0, :cond_629

    :cond_5bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_5f2
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_629
    rem-int/lit8 v20, v6, 0xa

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_67b

    div-int/lit8 v6, v6, 0xa

    :goto_635
    const-string/jumbo v20, "BlueLightFilterControlUpByPercentage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6f3

    const/16 v20, 0xa

    move/from16 v0, v20

    if-lt v13, v0, :cond_680

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_67b
    div-int/lit8 v20, v6, 0xa

    add-int/lit8 v6, v20, 0x1

    goto :goto_635

    :cond_680
    add-int/2addr v6, v13

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v6, v0, :cond_689

    const/16 v6, 0xa

    :cond_689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_6e2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_6f3
    if-gtz v13, :cond_72c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_72c
    sub-int v6, v13, v6

    if-gez v6, :cond_731

    const/4 v6, 0x0

    :cond_731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_78a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_78a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_79b
    const-string/jumbo v20, "BlueLightFilterScheduleSunsetToSunrise"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_85c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_7c1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_7c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_808

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Schedule"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_84b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Schedule"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_84b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_85c
    const-string/jumbo v20, "BlueLightFilterScheduleCustom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_86e

    const-string/jumbo v20, "BlueLightFilterControlAndScheduleCustom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e0

    :cond_86e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_88b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_88b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_8a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    :cond_8a8
    const/4 v12, 0x0

    const/4 v11, -0x1

    const-string/jumbo v20, "BlueLightFilterControlAndScheduleCustom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_902

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_902

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_902

    :try_start_8cc
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_8d8

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v11, v0, :cond_8d9

    :cond_8d8
    const/4 v11, -0x1

    :cond_8d9
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mEmSettingsManager opacityLevel : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_902
    .catch Ljava/lang/NumberFormatException; {:try_start_8cc .. :try_end_902} :catch_9d3

    :cond_902
    :goto_902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "SetStartTime"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "SetEndTime"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick()V

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "HH:mm"

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v18, 0x0

    const/4 v10, 0x0

    if-eqz v17, :cond_96e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_96e

    :try_start_94c
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "start time calendar.getTime() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_96d
    .catch Ljava/text/ParseException; {:try_start_94c .. :try_end_96d} :catch_a02

    move-result-object v18

    :cond_96e
    :goto_96e
    if-eqz v9, :cond_998

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_998

    :try_start_976
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "end time calendar.getTime() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_997
    .catch Ljava/text/ParseException; {:try_start_976 .. :try_end_997} :catch_a08

    move-result-object v10

    :cond_998
    :goto_998
    if-eqz v18, :cond_99c

    if-nez v10, :cond_a0d

    :cond_99c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Schedule"

    const-string/jumbo v22, "Exist"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :catch_9d3
    move-exception v7

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mEmSettingsManager NumberFormatException : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    goto/16 :goto_902

    :catch_a02
    move-exception v8

    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_96e

    :catch_a08
    move-exception v8

    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_998

    :cond_a0d
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "start time is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " , "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "end time is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " , "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v21

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_b11

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "set opacity : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int/lit8 v22, v11, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v11, v11, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    :cond_b11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_c01

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v20

    const/16 v22, 0xc

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_c12

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v20

    add-int/lit8 v20, v20, -0xc

    :goto_b38
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v20

    const/16 v22, 0xa

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_c18

    const-string/jumbo v20, "0"

    :goto_b56
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v20

    const/16 v22, 0xc

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_c1d

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v20

    add-int/lit8 v20, v20, -0xc

    :goto_b81
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v20

    const/16 v22, 0xa

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_c23

    const-string/jumbo v20, "0"

    :goto_b9f
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "EndTime"

    const-string/jumbo v22, "Exist"

    const-string/jumbo v23, "yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "StartTime"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "EndTime"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c01
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_e0

    :cond_c12
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v20

    goto/16 :goto_b38

    :cond_c18
    const-string/jumbo v20, ""

    goto/16 :goto_b56

    :cond_c1d
    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v20

    goto/16 :goto_b81

    :cond_c23
    const-string/jumbo v20, ""

    goto/16 :goto_b9f
.end method
