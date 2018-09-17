.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;
.super Ljava/lang/Object;
.source "SmartScanSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 9

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SsstSmartScanSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get2(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v0

    const-string/jumbo v4, "IntelligentScanLockSettings"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISSettingMenu"

    const-string/jumbo v6, "AlreadyIn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6d
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_78
    :goto_78
    return-void

    :cond_79
    const-string/jumbo v4, "RegisterIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    if-eqz v0, :cond_ae

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_78

    :cond_ae
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get5(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e1

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "RegisterIntelligentScan"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e1
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_78

    :cond_ed
    const-string/jumbo v4, "RemoveIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_163

    if-nez v0, :cond_123

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "RemoveIntelligentScan"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_123
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get6(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_156

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_156
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_163
    const-string/jumbo v4, "TurnOnIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_271

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1cf

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_1cf
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    if-nez v0, :cond_205

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "EnrolledFaceAndIris"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_205
    if-eqz v2, :cond_20b

    xor-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_20f

    :cond_20b
    if-nez v2, :cond_23a

    if-eqz v1, :cond_23a

    :cond_20f
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IrisUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_23a
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_264

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOn"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_264
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_271
    const-string/jumbo v4, "TurnOffIntelligentScan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2c6

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2b9

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "no"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b9
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_2c6
    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "ISUnlock"

    const-string/jumbo v6, "AlreadyOff"

    const-string/jumbo v7, "yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "IntelligentScanSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78
.end method
