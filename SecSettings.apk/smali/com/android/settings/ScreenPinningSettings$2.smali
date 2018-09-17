.class Lcom/android/settings/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ScreenPinningSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PinWindowsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_26

    :cond_57
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_85
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_26

    :cond_8f
    const-string/jumbo v1, "PinWindowsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_af

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_26

    :cond_af
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_e0

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_26

    :cond_e0
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_10e

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10e
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    iget-object v1, v1, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_26
.end method
