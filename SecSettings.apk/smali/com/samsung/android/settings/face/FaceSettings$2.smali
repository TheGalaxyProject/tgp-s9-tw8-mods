.class Lcom/samsung/android/settings/face/FaceSettings$2;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FcstFaceSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v7

    if-eqz v7, :cond_cb

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    :goto_38
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v8

    const/16 v9, 0x100

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-ne v7, v11, :cond_ce

    const/4 v1, 0x1

    :goto_4d
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v8

    const/16 v9, 0x1000

    invoke-virtual {v7, v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-ne v7, v11, :cond_d1

    const/4 v2, 0x1

    :goto_62
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "face_without_swipe_to_unlock"

    iget-object v9, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v9

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_d3

    const/4 v5, 0x1

    :goto_7c
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v4

    const-string/jumbo v7, "FaceLockSettings"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d5

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_bf

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettingMenu"

    const-string/jumbo v9, "AlreadyIn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_bf
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_ca
    :goto_ca
    return-void

    :cond_cb
    const/4 v0, 0x0

    goto/16 :goto_38

    :cond_ce
    const/4 v1, 0x0

    goto/16 :goto_4d

    :cond_d1
    const/4 v2, 0x0

    goto :goto_62

    :cond_d3
    const/4 v5, 0x0

    goto :goto_7c

    :cond_d5
    const-string/jumbo v7, "RegisterFace"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_148

    if-eqz v0, :cond_10a

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "EnrolledFace"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_ca

    :cond_10a
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const-string/jumbo v8, "FaceSettings_register"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap1(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_13c

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "EnrolledFace"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_13c
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_ca

    :cond_148
    const-string/jumbo v7, "RemoveFace"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1df

    if-nez v0, :cond_17e

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "EnrolledFace"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_17e
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0211

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_1d2

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "EnrolledFace"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d2
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_1df
    const-string/jumbo v7, "TurnOnFace"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2fb

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-nez v0, :cond_234

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "EnrolledFace"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_234
    if-eqz v1, :cond_261

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlock"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_261
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    if-eqz v3, :cond_297

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "IrisUnlock"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_297
    if-eqz v2, :cond_2c4

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "IrisUnlock"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_2c4
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_2ee

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlock"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2ee
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_2fb
    const-string/jumbo v7, "TurnOffFace"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_371

    if-nez v1, :cond_331

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlock"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_331
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_364

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlock"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_364
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_371
    const-string/jumbo v7, "TurnOnUseFaceWhenScreenOn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_441

    if-nez v0, :cond_3a7

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlock"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_3a7
    if-nez v1, :cond_3d4

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlock"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_3d4
    if-eqz v5, :cond_401

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_401
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_434

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_434
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_441
    const-string/jumbo v7, "TurnOffUseFaceWhenScreenOn"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4bb

    if-eqz v1, :cond_450

    xor-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_47b

    :cond_450
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_47b
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_4ae

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4ae
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_4bb
    const-string/jumbo v7, "TurnOnFasterRecognition"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55e

    if-nez v0, :cond_4f1

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "EnrolledFace"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_4f1
    if-eqz v4, :cond_51e

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TurnOnFasterRecognition"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_51e
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_551

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TurnOnFasterRecognition"

    const-string/jumbo v9, "AlreadyOn"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_551
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_55e
    const-string/jumbo v7, "TurnOffFasterRecognition"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    if-nez v4, :cond_594

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TurnOffFasterRecognition"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca

    :cond_594
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_5c7

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "TurnOffFasterRecognition"

    const-string/jumbo v9, "AlreadyOff"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "FaceSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5c7
    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ca
.end method
