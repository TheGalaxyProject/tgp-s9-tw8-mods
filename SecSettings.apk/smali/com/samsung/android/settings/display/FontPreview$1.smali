.class Lcom/samsung/android/settings/display/FontPreview$1;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FontPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreview;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v17, "Font"

    const-string/jumbo v18, "FontSize"

    const-string/jumbo v2, "FontSize"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_223

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-nez v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    :try_start_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_66} :catch_e2

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFontSizeSeekBar old is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v3

    if-ne v2, v3, :cond_11c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_e2
    move-exception v10

    const-string/jumbo v2, "FontPreview::Bixby"

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_11c
    if-lez v15, :cond_1f3

    const/16 v2, 0xb

    if-gt v15, v2, :cond_1f3

    const/4 v2, 0x7

    if-le v15, v2, :cond_15b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get9(Lcom/samsung/android/settings/display/FontPreview;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_15b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/FontPreview;->-set3(Lcom/samsung/android/settings/display/FontPreview;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessiblity_font_switch"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get9(Lcom/samsung/android/settings/display/FontPreview;)Z

    move-result v2

    if-eqz v2, :cond_1f0

    const/4 v2, 0x1

    :goto_14f
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/display/FontPreview;->-wrap3(Lcom/samsung/android/settings/display/FontPreview;ZZ)V

    :cond_15b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    add-int/lit8 v3, v15, -0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/FontPreview;->-wrap1(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFontSizeSeekBar now is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    goto/16 :goto_59

    :cond_1f0
    const/4 v2, 0x0

    goto/16 :goto_14f

    :cond_1f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_223
    const-string/jumbo v2, "FontSizeUp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32c

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFontSizeSeekBar old is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getMax()I

    move-result v3

    if-eq v2, v3, :cond_2fe

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-direct {v12, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    const/16 v3, 0x16

    invoke-direct {v13, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2c2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMax"

    const-string/jumbo v4, "No"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    :goto_2d6
    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mFontSizeSeekBar now is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    :cond_2fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMax"

    const-string/jumbo v4, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2d6

    :cond_32c
    const-string/jumbo v2, "FontSizeDown"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3de

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_3af

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-direct {v12, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    const/16 v3, 0x15

    invoke-direct {v13, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_399

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMin"

    const-string/jumbo v4, "No"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    goto/16 :goto_59

    :cond_3af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMin"

    const-string/jumbo v4, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_3de
    const-string/jumbo v2, "FontSizeMax"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getMax()I

    move-result v3

    if-eq v2, v3, :cond_471

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getMax()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/FontPreview;->-wrap1(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_45b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMax"

    const-string/jumbo v4, "No"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_45b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    goto/16 :goto_59

    :cond_471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMax"

    const-string/jumbo v4, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_4a0
    const-string/jumbo v2, "FontSizeMin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_540

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_511

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/FontPreview;->-wrap1(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_4fb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMin"

    const-string/jumbo v4, "No"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    goto/16 :goto_59

    :cond_511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlreadyMin"

    const-string/jumbo v4, "Yes"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_540
    const-string/jumbo v2, "FontStyle"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-nez v2, :cond_588

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120c37

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5cc

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5fb

    :cond_5cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_5fb
    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fontStyle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v8

    const/4 v5, 0x0

    :goto_624
    if-ge v5, v8, :cond_6b1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Search : list-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", element-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68b

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f3

    :cond_68b
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6f3

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found Font Style : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b1
    if-ne v5, v8, :cond_6f7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_6f3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_624

    :cond_6f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get13(Lcom/samsung/android/settings/display/FontPreview;)I

    move-result v2

    if-ne v5, v2, :cond_741

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_797

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Object"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    goto/16 :goto_59

    :cond_7ad
    const-string/jumbo v2, "FontDownload"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get17(Lcom/samsung/android/settings/display/FontPreview;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/FontPreview;->-wrap5(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7e3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "FontDownload"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_7f2
    const-string/jumbo v2, "LargerFontSizesOn"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get8(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_83c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LargeFontSizeState"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoomAndFont"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_83c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get8(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->performClick()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_87e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LargeFontSizeState"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoomAndFont"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_87e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_88d
    const-string/jumbo v2, "LargerFontSizesOff"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_928

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get8(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_8d7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LargeFontSizeState"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoomAndFont"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_8d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get8(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->performClick()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_919

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "LargeFontSizeState"

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoomAndFont"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_928
    const-string/jumbo v2, "ScreenZoom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-nez v2, :cond_971

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Size"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoom"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_971
    :try_start_971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_97d
    .catch Ljava/lang/NumberFormatException; {:try_start_971 .. :try_end_97d} :catch_9e4

    move-result v20

    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenSizeSeekBar old is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/FontPreview;->-get16(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 v2, v20, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FontPreview;->-get16(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v3

    if-ne v2, v3, :cond_a1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Size"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoom"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_9e4
    move-exception v10

    const-string/jumbo v2, "FontPreview::Bixby"

    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Size"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoom"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_a1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get16(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    rsub-int/lit8 v3, v20, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Size"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ScreenZoom"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview$1;->this$0:Lcom/samsung/android/settings/display/FontPreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreview;->-wrap2(Lcom/samsung/android/settings/display/FontPreview;)V

    return-void
.end method
