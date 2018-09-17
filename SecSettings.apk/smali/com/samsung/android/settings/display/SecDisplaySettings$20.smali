.class Lcom/samsung/android/settings/display/SecDisplaySettings$20;
.super Landroid/os/Handler;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const/16 v9, 0x2710

    const/16 v8, 0x64

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_e

    return-void

    :cond_e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_b6a

    :goto_17
    return-void

    :pswitch_18
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getInitFinish()Z

    move-result v6

    if-eqz v6, :cond_b53

    const-string/jumbo v6, "DisplayBrightnessLevel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18d

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-nez v6, :cond_6c

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "valid"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_62
    :goto_62
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_17

    :cond_6c
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    :try_start_7a
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_84} :catch_b3

    move-result v4

    if-ltz v4, :cond_89

    if-le v4, v8, :cond_de

    :cond_89
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "valid"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_b3
    move-exception v1

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "valid"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_de
    div-int/lit8 v6, v0, 0x64

    if-ne v6, v4, :cond_12d

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_12d
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_180

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_180
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_18d
    const-string/jumbo v6, "DisplayBrightnessUp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_223

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    if-ne v0, v6, :cond_1df

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_1df
    add-int/lit16 v0, v0, 0x3e8

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    div-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_216

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_216
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_223
    const-string/jumbo v6, "DisplayBrightnessDown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ab

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_267

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_267
    add-int/lit16 v0, v0, -0x3e8

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    div-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_29e

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29e
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_2ab
    const-string/jumbo v6, "DisplayBrightnessUpByPercentageByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_432

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_2d1

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2fb

    :cond_2d1
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2fb
    :try_start_2fb
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_305
    .catch Ljava/lang/NumberFormatException; {:try_start_2fb .. :try_end_305} :catch_334

    move-result v2

    if-lez v2, :cond_30a

    if-le v2, v8, :cond_38e

    :cond_30a
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_334
    move-exception v1

    const-string/jumbo v6, "SecDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_38e
    mul-int/lit8 v2, v2, 0x64

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    if-ne v0, v6, :cond_3d9

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_3d9
    add-int/2addr v0, v2

    if-le v0, v9, :cond_3de

    const/16 v0, 0x2710

    :cond_3de
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    div-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_425

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    div-int/lit8 v8, v0, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_425
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_432
    const-string/jumbo v6, "DisplayBrightnessDownByPercentageByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5aa

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_458

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_482

    :cond_458
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_482
    :try_start_482
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_48c
    .catch Ljava/lang/NumberFormatException; {:try_start_482 .. :try_end_48c} :catch_4bb

    move-result v2

    if-lez v2, :cond_491

    if-le v2, v8, :cond_515

    :cond_491
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_4bb
    move-exception v1

    const-string/jumbo v6, "SecDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_515
    mul-int/lit8 v2, v2, 0x64

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_552

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_552
    sub-int/2addr v0, v2

    if-gez v0, :cond_556

    const/4 v0, 0x0

    :cond_556
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    div-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_59d

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    div-int/lit8 v8, v0, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_59d
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_5aa
    const-string/jumbo v6, "DisplayBrightnessUpByPercentageByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_731

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_5d0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5fa

    :cond_5d0
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_5fa
    :try_start_5fa
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_604
    .catch Ljava/lang/NumberFormatException; {:try_start_5fa .. :try_end_604} :catch_633

    move-result v2

    if-lez v2, :cond_609

    if-le v2, v8, :cond_68d

    :cond_609
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_633
    move-exception v1

    const-string/jumbo v6, "SecDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_68d
    mul-int/lit8 v2, v2, 0x64

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    if-ne v0, v6, :cond_6d8

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_6d8
    add-int/2addr v0, v2

    if-le v0, v9, :cond_6dd

    const/16 v0, 0x2710

    :cond_6dd
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    div-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_724

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    div-int/lit8 v8, v0, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_724
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_731
    const-string/jumbo v6, "DisplayBrightnessDownByPercentageByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a9

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-eqz v6, :cond_757

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_781

    :cond_757
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_781
    :try_start_781
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_78b
    .catch Ljava/lang/NumberFormatException; {:try_start_781 .. :try_end_78b} :catch_7ba

    move-result v2

    if-lez v2, :cond_790

    if-le v2, v8, :cond_814

    :cond_790
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_7ba
    move-exception v1

    const-string/jumbo v6, "SecDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_814
    mul-int/lit8 v2, v2, 0x64

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_851

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_851
    sub-int/2addr v0, v2

    if-gez v0, :cond_855

    const/4 v0, 0x0

    :cond_855
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    div-int/lit8 v7, v0, 0x64

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_89c

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Level"

    div-int/lit8 v8, v0, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_89c
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_8a9
    const-string/jumbo v6, "DisplayBrightnessMax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93b

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    if-ne v0, v6, :cond_8fb

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_8fb
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_92e

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_92e
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_93b
    const-string/jumbo v6, "DisplayBrightnessMin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9bf

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_97f

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_97f
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBixbyBrightness(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_9b2

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Brightness"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9b2
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_9bf
    const-string/jumbo v6, "DisplayBrightnessAutoOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9d1

    const-string/jumbo v6, "DisplayBrightnessAutoOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    :cond_9d1
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v6

    if-eqz v6, :cond_9e7

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9fc

    :cond_9e7
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_9fc
    const-string/jumbo v6, "DisplayBrightnessAutoOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_acd

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_a80

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a55

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness_mode"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "State"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_a55
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "State"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_a80
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_ab7

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "State"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_ab7
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_acd
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b1c

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_b0f

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "State"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b0f
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_b1c
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_b46

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "State"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Display"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b46
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_62

    :cond_b53
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_17

    :pswitch_data_b6a
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch
.end method
