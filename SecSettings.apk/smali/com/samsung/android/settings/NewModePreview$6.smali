.class Lcom/samsung/android/settings/NewModePreview$6;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "ColorBalanceWarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceCool"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceStepApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceIncrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceDecrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceRedApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceGreenApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string/jumbo v2, "ColorBalanceBlueApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b4

    const/4 v14, 0x1

    :goto_85
    const/4 v2, 0x1

    if-ne v8, v2, :cond_8a

    if-eqz v14, :cond_b6

    :cond_8a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "AdaptiveDisplay"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_b4
    const/4 v14, 0x0

    goto :goto_85

    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v2

    if-nez v2, :cond_c7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-wrap0(Lcom/samsung/android/settings/NewModePreview;)V

    :cond_c7
    const-string/jumbo v2, "ScreenModeApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_253

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_100

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "Adaptivedisplay"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12d

    const/4 v5, 0x0

    :cond_100
    :goto_100
    const/4 v2, -0x1

    if-ne v5, v2, :cond_154

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_12c
    :goto_12c
    return-void

    :cond_12d
    const-string/jumbo v2, "AMOLEDcinema"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13a

    const/4 v5, 0x1

    goto :goto_100

    :cond_13a
    const-string/jumbo v2, "AMOLEDphoto"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_147

    const/4 v5, 0x2

    goto :goto_100

    :cond_147
    const-string/jumbo v2, "Basic"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_100

    const/4 v5, 0x3

    goto :goto_100

    :cond_154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-ne v5, v2, :cond_19e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_12c

    :cond_19e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1f1

    const/4 v14, 0x1

    :goto_1b1
    if-eqz v14, :cond_1f3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-wrap1(Lcom/samsung/android/settings/NewModePreview;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BluelightFilter"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_1f1
    const/4 v14, 0x0

    goto :goto_1b1

    :cond_1f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BluelightFilter"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_253
    const-string/jumbo v2, "ColorBalance"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v2, 0x1

    if-eq v8, v2, :cond_286

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_2db

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2b7

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2b7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_2db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_2f1
    const-string/jumbo v2, "ColorBalanceWarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_312

    const-string/jumbo v2, "ColorBalanceCool"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_312

    const-string/jumbo v2, "ColorBalanceStepApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_682

    :cond_312
    const/4 v10, -0x1

    const/16 v16, 0x0

    const-string/jumbo v2, "ColorBalanceStepApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_33d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_367

    :cond_33d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_367
    :try_start_367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_38a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamBoolean(I)Z
    :try_end_389
    .catch Ljava/lang/NumberFormatException; {:try_start_367 .. :try_end_389} :catch_3bb

    move-result v16

    :cond_38a
    if-nez v16, :cond_418

    if-ltz v10, :cond_391

    const/4 v2, 0x4

    if-le v10, v2, :cond_418

    :cond_391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_3bb
    move-exception v13

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v4, v4, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_418
    if-eqz v16, :cond_420

    if-ltz v10, :cond_391

    const/16 v2, 0x64

    if-gt v10, v2, :cond_391

    :cond_420
    if-eqz v16, :cond_42b

    rem-int/lit8 v2, v10, 0x5

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4d4

    mul-int/lit8 v2, v10, 0x5

    div-int/lit8 v10, v2, 0x64

    :cond_42b
    :goto_42b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_45c

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_45c

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_45c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_45c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    if-eqz v2, :cond_66c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    rsub-int/lit8 v18, v17, 0x4

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current preset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ColorBalanceWarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_535

    const/4 v2, 0x4

    move/from16 v0, v18

    if-lt v0, v2, :cond_4dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceWarm"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_4d4
    mul-int/lit8 v2, v10, 0x5

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v10, v2, 0x1

    goto/16 :goto_42b

    :cond_4dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    add-int/lit8 v3, v18, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    add-int/lit8 v4, v17, -0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_528

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceWarm"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_535
    const-string/jumbo v2, "ColorBalanceCool"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    if-gtz v18, :cond_56d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceCool"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_56d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    add-int/lit8 v3, v18, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    add-int/lit8 v4, v17, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5b9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceCool"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_5c6
    move/from16 v0, v18

    if-ne v10, v0, :cond_605

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    rsub-int/lit8 v4, v10, 0x4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_65f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_65f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_66c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_682
    const-string/jumbo v2, "ColorBalanceIncrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_698

    const-string/jumbo v2, "ColorBalanceDecrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8ef

    :cond_698
    const/4 v15, 0x1

    const-string/jumbo v2, "ColorBalanceDecrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a5

    const/4 v15, 0x0

    :cond_6a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_6c2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6ec

    :cond_6c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_6ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "Red"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_740

    const-string/jumbo v2, "Green"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_740

    const-string/jumbo v2, "Blue"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_740

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_771

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_771

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_771

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_771

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_771
    const/16 v21, 0x0

    const/4 v12, 0x0

    const-string/jumbo v2, "Red"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get3(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_red"

    :goto_788
    if-eqz v21, :cond_8d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v19, v2, 0xb

    if-eqz v15, :cond_849

    const/16 v2, 0xb

    move/from16 v0, v19

    if-lt v0, v2, :cond_7ed

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_7cc
    const-string/jumbo v2, "Green"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_green"

    goto :goto_788

    :cond_7e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_blue"

    goto :goto_788

    :cond_7ed
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    add-int/lit8 v3, v19, 0x1

    add-int/lit8 v3, v3, -0xb

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_83c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    add-int/lit8 v4, v19, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_83c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_849
    if-gtz v19, :cond_876

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_876
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    add-int/lit8 v3, v19, -0x1

    add-int/lit8 v3, v3, -0xb

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8cc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    add-int/lit8 v4, v19, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_8d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_8ef
    const-string/jumbo v2, "ColorBalanceRedApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_910

    const-string/jumbo v2, "ColorBalanceGreenApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_910

    const-string/jumbo v2, "ColorBalanceBlueApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2d

    :cond_910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_92d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_957

    :cond_92d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_957
    const/4 v10, -0x1

    :try_start_958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_962
    .catch Ljava/lang/NumberFormatException; {:try_start_958 .. :try_end_962} :catch_993

    move-result v10

    if-ltz v10, :cond_969

    const/16 v2, 0x64

    if-le v10, v2, :cond_9f0

    :cond_969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_993
    move-exception v13

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v4, v4, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_9f0
    const/4 v11, -0x1

    rem-int/lit8 v2, v10, 0xb

    const/4 v3, 0x5

    if-ge v2, v3, :cond_a94

    mul-int/lit8 v2, v10, 0xb

    div-int/lit8 v11, v2, 0x64

    :goto_9fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_a2b

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_a2b

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_a2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_a2b
    const/16 v21, 0x0

    const/4 v12, 0x0

    const-string/jumbo v2, "ColorBalanceRedApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get3(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_red"

    :goto_a44
    if-eqz v21, :cond_b17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v19, v2, 0xb

    move/from16 v0, v19

    if-ne v0, v11, :cond_abf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_a94
    mul-int/lit8 v2, v10, 0xb

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v11, v2, 0x1

    goto/16 :goto_9fa

    :cond_a9c
    const-string/jumbo v2, "ColorBalanceGreenApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_green"

    goto :goto_a44

    :cond_ab3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_blue"

    goto :goto_a44

    :cond_abf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    add-int/lit8 v3, v11, -0xb

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b0a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b0a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_b17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_b2d
    const-string/jumbo v2, "ScreenEdgeColorBalance"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportPocSettings(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_b5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get4(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_ba8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v2

    if-eqz v2, :cond_ba8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get4(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_ba8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-wrap2(Lcom/samsung/android/settings/NewModePreview;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b9b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_12c

    :cond_ba8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
