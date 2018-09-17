.class Lcom/android/settings/datausage/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v2, "DataSaver"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataSaverPreference;->performClick()V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_54
    :goto_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_a91

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get5(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_a91

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "opera_max_china_state"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v2, :cond_a38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_a38

    const-string/jumbo v2, "SetUsedData"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v2, "DataUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tabId is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a06

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_102
    const-string/jumbo v2, "MobileDataOn"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v18

    if-eqz v18, :cond_16b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_156

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileDataOn"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    :cond_16b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_1dc

    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_186
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMobileDataEnableDialog()Z

    move-result v2

    if-eqz v2, :cond_1fb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_1e6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmPopup"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1cd
    :goto_1cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_1dc
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto :goto_186

    :cond_1e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bf

    :cond_1fb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_236

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmPopup"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_1cd

    :cond_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_227

    :cond_24b
    const-string/jumbo v2, "MobileDataOff"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_394

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v18

    if-nez v18, :cond_2b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_29f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileDataOff"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_29f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_282

    :cond_2b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_325

    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_2cf
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->MobileDataPerformClick(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMobileDataDisableDialog()Z

    move-result v2

    if-eqz v2, :cond_344

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_316

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_32f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmPopup"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_316
    :goto_316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_325
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto :goto_2cf

    :cond_32f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_308

    :cond_344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_316

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get4(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_37f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmPopup"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_316

    :cond_37f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobileData"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_370

    :cond_394
    const-string/jumbo v2, "CellularDataUsage"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3aa

    const-string/jumbo v2, "BillingCycle"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_505

    :cond_3aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v27

    const/16 v28, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_3cf

    :try_start_3c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_3ce
    .catch Ljava/lang/NumberFormatException; {:try_start_3c2 .. :try_end_3ce} :catch_49f

    move-result v28

    :cond_3cf
    :goto_3cf
    const-string/jumbo v2, "DataUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EmSettingsManager : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " sim Param : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4d5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_4d5

    if-ltz v28, :cond_4c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v2

    move/from16 v0, v28

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :goto_428
    const/4 v15, 0x0

    :goto_429
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v15, v2, :cond_4d5

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v20

    const-string/jumbo v2, "CellularDataUsage"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_446

    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/settings/datausage/DataUsagePreference;

    if-nez v2, :cond_457

    :cond_446
    const-string/jumbo v2, "BillingCycle"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d1

    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/settings/datausage/BillingCyclePreference;

    if-eqz v2, :cond_4d1

    :cond_457
    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4d1

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_491

    if-ltz v28, :cond_484

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_49f
    move-exception v14

    const-string/jumbo v2, "DataUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NumberFormatException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, -0x1

    goto/16 :goto_3cf

    :cond_4c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get9(Lcom/android/settings/datausage/DataUsageSummary;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    goto/16 :goto_428

    :cond_4d1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_429

    :cond_4d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_505
    const-string/jumbo v2, "AlertMeAboutDataUsageOn"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_598

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "alert_at_warning"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v23, :cond_54

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_556

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlertMeAboutDataUsage"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_556
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_589

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlertMeAboutDataUsage"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_598
    const-string/jumbo v2, "AlertMeAboutDataUsageOff"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "alert_at_warning"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;

    if-eqz v23, :cond_54

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlertMeAboutDataUsage"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_5e9
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_61c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "AlertMeAboutDataUsage"

    const-string/jumbo v5, "AlreadyOff"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_61c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_62b
    const-string/jumbo v2, "ConfirmMobileDataConnectionOn"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_6c9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_67f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmMobileDataConnection"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_67f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmMobileDataConnection"

    const-string/jumbo v5, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_6c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmMobileDataConnection"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_6fa
    const-string/jumbo v2, "ConfirmMobileDataConnectionOff"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_798

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_74e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmMobileDataConnection"

    const-string/jumbo v5, "AlreadyOf"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_74e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_789

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmMobileDataConnection"

    const-string/jumbo v5, "AlreadyOf"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ConfirmMobileDataConnection"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_7c9
    const-string/jumbo v2, "WiFiDataUsage"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v2

    const-string/jumbo v3, "wifi_data_usage"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/datausage/DataUsagePreference;

    if-eqz v21, :cond_829

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/datausage/DataUsagePreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_81a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiDataUsage"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_81a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WiFiDataUsage"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_85a
    const-string/jumbo v2, "MobiledataInternationalDataRoaming"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_8a5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get10(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_896

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobiledataInternationalDataRoaming"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_8a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobiledataInternationalDataRoaming"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "MobiledataInternationalDataRoaming"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_8d6
    const-string/jumbo v2, "DisplayUnits"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_975

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get7(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_958

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get11(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_94a

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_92d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap0(Lcom/android/settings/datausage/DataUsageSummary;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_91e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DisplayUnits"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_91e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_92d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DisplayUnits"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_94a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_54

    :cond_958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DisplayUnits"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_975
    const-string/jumbo v2, "RestrictWiFiNetwork"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get13(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v2

    const-string/jumbo v3, "network_restrictions"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/datausage/NetworkRestrictionsPreference;

    if-eqz v22, :cond_9d5

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/datausage/NetworkRestrictionsPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RestrictWiFiNetworks"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_9d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "RestrictWiFiNetworks"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_54

    :cond_a06
    const-string/jumbo v2, "2"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a92

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a92

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    const-string/jumbo v2, "DataUsageSummary"

    const-string/jumbo v3, "Click Tab 2"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v26, "SIM2"

    :cond_a38
    :goto_a38
    const-string/jumbo v2, "DataUsageDetail"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_adf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v2, :cond_ad1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v3, v3, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz v26, :cond_a76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsageDetail"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_a91
    :goto_a91
    return-void

    :cond_a92
    const-string/jumbo v2, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_aa1

    const-string/jumbo v26, "SIM1"

    goto :goto_a38

    :cond_aa1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_ad1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_a91

    :cond_adf
    const-string/jumbo v2, "ManageAppData"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "restrict_app_data"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ManageAppData"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_b23
    const-string/jumbo v2, "WlanUsageView"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "wifi_data_usage"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b58

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "WlanUsageView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_b67
    const-string/jumbo v2, "NetworkRestrictView"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bab

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "network_restrictions"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_b9c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NetworkRestrictView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b9c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_bab
    const-string/jumbo v2, "DataUsageLimitSettings"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c05

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "billing_preference_chn"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_bf6

    if-eqz v26, :cond_be8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsageLimitSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_bf6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_c05
    const-string/jumbo v2, "UsedDataPopup"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_c1f
    const-string/jumbo v2, "SetUsedData"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-nez v2, :cond_c85

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_c76

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "set_used_data"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataAmount"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsedDataPopup"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_c85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataNumber"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUnit"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cbb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataNumber"

    const-string/jumbo v5, "DataNumber"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getCHValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_cbb
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cd9

    const-string/jumbo v2, "M"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ceb

    const-string/jumbo v2, "G"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ceb

    :cond_cd9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUnit"

    const-string/jumbo v5, "DataUnit"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getCHValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :cond_ceb
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d0f

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d0f

    const-string/jumbo v2, "M"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d4e

    const-string/jumbo v2, "G"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d4e

    :cond_d0f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "set_used_data"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataAmount"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsedDataPopup"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_d4e
    const/4 v10, 0x0

    :try_start_d4f
    const-string/jumbo v2, "M"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e9c

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :cond_d62
    :goto_d62
    new-instance v31, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    invoke-virtual/range {v31 .. v31}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_used_by_check_time"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check_time"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "middle_real_value"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRealTimeValue(J)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataAmount"

    const-string/jumbo v5, "Already set"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_e51
    .catch Ljava/lang/NumberFormatException; {:try_start_d4f .. :try_end_e51} :catch_e53

    goto/16 :goto_a91

    :catch_e53
    move-exception v14

    const-string/jumbo v2, "DataUsageSummary"

    const-string/jumbo v3, "could not persist insert byte"

    invoke-static {v2, v3, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const-string/jumbo v3, "set_used_data"

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataAmount"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UsedDataPopup"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_e9c
    :try_start_e9c
    const-string/jumbo v2, "G"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d62

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_eae
    .catch Ljava/lang/NumberFormatException; {:try_start_e9c .. :try_end_eae} :catch_e53

    move-result v10

    const/high16 v2, 0x44800000    # 1024.0f

    mul-float/2addr v10, v2

    goto/16 :goto_d62

    :cond_eb4
    const-string/jumbo v2, "DataUsageBySIM"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef2

    if-eqz v26, :cond_a91

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SimCardInfo"

    const-string/jumbo v5, "Exists"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataUsage"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91

    :cond_ef2
    const-string/jumbo v2, "DataUsageMoreSettings"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a91

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/datausage/DataUsageSummarySecondPage;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v5}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120741

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x25

    invoke-static/range {v2 .. v9}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummary$6;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->-get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_a91
.end method
