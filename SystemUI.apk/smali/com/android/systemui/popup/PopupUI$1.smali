.class Lcom/android/systemui/popup/PopupUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PopupUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/popup/PopupUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/PopupUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/PopupUI;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "PopupUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PopupUIReceiver.onReceive() action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v5

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get0(Lcom/android/systemui/popup/PopupUI;)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get1(Lcom/android/systemui/popup/PopupUI;)Z

    move-result v5

    :goto_3c
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_55

    :cond_40
    const-string/jumbo v5, "PopupUI"

    const-string/jumbo v6, "showDataConnectionToastNotification()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->showDataConnectionToastNotification()V

    return-void

    :cond_53
    const/4 v5, 0x1

    goto :goto_3c

    :cond_55
    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->showDataConnectionAlertDialogs(Landroid/content/Intent;)V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get3(Lcom/android/systemui/popup/PopupUI;)Z

    move-result v5

    if-eqz v5, :cond_c8

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5, v8}, Lcom/android/systemui/popup/PopupUI;->-set0(Lcom/android/systemui/popup/PopupUI;Z)Z

    sget-boolean v5, Lcom/android/systemui/Rune;->POPUP_SUPPORT_MOBILE_DEVICE_WARNING_POPUP:Z

    if-eqz v5, :cond_82

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->showMobileDeviceWarningToastNotification()V

    :cond_82
    sget-boolean v5, Lcom/android/systemui/Rune;->POPUP_SUPPORT_FLIGHTMODE_ENABLED_POPUP:Z

    if-eqz v5, :cond_5e

    const-string/jumbo v5, "trigger_restart_min_framework"

    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v2

    const-string/jumbo v5, "PopupUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showFlightModeEnabledAlertDialog() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5e

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->showFlightModeEnabledAlertDialog()V

    goto :goto_5e

    :cond_c8
    const-string/jumbo v5, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_WATER_PROTECTION_POPUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10f

    const-string/jumbo v5, "type"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "dismiss"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v5, "PopupUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showSIMCardTrayWaterProtectionAlertDialog() : type, dismiss "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->showSIMCardTrayWaterProtectionAlertDialog(IZ)V

    goto/16 :goto_5e

    :cond_10f
    const-string/jumbo v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/systemui/popup/PopupUI$1;->this$0:Lcom/android/systemui/popup/PopupUI;

    invoke-static {v5}, Lcom/android/systemui/popup/PopupUI;->-get2(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/popup/PopupUINotificationsImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->dismissAlertDialogs()V

    goto/16 :goto_5e
.end method
