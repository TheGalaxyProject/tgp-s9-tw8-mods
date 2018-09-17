.class Lcom/samsung/android/settings/iris/IrisSettings$3;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "IrisSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "IrisLockSettings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_57
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    const-string/jumbo v2, "RemoveIrisData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get6(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a7
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_62

    :cond_b3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_62

    :cond_dd
    const-string/jumbo v2, "PreviewScreenMask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_12e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get4(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_121

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_121
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_12e
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_159
    const-string/jumbo v2, "RegisterIris"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_195

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_195
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get7(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1c8

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c8
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_1d5
    const-string/jumbo v2, "SamsungAccountOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b5

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_202

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_202

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_202
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-nez v2, :cond_23e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_23e
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_275

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_275
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2a8

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccountID"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2a8
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_2b5
    const-string/jumbo v2, "SamsungAccountOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_359

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e2

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e2

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2e2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_32e

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_321

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_321
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_32e
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_359
    const-string/jumbo v2, "IrisUnlockOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_458

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get5(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b5

    const/4 v0, 0x1

    :goto_376
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v2

    if-eqz v2, :cond_424

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3b7

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_3b5
    const/4 v0, 0x0

    goto :goto_376

    :cond_3b7
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    if-eqz v0, :cond_3ed

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FaceUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_3ed
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_417

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_417
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_424
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledIris"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_458
    const-string/jumbo v2, "IrisUnlockOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d8

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4ad

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4a0

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4a0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_4ad
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_4d8
    const-string/jumbo v2, "TurnOnUseIrisWhenScreenOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58f

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_518

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_518
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_54f

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_54f
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_582

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_582
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_58f
    const-string/jumbo v2, "TurnOffUseIrisWhenScreenOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60f

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5e4

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5d7

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5d7
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_5e4
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisUnlockWhenScreenTurnsOn"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_60f
    const-string/jumbo v2, "TipsForUsingIrisRecognition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_658

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get10(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_64b

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_64b
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_658
    const-string/jumbo v2, "Disclaimer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap7(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_690

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "IrisSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_690
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$3;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62
.end method
