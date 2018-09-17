.class Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;
.super Ljava/lang/Object;
.source "FingerSensorGestureSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FingerSensorGesturesOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->onClick(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8f
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_55

    :cond_9b
    const-string/jumbo v1, "FingerSensorGesturesOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12d

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_e7

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_da
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_e7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->onClick(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FingerSensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_120
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_12d
    const-string/jumbo v1, "PayBySensorGesturesOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_207

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_150

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-wrap0(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_166

    :cond_150
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_166
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1a9

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_19c

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19c
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_1a9
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1c7

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1c7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1fa

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1fa
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_207
    const-string/jumbo v1, "PayBySensorGesturesOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-wrap0(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_240

    :cond_22a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_240
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_283

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_276

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_276
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55

    :cond_283
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2a1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_2a1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2d4

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PayBySensorGestures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;->this$0:Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_55
.end method
