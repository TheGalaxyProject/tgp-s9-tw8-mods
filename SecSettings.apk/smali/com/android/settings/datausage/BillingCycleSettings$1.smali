.class Lcom/android/settings/datausage/BillingCycleSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 16

    const/4 v14, 0x1

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SetBillingCycle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    const-string/jumbo v10, "StartBillingCycle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    :cond_1e
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v10

    if-eqz v10, :cond_32

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_5c

    :cond_32
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycleApply"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5b
    :goto_5b
    return-void

    :cond_5c
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_7a

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7a
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5b

    :cond_86
    const-string/jumbo v10, "SetDataWarning"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b0

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_a4

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a4
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5b

    :cond_b0
    const-string/jumbo v10, "DataLimitOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_130

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_f0

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataLimit"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_f0
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_123

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataLimit"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_123
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_130
    const-string/jumbo v10, "DataLimitOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b0

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_170

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataLimit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_170
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1a3

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataLimit"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a3
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_1b0
    const-string/jumbo v10, "SetDataLimit"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f0

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1ce

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_1ce
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1e3

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1e3
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_1f0
    const-string/jumbo v10, "SetDataWarningApply"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_202

    const-string/jumbo v10, "SetDataLimitApply"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c5

    :cond_202
    const-string/jumbo v10, "SetDataWarningApply"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a4

    const-string/jumbo v6, "SetDataWarning"

    const-string/jumbo v5, "SetDataWarningApply"

    :goto_211
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_3a0

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    :try_start_221
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v10

    int-to-long v2, v10

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_237
    .catch Ljava/lang/NumberFormatException; {:try_start_221 .. :try_end_237} :catch_2ac

    move-result v1

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_37c

    const-wide/16 v10, 0x400

    cmp-long v10, v2, v10

    if-gez v10, :cond_37c

    if-eqz v1, :cond_248

    if-ne v1, v14, :cond_37c

    :cond_248
    if-nez v1, :cond_315

    const-string/jumbo v10, "%d MB"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide/32 v10, 0x100000

    mul-long/2addr v2, v10

    :goto_25d
    long-to-float v10, v2

    const/high16 v11, 0x53800000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_269

    const-wide v2, 0x10000000000L

    :cond_269
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_32a

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v10, v5, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "databyte"

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_2a4
    const-string/jumbo v6, "SetDataLimit"

    const-string/jumbo v5, "SetDataLimitApply"

    goto/16 :goto_211

    :catch_2ac
    move-exception v4

    const-string/jumbo v10, "BillingCycleSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v12}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v12}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v10, v5, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_315
    const-string/jumbo v10, "%d GB"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-wide/32 v10, 0x40000000

    mul-long/2addr v2, v10

    goto/16 :goto_25d

    :cond_32a
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_35a

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v10, v5, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "databyte"

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35a
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string/jumbo v10, "SetDataWarningApply"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_375

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10, v2, v3, v13}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap3(Lcom/android/settings/datausage/BillingCycleSettings;JZ)V

    goto/16 :goto_5b

    :cond_375
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10, v2, v3, v14}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap3(Lcom/android/settings/datausage/BillingCycleSettings;JZ)V

    goto/16 :goto_5b

    :cond_37c
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v10, v5, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3a0
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Valid"

    const-string/jumbo v12, "no"

    invoke-virtual {v10, v5, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_3c5
    const-string/jumbo v10, "StartBillingCycleApply"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_502

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-lez v10, :cond_4d7

    const/4 v7, -0x1

    :try_start_3db
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_3e5
    .catch Ljava/lang/NumberFormatException; {:try_start_3db .. :try_end_3e5} :catch_42f

    move-result v7

    :goto_3e6
    if-lez v7, :cond_4ac

    const/16 v10, 0x1f

    if-gt v7, v10, :cond_4ac

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleSettings;)I

    move-result v10

    if-ne v10, v7, :cond_460

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycleApply"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "cycle"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :catch_42f
    move-exception v4

    const-string/jumbo v10, "BillingCycleSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v12}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e6

    :cond_460
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_49a

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycleApply"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "cycle"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_49a
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10, v7}, Lcom/android/settings/datausage/BillingCycleSettings;->-wrap2(Lcom/android/settings/datausage/BillingCycleSettings;I)V

    goto/16 :goto_5b

    :cond_4ac
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycleApply"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_4d7
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycleApply"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "StartBillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_502
    const-string/jumbo v10, "DataWarningOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_514

    const-string/jumbo v10, "DataWarningOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5b

    :cond_514
    const-string/jumbo v10, "DataWarningOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_557

    const/4 v0, 0x1

    :goto_51e
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_593

    if-eqz v0, :cond_559

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarning"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_557
    const/4 v0, 0x0

    goto :goto_51e

    :cond_559
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/datausage/BillingCycleSettings;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarning"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_593
    if-eqz v0, :cond_5cf

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    iget-object v11, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v11}, Lcom/android/settings/datausage/BillingCycleSettings;->-get3(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/settings/datausage/BillingCycleSettings;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarning"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b

    :cond_5cf
    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DataWarning"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BillingCycle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datausage/BillingCycleSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-static {v10}, Lcom/android/settings/datausage/BillingCycleSettings;->-get1(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5b
.end method
