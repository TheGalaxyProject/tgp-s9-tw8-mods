.class Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;
.super Ljava/lang/Object;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BatteryStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get1(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_37
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_42
    :goto_42
    return-void

    :cond_43
    const-string/jumbo v2, "BatteryLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_70
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_42

    :cond_7c
    const-string/jumbo v2, "FCCCertification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string/jumbo v2, "RATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string/jumbo v2, "BatteryCapacity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v3, "battery_capacity"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_42

    :cond_cd
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_42
.end method
