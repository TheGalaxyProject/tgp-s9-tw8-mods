.class Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;
.super Ljava/lang/Object;
.source "DeviceMaintenanceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DeviceMaintenanceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Battery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "BatteryChargingTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "BatteryEstimatedLife"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_25
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;-><init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;)V

    invoke-static {v1, v2}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string/jumbo v1, "Performance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_52
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get4(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    goto :goto_33

    :cond_67
    const-string/jumbo v1, "StorageSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get5(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    goto :goto_33

    :cond_85
    const-string/jumbo v1, "RAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a3
    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get3(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    goto/16 :goto_33
.end method
