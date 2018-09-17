.class Lcom/android/settings/fingerprint/FingerprintSettings$6;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FpstFingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get6(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get9(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v5, :cond_79

    const/4 v0, 0x1

    :goto_3a
    const-string/jumbo v2, "FingerprintSettings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettingMenu"

    const-string/jumbo v4, "AlreadyIn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6d
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_78
    :goto_78
    return-void

    :cond_79
    const/4 v0, 0x0

    goto :goto_3a

    :cond_7b
    const-string/jumbo v2, "AddFingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v3

    if-lt v2, v3, :cond_ba

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Max"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_78

    :cond_ba
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap6(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get4(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings$6$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$6$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$6;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_f9

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Max"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f9
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_106
    const-string/jumbo v2, "RemoveFingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-nez v2, :cond_142

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_142
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v3, 0x2

    invoke-static {v2, v6, v7, v5, v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintSettings;I[ZZI)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17a

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-ne v2, v5, :cond_187

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "One"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_16e
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17a
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_187
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "One"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16e

    :cond_19a
    const-string/jumbo v2, "RenameFingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22d

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-nez v2, :cond_1d6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_1d6
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2, v6, v7, v5, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintSettings;I[ZZI)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_20d

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-ne v2, v5, :cond_21a

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "One"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_201
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20d
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_21a
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "One"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_201

    :cond_22d
    const-string/jumbo v2, "EditFingerprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-nez v2, :cond_269

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_269
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2, v6, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap5(Lcom/android/settings/fingerprint/FingerprintSettings;I[Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2b6

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-ne v2, v5, :cond_2c3

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "One"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2aa
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b6
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_2c3
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "One"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2aa

    :cond_2d6
    const-string/jumbo v2, "SamsungAccountOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b2

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_303

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_303

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_303
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-nez v2, :cond_33f

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get7(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_33f
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap0(Lcom/android/settings/fingerprint/FingerprintSettings;)Z

    move-result v2

    if-eqz v2, :cond_372

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_372
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get7(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3a5

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccountID"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3a5
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_3b2
    const-string/jumbo v2, "SamsungAccountOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_452

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3df

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3df

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3df
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-wrap0(Lcom/android/settings/fingerprint/FingerprintSettings;)Z

    move-result v2

    if-nez v2, :cond_412

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_412
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get7(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_445

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungAccount"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_445
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_452
    const-string/jumbo v2, "FingerprintUnlockOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_504

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v2

    if-nez v2, :cond_497

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "EnrolledFingerprint"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_497
    if-eqz v0, :cond_4c4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_4c4
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4f7

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintUnlock"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4f7
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_504
    const-string/jumbo v2, "FingerprintUnlockOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    if-nez v0, :cond_53a

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintUnlock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78

    :cond_53a
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_56d

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintUnlock"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FingerprintSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_56d
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_78
.end method
