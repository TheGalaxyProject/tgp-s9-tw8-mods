.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 9

    const/4 v6, 0x1

    const v7, 0x7f1214d2

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "GameModePopupConfirm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "EntertainmentModePopupConfirm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "HighPerformanceModePopupConfirm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    :cond_2a
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_a0

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v3

    if-ne v3, v6, :cond_71

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "GameMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_70
    :goto_70
    return-void

    :cond_71
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8d

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "EntertainmentMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_8d
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HighPerformanceMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_a0
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "low_power"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v3

    if-ne v3, v6, :cond_1d7

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "game_launcher_tnc_read"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_113

    if-eqz v0, :cond_113

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DisagreeGamemodeEULAPowerSavingMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PowerSavingMode"

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70

    :cond_113
    if-nez v1, :cond_14c

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "DisagreeGamemodeEULAPowerSavingMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70

    :cond_14c
    if-eqz v0, :cond_197

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AgreeGamemodeEULAPowerSavingMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PowerSavingMode"

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70

    :cond_197
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1c1

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AgreeGamemodeEULAPowerSavingMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Performance"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c1
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70

    :cond_1d7
    if-nez v0, :cond_219

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_203

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PowerSavingMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "Performance"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_203
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70

    :cond_219
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PowerSavingMode"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PowerSavingMode"

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70

    :cond_262
    const-string/jumbo v3, "GameModePopupCustomize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27d

    const-string/jumbo v3, "EntertainmentModePopupCustomize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27d

    const-string/jumbo v3, "HighPerformanceModePopupCustomize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    :cond_27d
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_292

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_292
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_70
.end method
