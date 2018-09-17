.class Lcom/android/settings/vpn2/VpnSettings$3;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "AddVPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_107

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-wrap1(Lcom/android/settings/vpn2/VpnSettings;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v8}, Lcom/android/settings/vpn2/VpnSettings;->-wrap2(Lcom/android/settings/vpn2/VpnSettings;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/vpn2/VpnSettings;->-set0(Lcom/android/settings/vpn2/VpnSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get3(Lcom/android/settings/vpn2/VpnSettings;)Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_50

    if-eqz v0, :cond_66

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)I

    move-result v7

    if-ne v7, v12, :cond_66

    const/4 v0, 0x1

    :cond_50
    :goto_50
    if-eqz v0, :cond_fa

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get1(Lcom/android/settings/vpn2/VpnSettings;)I

    move-result v7

    if-nez v7, :cond_68

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_66
    const/4 v0, 0x0

    goto :goto_50

    :cond_68
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v7

    if-nez v7, :cond_9c

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SecureLockType"

    const-string/jumbo v9, "Set"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "VPN"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_9c
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_c3

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "SecureLockType"

    const-string/jumbo v9, "Set"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_c7
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get2(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_db

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_c7

    :cond_db
    new-instance v1, Lcom/android/internal/net/VpnProfile;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get5(Lcom/android/settings/vpn2/VpnSettings;)Lcom/android/settings/vpn2/VpnSettings;

    move-result-object v7

    invoke-static {v7, v1, v12, v11}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_28

    :cond_fa
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_28

    :cond_107
    const-string/jumbo v7, "VPNName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11d

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_28

    :cond_11d
    const-string/jumbo v7, "EditVPNnetwork"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    const-string/jumbo v4, ""

    if-ge v5, v12, :cond_15c

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "VPNName"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_15c
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_193

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    const-string/jumbo v8, "VPNName"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-static {v7}, Lcom/android/settings/vpn2/VpnSettings;->-get0(Lcom/android/settings/vpn2/VpnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_193
    iget-object v7, p0, Lcom/android/settings/vpn2/VpnSettings$3;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v7, v4}, Lcom/android/settings/vpn2/VpnSettings;->BixbySearchVpn(Ljava/lang/String;)V

    goto/16 :goto_28
.end method
