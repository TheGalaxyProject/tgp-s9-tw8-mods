.class Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;
.super Ljava/lang/Object;
.source "WifiApQrCode.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiApQrCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GenerateOneQRCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->generateQrCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_57
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QR code"

    const-string/jumbo v3, "exist"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QRCodeGenerator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_86
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_91
    :goto_91
    return-void

    :cond_92
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ef

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QR code"

    const-string/jumbo v3, "exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QRCodeGenerator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_91

    :cond_ef
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_119

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QR code"

    const-string/jumbo v3, "exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QRCodeGenerator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_119
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_91

    :cond_126
    const-string/jumbo v1, "QRCodeShare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Z

    move-result v1

    if-eqz v1, :cond_178

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->deleteQrCode()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->startShareQrCode()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QR code"

    const-string/jumbo v3, "exist"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QRCodeShare"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_91

    :cond_178
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QR code"

    const-string/jumbo v3, "exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "QRCodeGenerator"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_91
.end method
