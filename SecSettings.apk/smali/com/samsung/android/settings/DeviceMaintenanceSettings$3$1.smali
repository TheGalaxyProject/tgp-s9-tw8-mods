.class Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;
.super Ljava/lang/Object;
.source "DeviceMaintenanceSettings.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryInfoLoaded(Lcom/android/settingslib/BatteryInfo;)V
    .registers 13

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    iget-wide v6, p1, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2a

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p1, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    :cond_2a
    const-string/jumbo v6, "Battery"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_62

    if-gtz v2, :cond_7b

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "LearningUsagePattern"

    const-string/jumbo v8, "InProgress"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_62
    :goto_62
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get0(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->performClick()V

    return-void

    :cond_7b
    iget-boolean v6, p1, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    if-nez v6, :cond_bc

    const/16 v0, 0x23

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "low_power"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sem_perfomance_mode"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_ec

    const/4 v1, 0x1

    :goto_aa
    if-eqz v1, :cond_b0

    if-nez v3, :cond_b0

    const/16 v3, 0x23

    :cond_b0
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v2

    :cond_bc
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "LearningUsagePattern"

    const-string/jumbo v8, "InProgress"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Value"

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_57

    :cond_ec
    const/4 v1, 0x0

    goto :goto_aa

    :cond_ee
    const-string/jumbo v6, "BatteryChargingTime"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_62

    iget-boolean v6, p1, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    if-nez v6, :cond_15b

    if-gtz v2, :cond_12c

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RemainingChargingTime"

    const-string/jumbo v8, "Present"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11f
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_62

    :cond_12c
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "RemainingChargingTime"

    const-string/jumbo v8, "Present"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "time"

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_15b
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Charger"

    const-string/jumbo v8, "Connected"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_11f

    :cond_17b
    const-string/jumbo v6, "BatteryEstimatedLife"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_62

    iget-boolean v6, p1, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    if-eqz v6, :cond_1e8

    if-gtz v2, :cond_1b9

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BatteryEstimatedLife"

    const-string/jumbo v8, "Present"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1ac
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_62

    :cond_1b9
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BatteryEstimatedLife"

    const-string/jumbo v8, "Present"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "time"

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ac

    :cond_1e8
    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Charger"

    const-string/jumbo v8, "Connected"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_1ac
.end method
