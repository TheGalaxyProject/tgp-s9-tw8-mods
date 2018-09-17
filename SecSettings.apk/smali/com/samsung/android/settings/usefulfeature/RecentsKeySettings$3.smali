.class Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;
.super Ljava/lang/Object;
.source "RecentsKeySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UseRecentsButtonOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_split_screen_view_shortcut"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4a

    :cond_96
    const-string/jumbo v1, "UseRecentsButtonOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_122

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_d6

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_d6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_split_screen_view_shortcut"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_115

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_115
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_122
    const-string/jumbo v1, "SplitScreenView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_219

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_194

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_187

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_187
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_194
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1d7

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1ca

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SplitScreenView"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1ca
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_1d7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_20c

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SplitScreenView"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20c
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_219
    const-string/jumbo v1, "SnapWindow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_28b

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_27e

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "UseRecentsButton"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27e
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_28b
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2ce

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2c1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SnapWindow"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2c1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a

    :cond_2ce
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_303

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SnapWindow"

    const-string/jumbo v3, "Selected"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "MultiWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_303
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->-get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4a
.end method
