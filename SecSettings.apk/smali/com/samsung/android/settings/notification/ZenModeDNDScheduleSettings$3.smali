.class Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;
.super Ljava/lang/Object;
.source "ZenModeDNDScheduleSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "DoNotDisturbScheduledOn"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOn"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOn"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5c

    :cond_b0
    const-string/jumbo v21, "DoNotDisturbScheduledOff"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v21

    if-nez v21, :cond_100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOff"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_143

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOff"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_154
    const-string/jumbo v21, "DoNotdisturbSchedule"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "HH:MM"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v19, 0x0

    const/4 v8, 0x0

    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v15, v0, [I

    const/4 v9, 0x0

    :goto_1b3
    :try_start_1b3
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_1c5

    aget-object v21, v14, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    aput v21, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b3

    :cond_1c5
    const/4 v11, 0x1

    if-eqz v17, :cond_1f3

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    const-string/jumbo v21, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1f3

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    :cond_1f3
    if-eqz v6, :cond_21c

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_21c

    const/16 v21, 0x1

    aget-object v21, v7, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/Date;->setMinutes(I)V
    :try_end_21c
    .catch Ljava/text/ParseException; {:try_start_1b3 .. :try_end_21c} :catch_244
    .catch Ljava/lang/NumberFormatException; {:try_start_1b3 .. :try_end_21c} :catch_23f

    :cond_21c
    :goto_21c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/4 v9, 0x0

    :goto_22b
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_255

    if-eqz v3, :cond_23b

    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v9, :cond_249

    :cond_23b
    const/4 v10, 0x0

    :cond_23c
    :goto_23c
    add-int/lit8 v9, v9, 0x1

    goto :goto_22b

    :catch_23f
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_21c

    :catch_244
    move-exception v5

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_21c

    :cond_249
    aget v21, v15, v9

    aget v22, v3, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_23c

    const/4 v10, 0x0

    goto :goto_23c

    :cond_255
    if-nez v11, :cond_28e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "Days"

    const-string/jumbo v23, "Exist"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_28e
    if-eqz v19, :cond_292

    if-nez v8, :cond_2d4

    :cond_292
    const-string/jumbo v12, "EndTime"

    if-nez v19, :cond_29a

    const-string/jumbo v12, "StartTime"

    :cond_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_2d4
    if-eqz v10, :cond_407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    move/from16 v21, v0

    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    move/from16 v21, v0

    invoke-virtual {v8}, Ljava/util/Date;->getMinutes()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "SameDonotDisturb"

    const-string/jumbo v23, "AlreadySet"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "Days"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "StartTime"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "EndTime"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v21

    if-nez v21, :cond_424

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    :cond_424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v15, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMinutes()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    invoke-virtual {v8}, Ljava/util/Date;->getHours()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    invoke-virtual {v8}, Ljava/util/Date;->getMinutes()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_56a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "SameDonotDisturb"

    const-string/jumbo v23, "AlreadySet"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "Days"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "StartTime"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "EndTime"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_56a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c
.end method
