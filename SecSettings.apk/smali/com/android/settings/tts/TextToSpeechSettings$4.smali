.class Lcom/android/settings/tts/TextToSpeechSettings$4;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 11

    const/16 v9, 0x64

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const-string/jumbo v6, "TextToSpeechSet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f4

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_c9

    :try_start_22
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_6b

    if-gt v2, v9, :cond_6b

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_94} :catch_95

    goto :goto_6a

    :catch_95
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_6a

    :cond_c9
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_f4
    const-string/jumbo v6, "TextToSpeechUpByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20d

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_1e2

    :try_start_109
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_1b7

    if-gt v2, v9, :cond_1b7

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_180
    .catch Ljava/lang/NumberFormatException; {:try_start_109 .. :try_end_180} :catch_182

    goto/16 :goto_6a

    :catch_182
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_1b7
    :try_start_1b7
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1e0
    .catch Ljava/lang/NumberFormatException; {:try_start_1b7 .. :try_end_1e0} :catch_182

    goto/16 :goto_6a

    :cond_1e2
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_20d
    const-string/jumbo v6, "TextToSpeechDownByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_326

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_2fb

    :try_start_222
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_2d0

    if-gt v2, v9, :cond_2d0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_299
    .catch Ljava/lang/NumberFormatException; {:try_start_222 .. :try_end_299} :catch_29b

    goto/16 :goto_6a

    :catch_29b
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_2d0
    :try_start_2d0
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2f9
    .catch Ljava/lang/NumberFormatException; {:try_start_2d0 .. :try_end_2f9} :catch_29b

    goto/16 :goto_6a

    :cond_2fb
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_326
    const-string/jumbo v6, "TextToSpeechUp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_338

    const-string/jumbo v6, "TextToSpeechMax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3aa

    :cond_338
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0x258

    if-ne v6, v7, :cond_36d

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SpeechRate"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_36d
    const-string/jumbo v6, "TextToSpeechUp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a7

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, 0x14

    :goto_37e
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap7(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_3a7
    const/16 v4, 0x258

    goto :goto_37e

    :cond_3aa
    const-string/jumbo v6, "TextToSpeechDown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3bc

    const-string/jumbo v6, "TextToSpeechMin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42e

    :cond_3bc
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3f1

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SpeechRate"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_3f1
    const-string/jumbo v6, "TextToSpeechDown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42b

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, -0x14

    :goto_402
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap7(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_42b
    const/16 v4, 0xa

    goto :goto_402

    :cond_42e
    const-string/jumbo v6, "IncreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_440

    const-string/jumbo v6, "MaximizePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4af

    :cond_440
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0x190

    if-ne v6, v7, :cond_472

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "AlreadyMax"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_472
    const-string/jumbo v6, "IncreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4ac

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, 0x14

    :goto_483
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap6(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_4ac
    const/16 v4, 0x190

    goto :goto_483

    :cond_4af
    const-string/jumbo v6, "MinimizePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4c1

    const-string/jumbo v6, "DecreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_530

    :cond_4c1
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0x19

    if-ne v6, v7, :cond_4f3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "AlreadyMin"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_4f3
    const-string/jumbo v6, "DecreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52d

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, -0x14

    :goto_504
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap6(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_52d
    const/16 v4, 0x19

    goto :goto_504

    :cond_530
    const-string/jumbo v6, "SetPitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_648

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_61d

    :try_start_545
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_5f2

    if-gt v2, v9, :cond_5f2

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_5bb
    .catch Ljava/lang/NumberFormatException; {:try_start_545 .. :try_end_5bb} :catch_5bd

    goto/16 :goto_6a

    :catch_5bd
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_5f2
    :try_start_5f2
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_61b
    .catch Ljava/lang/NumberFormatException; {:try_start_5f2 .. :try_end_61b} :catch_5bd

    goto/16 :goto_6a

    :cond_61d
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_648
    const-string/jumbo v6, "IncreasePitchByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_761

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_736

    :try_start_65d
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_70b

    if-gt v2, v9, :cond_70b

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_6d4
    .catch Ljava/lang/NumberFormatException; {:try_start_65d .. :try_end_6d4} :catch_6d6

    goto/16 :goto_6a

    :catch_6d6
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_70b
    :try_start_70b
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_734
    .catch Ljava/lang/NumberFormatException; {:try_start_70b .. :try_end_734} :catch_6d6

    goto/16 :goto_6a

    :cond_736
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_761
    const-string/jumbo v6, "DecreasePitchByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_84f

    :try_start_776
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_824

    if-gt v2, v9, :cond_824

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_7ed
    .catch Ljava/lang/NumberFormatException; {:try_start_776 .. :try_end_7ed} :catch_7ef

    goto/16 :goto_6a

    :catch_7ef
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_824
    :try_start_824
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_84d
    .catch Ljava/lang/NumberFormatException; {:try_start_824 .. :try_end_84d} :catch_7ef

    goto/16 :goto_6a

    :cond_84f
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_87a
    const-string/jumbo v6, "ResetSpeechRate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b1

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_89b

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ResetSpeechRate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_89b
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_6a

    :cond_8b1
    const-string/jumbo v6, "ResetPitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e8

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_8d2

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ResetPitch"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8d2
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_6a

    :cond_8e8
    const-string/jumbo v6, "ListenToAnExample"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_962

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get7(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_93a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_924

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_924
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get7(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_6a

    :cond_93a
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "No"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6a

    :cond_962
    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_983

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PreferredEngine"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_983
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    goto/16 :goto_6a
.end method
