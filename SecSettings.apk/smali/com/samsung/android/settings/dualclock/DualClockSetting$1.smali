.class Lcom/samsung/android/settings/dualclock/DualClockSetting$1;
.super Ljava/lang/Object;
.source "DualClockSetting.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dualclock/DualClockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dualclock/DualClockSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RoamingClockOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2a

    :cond_61
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_95
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2a

    :cond_a1
    const-string/jumbo v1, "RoamingClockOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c3

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2a

    :cond_c3
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_fa

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2a

    :cond_fa
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get2(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_12e

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12e
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2a

    :cond_13b
    const-string/jumbo v1, "SetHomeTimeZone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bb

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_17b

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RoamingClock"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2a

    :cond_17b
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get1(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1ae

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LockTemplate"

    const-string/jumbo v3, "Installed"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ClockAndFaceWidgets"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1ae
    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2a

    :cond_1bb
    const-string/jumbo v1, "SetHomeTimeZoneSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/samsung/android/settings/dualclock/DualClockSetting$1;->this$0:Lcom/samsung/android/settings/dualclock/DualClockSetting;

    invoke-static {v1}, Lcom/samsung/android/settings/dualclock/DualClockSetting;->-get0(Lcom/samsung/android/settings/dualclock/DualClockSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2a
.end method
