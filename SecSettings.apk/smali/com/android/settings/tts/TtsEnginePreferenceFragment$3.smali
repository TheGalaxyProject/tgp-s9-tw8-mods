.class Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;
.super Ljava/lang/Object;
.source "TtsEnginePreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 10

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SamsungTextToSpeech"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ee

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get1(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_c1

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get1(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v5, v3, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v5, :cond_bd

    move-object v1, v3

    check-cast v1, Lcom/android/settings/tts/TtsEnginePreference;

    invoke-virtual {v1}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SMT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bd

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SamsungTextToSpeech"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_78
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_83
    return-void

    :cond_84
    invoke-virtual {v1}, Lcom/android/settings/tts/TtsEnginePreference;->performClick()V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_b1

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SamsungTextToSpeech"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b1
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_83

    :cond_bd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    :cond_c1
    const-string/jumbo v5, "TtsEnginePreferenceFragment"

    const-string/jumbo v6, "There is no samsung tts"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_e2

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e2
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_ed
    :goto_ed
    return-void

    :cond_ee
    const-string/jumbo v5, "GoogleTextToSpeech"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ed

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get1(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_102
    if-ge v2, v0, :cond_1a5

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get1(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v5, v3, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v5, :cond_1a1

    move-object v1, v3

    check-cast v1, Lcom/android/settings/tts/TtsEnginePreference;

    invoke-virtual {v1}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_15c

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleTextToSpeech"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15c
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_167
    return-void

    :cond_168
    invoke-virtual {v1}, Lcom/android/settings/tts/TtsEnginePreference;->performClick()V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_195

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "GoogleTextToSpeech"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_195
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_167

    :cond_1a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_102

    :cond_1a5
    const-string/jumbo v5, "TtsEnginePreferenceFragment"

    const-string/jumbo v6, "There is no google tts"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1c6

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c6
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$3;->this$0:Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-static {v5}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->-get0(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_ed
.end method
