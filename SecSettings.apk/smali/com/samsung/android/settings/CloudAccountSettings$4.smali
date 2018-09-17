.class Lcom/samsung/android/settings/CloudAccountSettings$4;
.super Ljava/lang/Object;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/CloudAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/CloudAccountSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/CloudAccountSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Users"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v5, "user_preference"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3e
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_49

    :cond_56
    const-string/jumbo v4, "BackupAndReset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v5, "privacy_preference"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_96

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_8a

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8a
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_49

    :cond_96
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_49

    :cond_a2
    const-string/jumbo v4, "SmartSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_ed

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_ed

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e0

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "CloudAndAccounts"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e0
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_49

    :cond_ed
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_49

    :cond_fa
    const-string/jumbo v4, "Account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    const-string/jumbo v5, "account_preference"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_13b

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_12e

    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12e
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_49

    :cond_13b
    iget-object v4, p0, Lcom/samsung/android/settings/CloudAccountSettings$4;->this$0:Lcom/samsung/android/settings/CloudAccountSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/CloudAccountSettings;->-get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_49
.end method
