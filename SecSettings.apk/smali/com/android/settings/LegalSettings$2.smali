.class Lcom/android/settings/LegalSettings$2;
.super Ljava/lang/Object;
.source "LegalSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LegalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LegalSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LegalSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OpenSourceLicences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "license"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    const-string/jumbo v1, "GoogleLegal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "terms"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5e
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_37

    :cond_68
    const-string/jumbo v1, "SystemWebViewLicences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "webview_license"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8e
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_37

    :cond_98
    const-string/jumbo v1, "SamsungLegal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "samsung_legal"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_be

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_be
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_37

    :cond_c9
    const-string/jumbo v1, "SafetyInformation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "safetyinfomation"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_ef
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    iget-object v1, v1, Lcom/android/settings/LegalSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_37
.end method
