.class Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;
.super Ljava/lang/Object;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockState"
.end annotation


# static fields
.field static final TYPE_ADAPTER:I = 0x2712

.field static final TYPE_DEX_PAD:I = 0x2714

.field static final TYPE_DEX_RESERVED:I = 0x2715

.field static final TYPE_DEX_STATION:I = 0x2711

.field static final TYPE_INTERNAL_SCREEN:I = 0x2713

.field static final TYPE_UNDOCKED:I = 0x2710


# instance fields
.field private final mDesktopModeSupported:Z

.field private final mIsDexStation:Z

.field private final mTouchpadSupported:Z

.field private final mType:I

.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mType:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .registers 8

    const/4 v3, 0x0

    const/16 v2, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mType:I

    iput-boolean p3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mDesktopModeSupported:Z

    iput-boolean p4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mIsDexStation:Z

    iput-boolean p5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mTouchpadSupported:Z

    return-void
.end method


# virtual methods
.method dockTypeToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mType:I

    packed-switch v0, :pswitch_data_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "TYPE_UNDOCKED"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "TYPE_DEX_STATION"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "TYPE_ADAPTER"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "TYPE_INTERNAL_SCREEN"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "TYPE_DEX_PAD"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "TYPE_DEX_RESERVED"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x2710
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
    .end packed-switch
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mType:I

    return v0
.end method

.method public isDesktopModeSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mDesktopModeSupported:Z

    return v0
.end method

.method public isDexStation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mIsDexStation:Z

    return v0
.end method

.method public isTouchpadSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mTouchpadSupported:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_desktopmode_DesktopModeHwManager$DockState_46664()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap4(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)V

    return-void
.end method

.method onConfigurationChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get17(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap7(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)V

    :cond_d
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->getUseDexMacAddress()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DockManager;->requestVirtualMacAddress(Z)V

    :cond_22
    return-void
.end method

.method onSetDesktopModeInner(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-set1(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z

    return-void
.end method

.method onStartLoadingScreen(ZZ)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get14(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get22(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get7(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get7(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_2a
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v2, v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateSPenModeSetting(ZI)V

    if-nez p1, :cond_84

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DeviceDisplayManager;->setDeviceEventListener(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get21(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get20(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get17(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get16(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get18(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    :cond_84
    return-void

    :cond_85
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap3(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    goto :goto_2a
.end method

.method onStopLoadingScreen(ZZ)V
    .registers 11

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get15(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "hdmi_mode"

    const/4 v5, -0x1

    invoke-static {v1, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    if-nez v0, :cond_d9

    move v1, v2

    :goto_16
    invoke-virtual {v4, v1, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setDisplayPortState(ZZ)V

    if-eqz p1, :cond_e6

    if-eqz p2, :cond_e6

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get9(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isTouchpadAvailable()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get5(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isCoverSupportStatePartial()Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_41
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x10402a6

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_4d
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get5(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isCoverSupportStatePartial()Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get7(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap4(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)V

    :cond_6f
    :goto_6f
    if-eqz p1, :cond_c6

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DeviceDisplayManager;->setDeviceEventListener(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get21(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get20(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get17(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v1

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get16(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.pen.INSERT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get18(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    :cond_c6
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get14(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get22(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void

    :cond_d9
    move v1, v3

    goto/16 :goto_16

    :cond_dc
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateTouchpadScreen()V

    goto :goto_6f

    :cond_e6
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/DeviceDisplayManager;->blockDefaultDisplayAndTouchScreen(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/CoverSupportStateController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    if-nez p1, :cond_12d

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/CoverSupportStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->isCoverSupportStatePartial()Z

    move-result v1

    if-eqz v1, :cond_13d

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_114

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "SendDelay removeDualViewDisplay()"

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_114
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get7(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get7(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A$1;

    invoke-direct {v4, p0}, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A$1;-><init>(Ljava/lang/Object;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12d
    :goto_12d
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-get17(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    goto/16 :goto_6f

    :cond_13d
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->this$0:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager;->-wrap4(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)V

    goto :goto_12d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DockState(mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->dockTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDesktopModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mDesktopModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsDexStation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mIsDexStation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTouchpadSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->mTouchpadSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
