.class Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CameraFlashOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "CameraLight"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needFlashNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7f
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_48

    :cond_97
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_b7
    const-string/jumbo v1, "CameraFlashOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_f5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_f5
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_133

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Flash"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_133
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_140
    const-string/jumbo v1, "ScreenOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ed

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_17e

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_17e
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1c0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needScreenNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_1cd
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b4

    :cond_1ed
    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_276

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_22b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_22b
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_269

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Screen"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_269
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_276
    const-string/jumbo v1, "FlashNotificationOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f5

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2be

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2be

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FlashNotification"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_2be
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2e8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "FlashNotification"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_2f5
    const-string/jumbo v1, "FlashNotificationOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_33f

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33f

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48

    :cond_33f
    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get1()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get2()Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_391

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LightNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_391
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_48
.end method
