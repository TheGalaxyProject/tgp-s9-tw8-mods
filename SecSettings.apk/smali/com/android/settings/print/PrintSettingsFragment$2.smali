.class Lcom/android/settings/print/PrintSettingsFragment$2;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 11

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PrintingOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    const-string/jumbo v6, "PrintingOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf

    :cond_22
    const-string/jumbo v6, "PrintingOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get4(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v6

    if-eqz v6, :cond_99

    :try_start_35
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get4(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_99

    invoke-virtual {v4}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eq v1, v0, :cond_5c

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v6}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Lcom/android/settings/print/PrintSettingsFragment;->-wrap3(Landroid/content/Context;Landroid/support/v7/preference/Preference;Ljava/lang/Boolean;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_99

    :cond_6e
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "Printing"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_ab

    const-string/jumbo v6, "AlreadyOn"

    move-object v7, v6

    :goto_81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b0

    const-string/jumbo v6, "No"

    :goto_8a
    invoke-virtual {v8, v9, v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Printing"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_99} :catch_b4

    :cond_99
    :goto_99
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_115

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :goto_a7
    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_ab
    :try_start_ab
    const-string/jumbo v6, "AlreadyOff"

    move-object v7, v6

    goto :goto_81

    :cond_b0
    const-string/jumbo v6, "Yes"
    :try_end_b3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ab .. :try_end_b3} :catch_b4

    goto :goto_8a

    :catch_b4
    move-exception v3

    const-string/jumbo v6, "PrintSettingsFragment"

    const-string/jumbo v7, "Unable to get preference "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99

    :cond_bf
    const-string/jumbo v6, "PrintingDownloadPlugin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_99

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_ff

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->isShown()Z

    move-result v6

    if-eqz v6, :cond_ff

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get1(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_e9
    :goto_e9
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_99

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_99

    :cond_ff
    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get2(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v6

    if-eqz v6, :cond_e9

    iget-object v6, p0, Lcom/android/settings/print/PrintSettingsFragment$2;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v6}, Lcom/android/settings/print/PrintSettingsFragment;->-get2(Lcom/android/settings/print/PrintSettingsFragment;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/RestrictedPreference;->performClick()V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_e9

    :cond_115
    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_a7
.end method
