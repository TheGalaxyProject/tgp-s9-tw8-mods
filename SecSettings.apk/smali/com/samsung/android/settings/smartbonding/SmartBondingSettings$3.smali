.class Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;
.super Landroid/os/Handler;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_162

    :goto_13
    return-void

    :pswitch_14
    const-string/jumbo v1, "DownloadBoosterOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownaloadBooster"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_13

    :cond_56
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "SimCard"

    const-string/jumbo v3, "exist"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4c

    :cond_86
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Roaming"

    const-string/jumbo v3, "Activated"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_4c

    :cond_b6
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_e4

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownaloadBooster"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e4
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4c

    :cond_ef
    const-string/jumbo v1, "DownloadBoosterOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_129

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownaloadBooster"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4c

    :cond_129
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get1(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_156

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownaloadBooster"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_156
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$3;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4c

    nop

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
