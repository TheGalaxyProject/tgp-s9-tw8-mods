.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;
.super Landroid/os/Handler;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private doAction(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 26

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v16

    if-eqz v16, :cond_7bb

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getInitFinish()Z

    move-result v18

    if-eqz v18, :cond_7bb

    const-string/jumbo v18, "Level"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_86

    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_36} :catch_29b

    move-result v14

    if-ltz v14, :cond_3f

    const/16 v18, 0x64

    move/from16 v0, v18

    if-le v14, v0, :cond_2e3

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_86
    const-string/jumbo v18, "UpByPercentage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v18

    if-nez v18, :cond_38b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Exist"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_d8
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_e9
    return-void

    :cond_ea
    const-string/jumbo v18, "DownByPercentage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v18

    if-nez v18, :cond_4a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Exist"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_d8

    :cond_13d
    const-string/jumbo v18, "Up"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19a

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_d8

    :cond_19a
    const-string/jumbo v18, "Down"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1eb

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    if-nez v18, :cond_5ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_d8

    :cond_1eb
    const-string/jumbo v18, "Max"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24a

    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_689

    const/4 v7, 0x1

    const/16 v17, 0x0

    :goto_203
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_633

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_247

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v11, :cond_247

    const/4 v7, 0x0

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    :cond_247
    add-int/lit8 v17, v17, 0x1

    goto :goto_203

    :cond_24a
    const-string/jumbo v18, "Min"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d8

    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_743

    const/4 v8, 0x1

    const/16 v17, 0x0

    :goto_262
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6ed

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_298

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;I)Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    if-eqz v18, :cond_298

    const/4 v8, 0x0

    invoke-virtual {v15}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    :cond_298
    add-int/lit8 v17, v17, 0x1

    goto :goto_262

    :catch_29b
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_2e3
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    mul-int v18, v18, v14

    div-int/lit8 v12, v18, 0x64

    if-nez v12, :cond_2fa

    const/4 v12, 0x1

    :cond_2fa
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v12, :cond_363

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_d8

    :cond_363
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31c

    :cond_38b
    :try_start_38b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_39a
    .catch Ljava/lang/NumberFormatException; {:try_start_38b .. :try_end_39a} :catch_3ca

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    const/16 v10, 0x64

    mul-int v18, v9, v14

    div-int/lit8 v13, v18, 0x64

    add-int/2addr v13, v9

    if-lez v14, :cond_3b2

    const/16 v18, 0x64

    move/from16 v0, v18

    if-le v14, v0, :cond_401

    :cond_3b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :catch_3ca
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_401
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    move/from16 v0, v18

    if-ne v9, v0, :cond_428

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_428
    if-ne v9, v13, :cond_442

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_442
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v18

    move/from16 v0, v18

    if-le v13, v0, :cond_456

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    :cond_456
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_4a5
    :try_start_4a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_4b4
    .catch Ljava/lang/NumberFormatException; {:try_start_4a5 .. :try_end_4b4} :catch_4e5

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    const/16 v10, 0x64

    mul-int v18, v9, v14

    div-int/lit8 v13, v18, 0x64

    sub-int v13, v9, v13

    if-lez v14, :cond_4cd

    const/16 v18, 0x64

    move/from16 v0, v18

    if-le v14, v0, :cond_51c

    :cond_4cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11d

    :catch_4e5
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "Valid"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_51c
    if-nez v9, :cond_539

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11d

    :cond_539
    if-gez v13, :cond_53c

    const/4 v13, 0x0

    :cond_53c
    if-ne v9, v13, :cond_556

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11d

    :cond_556
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    const-string/jumbo v20, "AlreadySet"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Level"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11d

    :cond_5a5
    new-instance v5, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x16

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v6, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x16

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_179

    :cond_5ec
    new-instance v5, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v6, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ca

    :cond_633
    if-eqz v7, :cond_66f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_64e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_d8

    :cond_66f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64e

    :cond_689
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/SeekBar;->getMax()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64e

    :cond_6b9
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getMax()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMax"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64e

    :cond_6ed
    if-eqz v8, :cond_729

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    const-string/jumbo v19, "Vibrationintensity"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_d8

    :cond_729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_708

    :cond_743
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getProgress()I

    move-result v18

    if-nez v18, :cond_794

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "yes"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_766
    const-string/jumbo v18, "VibrationIntensity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, p2

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " newValue is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SeekBar;->getProgress()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_708

    :cond_794
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settings/notification/VibrationSeekBarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/widget/SeekBar;->setProgressInternal(IZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v18

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1()[Ljava/lang/String;

    move-result-object v19

    aget-object v19, v19, p2

    const-string/jumbo v20, "AlreadyMin"

    const-string/jumbo v21, "no"

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_766

    :cond_7bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v18

    const-wide/16 v20, 0x64

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_e9
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_11

    iget v2, p1, Landroid/os/Message;->what:I

    if-ltz v2, :cond_11

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_12

    :cond_11
    return-void

    :cond_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4b

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get0()[Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get4(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_4b
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_62

    :cond_50
    :goto_50
    return-void

    :pswitch_51
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v1, v3}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-wrap2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$8;->doAction(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_50

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method
