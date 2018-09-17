.class Lcom/samsung/android/settings/nfc/NfcSettings$3;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 11

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NfcSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter NFC settings EM state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NfcTapAndPaySettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_5f

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_54
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_5f
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    const-string/jumbo v5, "nfc_payment_settings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_80

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_80
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    const-string/jumbo v4, "NfcDefaultNfcSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_c4

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_b9

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_b9
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_c4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_cc
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_e6

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e6
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_f1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_cc .. :try_end_f1} :catch_f2

    goto :goto_8b

    :catch_f2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_8b

    :cond_102
    const-string/jumbo v4, "NfcOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19a

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_16f

    const-string/jumbo v4, "NfcSettings"

    const-string/jumbo v5, "enter NFC settings On"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_138

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_138
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_162

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "TurnedOn"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_162
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_16f
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "AlreadyON"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_19a
    const-string/jumbo v4, "NfcOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_223

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-eq v4, v7, :cond_1f8

    const-string/jumbo v4, "NfcSettings"

    const-string/jumbo v5, "enter NFC settings Off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_1eb

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "TurnedOff"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1eb
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_1f8
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "Nfc"

    const-string/jumbo v6, "AlreadyOFF"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_223
    const-string/jumbo v4, "NfcAndroidBeamSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25a

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    const-string/jumbo v5, "android_beam_settings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_24d

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_24d
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_25a
    const-string/jumbo v4, "NfcStandardMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30a

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v7, :cond_2be

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_287

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_287
    :goto_287
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2b1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcStandardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_2be
    if-eq v2, v9, :cond_2f6

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_2ea

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcStandardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2ea
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2f6
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto/16 :goto_287

    :cond_30a
    const-string/jumbo v4, "NfcCardMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a9

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v7, :cond_371

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_328
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_352

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcCardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_352
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b

    :cond_371
    if-ne v2, v9, :cond_328

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_39d

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcCardMode"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "Yes"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_39d
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3a9
    const-string/jumbo v4, "NfcAndroidBeamSettingsOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_404

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v7, :cond_3db

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_3db
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v9, :cond_8b

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/nfc/NfcSettings;->-set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z

    return-void

    :cond_404
    const-string/jumbo v4, "NfcAndroidBeamSettingsOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-eq v4, v7, :cond_425

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v9, :cond_8b

    :cond_425
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_44f

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "AndroidBeam"

    const-string/jumbo v6, "TurnedOff"

    const-string/jumbo v7, "No"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    const-string/jumbo v5, "NfcAndroidBeamSettings"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_44f
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings$3;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_8b
.end method
