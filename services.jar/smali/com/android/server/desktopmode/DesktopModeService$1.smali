.class Lcom/android/server/desktopmode/DesktopModeService$1;
.super Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(ZZ)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v0

    const/16 v1, 0x67

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    return-void

    :cond_12
    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_38

    move v0, v1

    :goto_26
    invoke-virtual {v3, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->isDisplayResolutionChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    move v0, v2

    goto :goto_26

    :cond_3a
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    if-nez p1, :cond_37

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isWiredFastCharging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDockFastChargingAvailable()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getDockChargerPower()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_37

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "dock_fastcharger_warning"

    invoke-static {v0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_8e

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDisplayChanged DIALOG_TYPE_DOCK_TA_WARNING_FAST_CHARGER"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v1

    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37
.end method

.method public onDisplayUpdated()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->isResolutionChangeNeeded()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setForcedDisplayResolutionDensity(Z)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "No need to change resolution"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->isAutoSelectEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/MultiResolutionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getConnectedDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateResolutionMaxSupportChanged(Landroid/view/Display;)V

    goto :goto_1e
.end method

.method onDockFastChargingStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap31(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method

.method onDockLowChargerPowerChanged(Z)V
    .registers 7

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDexPadConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager;->getCurrentDialogType()I

    move-result v0

    if-ne v0, v2, :cond_37

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager;->dismissDialog()V

    :cond_37
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnected()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isWiredFastCharging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dock_fastcharger_warning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDockLowChargerPowerChanged DIALOG_TYPE_DOCK_TA_WARNING_FAST_CHARGER"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v1

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StateNotifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StateNotifier;->notifyDesktopDockConnectionChanged(Z)V

    :cond_17
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDesktopModeSupported()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDesktopModeSupported()Z

    move-result v1

    if-eq v0, v1, :cond_2a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDesktopModeSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_2a
    return-void
.end method

.method public onInputDeviceChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method

.method onTouchpadEnabled(ZI)V
    .registers 6

    const/16 v2, 0x136

    const/16 v1, 0xcb

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lcom/android/server/desktopmode/UiManager;->showVirtualDevice(II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap26(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/UiManager;->removeVirtualDevice(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap16(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_14
.end method

.method onWiredChargingChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method
