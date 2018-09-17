.class Lcom/android/settings/DeviceInfoSettings$4;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 9

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AboutDevice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const-string/jumbo v4, "AboutStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2c

    :cond_40
    const-string/jumbo v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2c

    :cond_53
    const-string/jumbo v4, "SIMCardStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18c

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->-get4()Z

    move-result v4

    if-eqz v4, :cond_d4

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "status_info_root"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    :goto_6e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$SimStatusActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_168

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-eqz v4, :cond_144

    const/4 v2, -0x1

    :try_start_8d
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v4, "SimCardInfo"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_9c} :catch_e1

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    if-eqz v2, :cond_115

    if-eq v2, v6, :cond_115

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_c9

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SimCardInfo"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SIMCardStatus"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c9
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_d4
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "status_info"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    goto :goto_6e

    :catch_e1
    move-exception v0

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_10b

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SimCardInfo"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SIMCardStatus"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10b
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_115
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_139

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SimCardInfo"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SIMCardStatus"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_139
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_144
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_15d

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Status"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15d
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_168
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_181

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "Status"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_181
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_18c
    const-string/jumbo v4, "IMEIInformation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b0

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->-get4()Z

    move-result v4

    if-eqz v4, :cond_207

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "status_info_root"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    :goto_1a7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$ImeiInformationActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_291

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-eqz v4, :cond_272

    const/4 v2, -0x1

    :try_start_1cb
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1d3
    .catch Ljava/lang/NumberFormatException; {:try_start_1cb .. :try_end_1d3} :catch_214

    move-result v2

    if-eqz v2, :cond_243

    if-eq v2, v6, :cond_243

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_1fc

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SimCardInfo"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IMEIInformation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1fc
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_207
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "status_info"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    goto :goto_1a7

    :catch_214
    move-exception v0

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_239

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SimCardInfo"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IMEIInformation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_239
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_243
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_267

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "SimCardInfo"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IMEIInformation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_267
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_272
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_286

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IMEIInformation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_286
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_291
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2a5

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "IMEIInformation"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2a5
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_2b0
    const-string/jumbo v4, "LegalInformation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e1

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "legal_container"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2d6

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d6
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_2e1
    const-string/jumbo v4, "DeviceName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30f

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_304

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v4}, Lcom/android/settings/DeviceInfoSettings;->-get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_304
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_30f
    const-string/jumbo v4, "DeviceNameChange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33d

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_332

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-static {v4}, Lcom/android/settings/DeviceInfoSettings;->-get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_332
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_33d
    const-string/jumbo v4, "ModelNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36a

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "device_model"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_35f

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35f
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_36a
    const-string/jumbo v4, "SoftwareInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b1

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "software_info"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3a6

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "software_info"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_39b

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_39b
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_3a6
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_3b1
    const-string/jumbo v4, "BatteryInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f8

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "battery_info"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3ed

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "battery_info"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_3e2

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3e2
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_3ed
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_3f8
    const-string/jumbo v4, "MyPhoneNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_425

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "my_phone_number"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_41a

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_41a
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_425
    const-string/jumbo v4, "AboutStatusFocus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusIPAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusWiFiMACAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusBluetoothAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusEthernetMACAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusSerialNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusUptime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusFocusDeviceStatusValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusBatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusBatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "FactoryDataReset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusNetwork"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusSignalStrength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusMobileNetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusServiceState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusRoaming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusMobileNetworkState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusERIversion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusIMEI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusIMEISV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusICCID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4eb

    const-string/jumbo v4, "AboutStatusIMSRegistration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_529

    :cond_4eb
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$StatusActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "fromBixby"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "stateId"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_51e

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "AboutStatus"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_51e
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_529
    const-string/jumbo v4, "IconGlossary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_570

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "icon_glossary"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_565

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "icon_glossary"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_55a

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_55a
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_565
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_570
    const-string/jumbo v4, "AndroidVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59d

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "firmware_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_592

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_592
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_59d
    const-string/jumbo v4, "SamsungExperienceVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ca

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "samsung_experience_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_5bf

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5bf
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_5ca
    const-string/jumbo v4, "AndroidSecurityPatchLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f7

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "security_patch"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_5ec

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5ec
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_5f7
    const-string/jumbo v4, "BasebandVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_624

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "baseband_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_619

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_619
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_624
    const-string/jumbo v4, "KernelVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_651

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "kernel_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_646

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_646
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_651
    const-string/jumbo v4, "BuildNumber"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67e

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "build_number"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_673

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_673
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_67e
    const-string/jumbo v4, "SEforAndroidStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6ab

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "selinux_status"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6a0

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6a0
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_6ab
    const-string/jumbo v4, "SecuritySoftwareVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d8

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "security_sw_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6cd

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6cd
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_6d8
    const-string/jumbo v4, "KnoxVersion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_705

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "knox_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6fa

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6fa
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_705
    const-string/jumbo v4, "ServiceProviderSWver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77b

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.app.omcagent"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74f

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "omc_version"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_744

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "OMCPackage"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_744
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_74f
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_770

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v5, "OMCPackage"

    const-string/jumbo v6, "Available"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_770
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c

    :cond_77b
    const-string/jumbo v4, "CustomerService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "customer_services"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string/jumbo v5, "customer_services"

    invoke-virtual {v4, v5}, Lcom/android/settings/DeviceInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_7a8

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7a8
    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$4;->this$0:Lcom/android/settings/DeviceInfoSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2c
.end method
