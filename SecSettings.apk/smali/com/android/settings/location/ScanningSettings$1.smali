.class Lcom/android/settings/location/ScanningSettings$1;
.super Ljava/lang/Object;
.source "ScanningSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/ScanningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/ScanningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/ScanningSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ScanningSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived : stateId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "WiFiScanningOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_68

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_67
    :goto_67
    return-void

    :cond_68
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get2(Lcom/android/settings/location/ScanningSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a7
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_67

    :cond_b3
    const-string/jumbo v1, "WiFiScanningOff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f6

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_67

    :cond_f6
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get2(Lcom/android/settings/location/ScanningSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_135

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_135
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_67

    :cond_142
    const-string/jumbo v1, "BluetoothScanningOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_185

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_67

    :cond_185
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get0(Lcom/android/settings/location/ScanningSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_1c4

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c4
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_67

    :cond_1d1
    const-string/jumbo v1, "BluetoothScanningOff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_214

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_67

    :cond_214
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get0(Lcom/android/settings/location/ScanningSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_253

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_253
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_67
.end method
