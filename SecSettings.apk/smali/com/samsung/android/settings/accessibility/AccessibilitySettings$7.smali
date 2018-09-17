.class Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const-string/jumbo v2, "vision_preferences"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_34
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const-string/jumbo v1, "AccessibilityShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3f

    :cond_87
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3f

    :cond_93
    const-string/jumbo v1, "Hearing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const-string/jumbo v2, "audio_preference_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_bd
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_ca
    const-string/jumbo v1, "DexterityAndInteraction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    const-string/jumbo v2, "mobility_preference_key"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_f4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_101
    const-string/jumbo v1, "DirectionLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_11b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    :cond_11b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_130

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_130
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_13d
    const-string/jumbo v1, "DirectAccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_157

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    :cond_157
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_16c

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16c
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_179
    const-string/jumbo v1, "NotificationReminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v1, :cond_193

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    :cond_193
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1a8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_1b5
    const-string/jumbo v1, "SingleTabModeOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_214

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_214

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_207

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SingleTapMode"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Accessibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_207
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_214
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_23e

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SingleTapMode"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Accessibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_24b
    const-string/jumbo v1, "SingleTabModeOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_2a8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2a8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_29b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SingleTapMode"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Accessibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f

    :cond_2a8
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2d2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SingleTapMode"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Accessibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->-get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3f
.end method
