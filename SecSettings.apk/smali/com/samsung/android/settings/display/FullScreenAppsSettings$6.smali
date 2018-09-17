.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;
.super Landroid/os/Handler;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_a

    return-void

    :cond_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_240

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v8

    if-eqz v8, :cond_229

    const-string/jumbo v8, "FullScreenAppsOn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    const-string/jumbo v8, "FullScreenAppsOff"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_2e
    const-string/jumbo v8, "FullScreenAppsOn"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    const/4 v7, 0x1

    :goto_38
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-eqz v8, :cond_54

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_80

    :cond_54
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "SelectedApp"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_7e
    const/4 v7, 0x0

    goto :goto_38

    :cond_80
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9c

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c6

    :cond_9c
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "SelectedApp"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_c6
    const/4 v2, 0x0

    :goto_c7
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_1f2

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v4, :cond_ea

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_ea
    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1ee

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1ee

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ee

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-ne v8, v7, :cond_153

    if-eqz v7, :cond_140

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyON"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11c
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "applicationName"

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_13f
    return-void

    :cond_140
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyOFF"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11c

    :cond_153
    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_183

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "Available"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_13f

    :cond_183
    if-eqz v7, :cond_1cc

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyON"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a7
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "applicationName"

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_13f

    :cond_1cc
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "State"

    const-string/jumbo v10, "AlreadyOFF"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a7

    :cond_1ee
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c7

    :cond_1f2
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "SelectedApp"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "applicationName"

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "FullScreenApps"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_13

    :cond_229
    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_13

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
