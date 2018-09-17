.class Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;
.super Ljava/lang/Object;
.source "DirectionLockSplashActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 12

    const v10, 0x7f120859

    const v9, 0x7f120858

    const v7, 0x7f120854

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DirectionLockOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_58
    :goto_58
    return-void

    :cond_59
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_58

    :cond_83
    const-string/jumbo v4, "DirectionLockOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_58

    :cond_c7
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58

    :cond_f2
    const-string/jumbo v4, "DirectionLockSettingsOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_324

    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-nez v4, :cond_13f

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockState"

    const-string/jumbo v6, "State"

    const-string/jumbo v7, "off"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_13f
    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-lez v4, :cond_15b

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    :cond_15b
    const/4 v0, 0x1

    const-string/jumbo v4, "DirectionLockSplashActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DirectionLockSettingsOn : param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "Vibration feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d6

    :cond_17f
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_263

    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : Vibration feedback isChecked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_195
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_19f
    :goto_19f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ab

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_296

    :cond_1ab
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "Valid"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58

    :cond_1d6
    const-string/jumbo v4, "Vibration Feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string/jumbo v4, "Sound feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_200

    :cond_1e8
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_277

    const/4 v0, 0x0

    :goto_1f5
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19f

    :cond_200
    const-string/jumbo v4, "Sound Feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e8

    const-string/jumbo v4, "Show directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22b

    :cond_212
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_282

    const/4 v0, 0x0

    :goto_21f
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_19f

    :cond_22b
    const-string/jumbo v4, "Show Directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_212

    const-string/jumbo v4, "Read out drawn directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_259

    :goto_23d
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_28c

    const/4 v0, 0x0

    :goto_24a
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f12085a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_19f

    :cond_259
    const-string/jumbo v4, "Read out drawn Directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19f

    goto :goto_23d

    :cond_263
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : Vibration feedback not isChecked"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto/16 :goto_195

    :cond_277
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto/16 :goto_1f5

    :cond_282
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto :goto_21f

    :cond_28c
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto :goto_24a

    :cond_296
    if-eqz v0, :cond_2e4

    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn : isNLGSuccess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2d7

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettingsSettings"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d7
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58

    :cond_2e4
    const-string/jumbo v4, "DirectionLockSplashActivity"

    const-string/jumbo v5, "DirectionLockSettingsOn isNLGSuccess not "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettingsSettings"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58

    :cond_324
    const-string/jumbo v4, "DirectionLockSettingsOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-nez v4, :cond_33e

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get0()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_33e
    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v4

    if-lez v4, :cond_35a

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    :cond_35a
    const/4 v0, 0x1

    const-string/jumbo v4, "Vibration feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b2

    :cond_364
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_43f

    const/4 v0, 0x0

    :goto_371
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_37b
    :goto_37b
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_387

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_469

    :cond_387
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "Valid"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58

    :cond_3b2
    const-string/jumbo v4, "Vibration Feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_364

    const-string/jumbo v4, "Sound feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3dc

    :cond_3c4
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_44a

    const/4 v0, 0x0

    :goto_3d1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_37b

    :cond_3dc
    const-string/jumbo v4, "Sound Feedback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c4

    const-string/jumbo v4, "Show directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_407

    :cond_3ee
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_455

    const/4 v0, 0x0

    :goto_3fb
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_37b

    :cond_407
    const-string/jumbo v4, "Show Directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3ee

    const-string/jumbo v4, "Read out drawn directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_435

    :goto_419
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_45f

    const/4 v0, 0x0

    :goto_426
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f12085a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_37b

    :cond_435
    const-string/jumbo v4, "Read out drawn Directions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37b

    goto :goto_419

    :cond_43f
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto/16 :goto_371

    :cond_44a
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto/16 :goto_3d1

    :cond_455
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto :goto_3fb

    :cond_45f
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    goto :goto_426

    :cond_469
    if-eqz v0, :cond_4ae

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_4a1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettingsSettings"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4a1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58

    :cond_4ae
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettings"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLockSettingsSettings"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "DirectionLock"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get2(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_58
.end method
