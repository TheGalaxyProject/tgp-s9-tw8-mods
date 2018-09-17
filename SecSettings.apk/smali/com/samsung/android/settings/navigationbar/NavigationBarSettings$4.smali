.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;
.super Ljava/lang/Object;
.source "NavigationBarSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NavigationBarDefaultBackgroundColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->isDefaultBackgroundColor()Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setDefaultBackgroundColor()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBarBackgroundColor"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_54
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBarBackgroundColor"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5f

    :cond_8a
    const-string/jumbo v2, "ButtonLayoutRecentsHomeBack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_key_order"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e8

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ButtonLayoutRecentsHomeBack"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e8
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_f5
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ButtonLayoutRecentsHomeBack"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_120
    const-string/jumbo v2, "ButtonLayoutBackHomeRecents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18b

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get5(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_key_order"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17e

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ButtonLayoutBackHomeRecents"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17e
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_18b
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ButtonLayoutBackHomeRecents"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_1b6
    const-string/jumbo v2, "UnlockWithHomeButtonOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_236

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get6(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_20b

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get6(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1fe

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnlockWithHomeButtonOn"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1fe
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_20b
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnlockWithHomeButtonOn"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_236
    const-string/jumbo v2, "UnlockWithHomeButtonOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b6

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get6(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_28b

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get6(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_27e

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnlockWithHomeButtonOff"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27e
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_28b
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "UnlockWithHomeButtonOff"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_2b6
    const-string/jumbo v2, "NavigationBarShowAndHideButtonOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_342

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get4(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_317

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get4(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_hide_bar"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_30a

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBarShowAndHideButtonOn"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_30a
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_317
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBarShowAndHideButtonOn"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_342
    const-string/jumbo v2, "NavigationBarShowAndHideButtonOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ce

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get4(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3a3

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get4(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_hide_bar"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_396

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBarShowAndHideButtonOff"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_396
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_3a3
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBarShowAndHideButtonOff"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "NavigationBar"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f

    :cond_3ce
    const-string/jumbo v2, "HardPressSensitivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_pressure_user_level"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_413

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "Level"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_413
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get2(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5f
.end method
