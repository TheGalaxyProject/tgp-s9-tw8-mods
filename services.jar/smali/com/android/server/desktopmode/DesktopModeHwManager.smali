.class Lcom/android/server/desktopmode/DesktopModeHwManager;
.super Ljava/lang/Object;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeHwManager$1;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$2;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$3;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$4;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$5;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$6;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$7;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;,
        Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sSupportedDockUsbpdIds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatteryChangedListener:Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

.field private mConnectedDisplay:Landroid/view/Display;

.field private mConnectedKeyboard:Landroid/view/InputDevice;

.field private mConnectedMouse:Landroid/view/InputDevice;

.field private final mContext:Landroid/content/Context;

.field private final mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

.field private final mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDockManager:Lcom/android/server/desktopmode/DockManager;

.field private mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

.field private mDualViewDisplayId:I

.field private final mDualViewHandler:Landroid/os/Handler;

.field private mForcedInternalScreenModeEnabled:Z

.field private final mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field private mHasContentsInDualView:Z

.field private final mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mIsBtMouseDeepSleep:Z

.field private mIsExternalDisplayConnected:Z

.field private mIsKeyboardConnected:Z

.field private mIsMouseConnected:Z

.field private mIsSPenDetached:Z

.field private mIsWiredCharging:Z

.field private mIsWiredFastCharging:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

.field private final mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPreviousConnectedDisplay:Landroid/view/Display;

.field private mRawDockState:I

.field private mRawDockUsbpdIds:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

.field private mSPenFeatureEnabled:Z

.field private final mSPenModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field private final mTouchpadAlwaysOnSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private final mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredCharging:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredFastCharging:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/desktopmode/DesktopModeHwManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/PowerManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenFeatureEnabled:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/CoverSupportStateController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mTouchpadAlwaysOnSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/wm/WindowManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DeviceDisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DockManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/DesktopModeHwManager;)Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/DesktopModeHwManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/DesktopModeHwManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsBtMouseDeepSleep:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredCharging:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredFastCharging:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateExternalDisplayStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/desktopmode/DesktopModeHwManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateInputDeviceStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->createDualViewDisplay()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->removeDualViewDisplay(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/desktopmode/DesktopModeHwManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setRawDockState(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/desktopmode/DesktopModeHwManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setRawDockUsbpdIds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/desktopmode/DesktopModeHwManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setSPenDetector(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x2712

    const/16 v3, 0x2715

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a027"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a029"

    const/16 v2, 0x2714

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a025"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a020"

    const/16 v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04b4:2122"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a02a"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a02b"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a02c"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a02d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a02e"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a02f"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a030"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a031"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a032"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    const-string/jumbo v1, "04e8:a033"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Looper;)V
    .registers 10

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsKeyboardConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsBtMouseDeepSleep:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mHasContentsInDualView:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredCharging:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredFastCharging:Z

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockState:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$1;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$2;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$3;

    const-string/jumbo v1, "spen_mode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$3;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$4;

    const-string/jumbo v1, "touchpad_enabled"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$4;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$5;

    const-string/jumbo v1, "touchpad_always_on_enabled"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$5;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mTouchpadAlwaysOnSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$6;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenDetachedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$7;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mUEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    new-instance v0, Lcom/android/server/desktopmode/CoverSupportStateController;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/desktopmode/CoverSupportStateController;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    new-instance v0, Lcom/android/server/desktopmode/DeviceDisplayManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/desktopmode/DeviceDisplayManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    new-instance v0, Lcom/android/server/desktopmode/DockManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-direct {v0, v1, p0, v2, p2}, Lcom/android/server/desktopmode/DockManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/SettingsHelper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const-string/jumbo v0, "MultiScreen"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiScreenManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mInputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewHandler:Landroid/os/Handler;

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeHwManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$8;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private createDualViewDisplay()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiScreenManagerService;->createDualViewDisplay()I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createDualViewDisplay(), mDualViewDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method private getBatteryChangedIntent()Landroid/content/Intent;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private isTouchpadAlawayOnEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "touchpad_always_on_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeDualViewDisplay(Z)V
    .registers 10

    const/4 v3, 0x0

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDualViewDisplay()"

    invoke-static {v2, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    invoke-virtual {p0, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager;->onDualViewContentsPresenceChanged(Z)V

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A$2;

    invoke-direct {v5, p1, p0}, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A$2;-><init>(ZLjava/lang/Object;)V

    if-eqz p1, :cond_3f

    const/16 v2, 0x64

    :goto_24
    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDisplayChanged(ZZ)V

    goto :goto_2e

    :cond_3f
    move v2, v3

    goto :goto_24

    :cond_41
    return-void
.end method

.method private setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADB command received; setForcedInternalScreenMode(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz p2, :cond_60

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    if-ne p1, v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Internal screen DeX mode is already turned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_40

    const-string/jumbo v0, "on!"

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_40
    const-string/jumbo v0, "off!"

    goto :goto_34

    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_66

    const-string/jumbo v0, "Entering"

    :goto_4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " internal screen DeX mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_60
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockStatus()Z

    return-void

    :cond_66
    const-string/jumbo v0, "Exiting"

    goto :goto_4e
.end method

.method private setRawDockState(I)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDockState(), state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockState:I

    return-void
.end method

.method private setRawDockUsbpdIds(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRawDockUsbpdIds(), usbpdIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    return-void
.end method

.method private setSPenDetector(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    goto :goto_9
.end method

.method private updateDockStatus()Z
    .registers 15

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockState:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    const-string/jumbo v1, "/sys/class/sec/ccic/state"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setRawDockState(I)V

    const-string/jumbo v1, "/sys/class/sec/ccic/usbpd_ids"

    const-string/jumbo v4, ""

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setRawDockUsbpdIds(Ljava/lang/String;)V

    :cond_1d
    iget-object v13, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockState:I

    if-eqz v1, :cond_be

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v1, 0x2715

    if-ne v2, v1, :cond_93

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V

    :goto_48
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_70

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDockStatus(), new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    const/4 v10, 0x0

    invoke-virtual {v13}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v4

    if-eq v1, v4, :cond_100

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_83
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v11, v0, v13}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDockStateChanged(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)V

    goto :goto_83

    :cond_93
    const/16 v1, 0x2711

    if-ne v2, v1, :cond_a1

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V

    goto :goto_48

    :cond_a1
    const/16 v1, 0x2714

    if-ne v2, v1, :cond_af

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V

    goto :goto_48

    :cond_af
    const/4 v3, 0x0

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_b5

    const/4 v3, 0x1

    :cond_b5
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V

    goto :goto_48

    :cond_be
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    if-eqz v1, :cond_d0

    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    const/16 v6, 0x2713

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;IZZZ)V

    goto/16 :goto_48

    :cond_d0
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;)V

    goto/16 :goto_48

    :cond_d7
    const/4 v10, 0x1

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->getType()I

    move-result v1

    const/16 v4, 0x2710

    if-ne v1, v4, :cond_101

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

    if-eqz v1, :cond_ee

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

    :cond_ee
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredFastCharging:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "dock_usbpd_ids"

    const/16 v5, 0x2710

    invoke-static {v1, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_fb
    :goto_fb
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateTouchpadScreen()V

    :cond_100
    return v10

    :cond_101
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;-><init>(Lcom/android/server/desktopmode/DesktopModeHwManager;Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mBatteryChangedListener:Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager$BatteryChangedListener;->register()V

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "dock_usbpd_ids"

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v5, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_fb
.end method

.method private updateExternalDisplayStatus()Z
    .registers 14

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedDisplay:Landroid/view/Display;

    if-nez v8, :cond_8f

    const/4 v1, -0x1

    :goto_e
    const/4 v0, 0x0

    const/4 v8, 0x0

    array-length v9, v4

    :goto_11
    if-ge v8, v9, :cond_4e

    aget-object v3, v4, v8

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v7

    if-eq v7, v12, :cond_2b

    const/4 v10, 0x5

    if-ne v7, v10, :cond_97

    invoke-virtual {v3}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "com.displaylink"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_97

    :cond_2b
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_48

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Connected external display="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/4 v0, 0x1

    move-object v5, v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    :cond_4e
    if-nez v0, :cond_9b

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_9b

    const-string/jumbo v8, "/sys/class/dp_sec/dex"

    invoke-static {v8}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v12, :cond_9b

    const/4 v0, 0x1

    :cond_64
    :goto_64
    const/4 v2, 0x0

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    if-eq v8, v0, :cond_6f

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockStatus()Z

    const/4 v2, 0x1

    :cond_6f
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_8e

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsExternalDisplayConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return v2

    :cond_8f
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto/16 :goto_e

    :cond_97
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    :cond_9b
    if-eq v1, v6, :cond_64

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedDisplay:Landroid/view/Display;

    iput-object v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPreviousConnectedDisplay:Landroid/view/Display;

    iput-object v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedDisplay:Landroid/view/Display;

    goto :goto_64
.end method

.method private updateInputDeviceStatus()Z
    .registers 15

    const/4 v9, 0x0

    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_d

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Call updateInputDevice()"

    invoke-static {v8, v10}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v6, 0x0

    const/4 v5, 0x0

    array-length v10, v1

    move v8, v9

    :goto_17
    if-ge v8, v10, :cond_94

    aget v0, v1, v8

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v11, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_48

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v11

    and-int/lit8 v11, v11, 0xe

    if-eqz v11, :cond_4b

    const/4 v4, 0x1

    :goto_32
    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4d

    const/4 v3, 0x1

    :goto_3a
    if-eqz v4, :cond_4f

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v11, :cond_4f

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v11, v2}, Lcom/samsung/android/vr/GearVrManagerInternal;->isGearVrInputDevice(Landroid/view/InputDevice;)Z

    move-result v11

    if-eqz v11, :cond_4f

    :cond_48
    :goto_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_4b
    const/4 v4, 0x0

    goto :goto_32

    :cond_4d
    const/4 v3, 0x0

    goto :goto_3a

    :cond_4f
    or-int/2addr v6, v4

    or-int/2addr v5, v3

    if-eqz v4, :cond_72

    sget-boolean v11, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v11, :cond_70

    sget-object v11, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected mouse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedMouse:Landroid/view/InputDevice;

    :cond_72
    if-eqz v3, :cond_48

    sget-boolean v11, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v11, :cond_91

    sget-object v11, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connected keyboard="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    iput-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedKeyboard:Landroid/view/InputDevice;

    goto :goto_48

    :cond_94
    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    if-eq v8, v6, :cond_df

    const/4 v7, 0x1

    :goto_99
    iput-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsKeyboardConnected:Z

    iget-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsBtMouseDeepSleep:Z

    if-eqz v8, :cond_b2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_b0

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Enter the BT mouse deep sleep routine in updateInputDeviceStatus()"

    invoke-static {v8, v10}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    iput-boolean v9, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsBtMouseDeepSleep:Z

    :cond_b2
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_de

    sget-object v8, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mIsMouseConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mIsKeyboardConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsKeyboardConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    return v7

    :cond_df
    const/4 v7, 0x0

    goto :goto_99
.end method

.method private updateSPenFeature()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenFeatureEnabled:Z

    return-void
.end method


# virtual methods
.method command(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const-string/jumbo v0, "on"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string/jumbo v0, "off"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, v2, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V

    goto :goto_10

    :cond_20
    const-string/jumbo v0, "toggle"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setForcedInternalScreenMode(ZLjava/io/PrintWriter;)V

    goto :goto_10
.end method

.method disableCoverManager(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v0, "mConnectedDisplay"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedDisplay:Landroid/view/Display;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mConnectedKeyboard"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedKeyboard:Landroid/view/InputDevice;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mConnectedMouse"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedMouse:Landroid/view/InputDevice;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDockState"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDualViewDisplayId"

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mForcedInternalScreenModeEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mHasContentsInDualView"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mHasContentsInDualView:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsBtMouseDeepSleep"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsBtMouseDeepSleep:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsExternalDisplayConnected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsKeyboardConnected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsKeyboardConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsMouseConnected"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsSPenDetached"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsWiredCharging"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredCharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsWiredFastCharging"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredFastCharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mListeners"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mPreviousConnectedDisplay"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPreviousConnectedDisplay:Landroid/view/Display;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mRawDockState"

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockState:I

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->dockStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mRawDockUsbpdIds"

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mSPenFeatureEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenFeatureEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/CoverSupportStateController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DockManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method getBatteryLevel()I
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getBatteryChangedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v1, "level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_f
    return v2
.end method

.method getConnectedDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mConnectedDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getCoverSupportState()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverSupportState()I

    move-result v0

    return v0
.end method

.method getDockChargerPower()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->getDockChargerPower()I

    move-result v0

    return v0
.end method

.method getPreviousConnectedDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mPreviousConnectedDisplay:Landroid/view/Display;

    return-object v0
.end method

.method hasContentsInDualView()Z
    .registers 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasContentsInDualView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mHasContentsInDualView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mHasContentsInDualView:Z

    return v0
.end method

.method initialize()V
    .registers 6

    const/4 v2, 0x0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initialize()"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockStatus()Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "hdmi_mode"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2f

    const/4 v1, 0x1

    :goto_1d
    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->setDisplayPortState(ZZ)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateSPenFeature()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateExternalDisplayStatus()Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateInputDeviceStatus()Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->initialize()V

    return-void

    :cond_2f
    move v1, v2

    goto :goto_1d
.end method

.method isBtMouseDeepSleep()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsBtMouseDeepSleep:Z

    return v0
.end method

.method isCoverSupportStatePartial()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->isCoverSupportStatePartial()Z

    move-result v0

    return v0
.end method

.method isDefaultDisplayBlocked()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->isDefaultDisplayBlocked()Z

    move-result v0

    return v0
.end method

.method isDesktopDockConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v0

    return v0
.end method

.method isDesktopDockConnectedOrForced()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDexStation()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDesktopModeSupported()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method isDexPadConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->-get0(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)I

    move-result v0

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isDexPadConnectedOrForced()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDexPadConnected()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isDesktopModeSupported()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method isDexReservedConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->-get0(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)I

    move-result v0

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isDockFastChargingAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingAvailable()Z

    move-result v0

    return v0
.end method

.method isDockFastChargingEnabling()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingEnabling()Z

    move-result v0

    return v0
.end method

.method isDockFastChargingUsing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFastChargingUsing()Z

    move-result v0

    return v0
.end method

.method isDockFotaUpdateInProgress()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->isDockFotaUpdateInProgress()Z

    move-result v0

    return v0
.end method

.method isExternalDisplayConnected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    return v0
.end method

.method isExternalDisplayConnectedOrForced()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsExternalDisplayConnected:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method isForcedInternalScreenModeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    return v0
.end method

.method isKeyboardConnected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsKeyboardConnected:Z

    return v0
.end method

.method isMouseConnected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    return v0
.end method

.method isSPenDetached()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    return v0
.end method

.method isSPenFeatureEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mSPenFeatureEnabled:Z

    return v0
.end method

.method isSupportedDockUsbpdIds()Z
    .registers 3

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTouchpadAvailable()Z
    .registers 6

    const/4 v4, 0x1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_8b

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTouchpadAvailable(), DockState.isTouchpadSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isTouchpadSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsExternalDisplayConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isExternalDisplayConnectedOrForced()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsMouseConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsSPenDetached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDualViewDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isTouchpadAlawayOnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isTouchpadAlawayOnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "touchpad_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "touchpad_enabled"

    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->isTouchpadSupported()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isExternalDisplayConnectedOrForced()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsMouseConnected:Z

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    if-nez v0, :cond_a7

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isTouchpadAlawayOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_b6

    :cond_a7
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDualViewDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "touchpad_enabled"

    invoke-static {v0, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    :goto_b5
    return v0

    :cond_b6
    const/4 v0, 0x0

    goto :goto_b5
.end method

.method isWiredCharging()Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getBatteryChangedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string/jumbo v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_16

    const/4 v4, 0x2

    if-ne v1, v4, :cond_43

    :cond_16
    :goto_16
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredCharging:Z

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsWiredCharging:Z

    :cond_1a
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_42

    sget-object v3, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isWiredCharging="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", plugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return v2

    :cond_43
    const/4 v3, 0x0

    goto :goto_16
.end method

.method isWiredChargingOrForced()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mForcedInternalScreenModeEnabled:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isWiredCharging()Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method isWiredFastCharging()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getBatteryChangedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string/jumbo v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    :cond_16
    const-string/jumbo v3, "hv_charger"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1d
    return v1

    :cond_1e
    return v5
.end method

.method isWirelessCharging()Z
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getBatteryChangedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2

    :cond_14
    return v2
.end method

.method synthetic lambda$-com_android_server_desktopmode_DesktopModeHwManager_10465(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_42

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    const/16 v3, 0x4002

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    if-nez v3, :cond_2a

    if-eqz v0, :cond_42

    const-string/jumbo v3, "sec_e-pen-pad"

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_2a
    iput-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mIsSPenDetached:Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v1, v5}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onSPenStateChanged(Z)V

    goto :goto_32

    :cond_42
    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_DesktopModeHwManager_32805(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mMultiScreenManager:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->removeDualViewDisplay(Z)V

    return-void
.end method

.method logGsimConnectedAccessoryInformation()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mCoverController:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->getCoverType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_38

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Gsim extra data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "LCAI"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeLogger;->logGsim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method notifyOnConfigurationChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->onConfigurationChanged(Z)V

    return-void
.end method

.method notifyOnStartLoadingScreen(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->onStartLoadingScreen(ZZ)V

    return-void
.end method

.method notifyOnStopLoadingScreen(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->onStopLoadingScreen(ZZ)V

    return-void
.end method

.method notifySetDesktopModeInner(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockState:Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;->onSetDesktopModeInner(ZZ)V

    return-void
.end method

.method onDualViewContentsPresenceChanged(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mHasContentsInDualView:Z

    if-eq v0, p1, :cond_28

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDualViewContentsPresenceChanged(), hasContents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mHasContentsInDualView:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateTouchpadScreen()V

    :cond_28
    return-void
.end method

.method registerListener(Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method requestCheckFotaUpdateAvailable()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->requestCheckFotaUpdateAvailable()V

    return-void
.end method

.method setAlpmMode(I)V
    .registers 11

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_26

    sget-object v4, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAlpmMode(), mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/lcd/panel/alpm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_53

    const/4 v2, 0x0

    :try_start_35
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3a} :catch_56
    .catchall {:try_start_35 .. :try_end_3a} :catchall_72

    :try_start_3a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_41} :catch_77
    .catchall {:try_start_3a .. :try_end_41} :catchall_74

    if-eqz v3, :cond_46

    :try_start_43
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_54
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_49

    :cond_46
    :goto_46
    if-eqz v5, :cond_53

    :try_start_48
    throw v5
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    move-object v2, v3

    :goto_4b
    sget-object v4, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to set Alpm mode"

    invoke-static {v4, v5, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    return-void

    :catch_54
    move-exception v5

    goto :goto_46

    :catch_56
    move-exception v4

    :goto_57
    :try_start_57
    throw v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_5c
    if-eqz v2, :cond_61

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_64

    :cond_61
    :goto_61
    if-eqz v5, :cond_71

    :try_start_63
    throw v5

    :catch_64
    move-exception v0

    goto :goto_4b

    :catch_66
    move-exception v6

    if-nez v5, :cond_6b

    move-object v5, v6

    goto :goto_61

    :cond_6b
    if-eq v5, v6, :cond_61

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_61

    :cond_71
    throw v4
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_72} :catch_64

    :catchall_72
    move-exception v4

    goto :goto_5c

    :catchall_74
    move-exception v4

    move-object v2, v3

    goto :goto_5c

    :catch_77
    move-exception v4

    move-object v2, v3

    goto :goto_57
.end method

.method setDisplayPortState(ZZ)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_33

    move v3, v1

    :goto_5
    shl-int/lit8 v3, v3, 0x4

    if-eqz p2, :cond_35

    :goto_9
    or-int v0, v3, v1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeHwManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayPortState(), state=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const-string/jumbo v1, "/sys/class/dp_sec/dex"

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    return-void

    :cond_33
    move v3, v2

    goto :goto_5

    :cond_35
    move v1, v2

    goto :goto_9
.end method

.method setFastChargingEnable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DockManager;->setFastChargingEnable(Z)V

    return-void
.end method

.method setTspPressureDisabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDeviceDisplayManager:Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->setTspPressureDisabled(Z)V

    return-void
.end method

.method startFotaUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DockManager;->startFotaUpdate()V

    return-void
.end method

.method unregisterListener(Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method updateDockFastChargingState(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDockFastChargingStateChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method updateDockFastChargingState(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    return-void
.end method

.method updateDockFotaState(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    return-void
.end method

.method updateDockLowChargerPower(Z)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onDockLowChargerPowerChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method updateTouchpadState(ZI)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeHwManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;->onTouchpadEnabled(ZI)V

    goto :goto_6

    :cond_16
    return-void
.end method
