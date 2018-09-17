.class Lcom/android/server/desktopmode/DeviceDisplayManager;
.super Ljava/lang/Object;
.source "DeviceDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DeviceDisplayManager$1;
    }
.end annotation


# static fields
.field private static final DELAY_SET_DEFAULT_DISPLAY_ON:I = 0x0

.field private static final DELAY_UPDATE_STATE:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBlockDeviceDisplayRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

.field private final mDisplayHandler:Landroid/os/Handler;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

.field private final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsDefaultDisplayBlocked:Z

.field private mIsDeviceDisplayBlocked:Z

.field private mIsTouchpadScreenShowing:Z

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mTouchScreenBlocked:Z

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateTouchpadScreenRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/desktopmode/DeviceDisplayManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/DeviceDisplayManager;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUpdateTouchpadScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUpdateTouchpadScreenRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDefaultDisplayBlocked:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDeviceDisplayBlocked:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mTouchScreenBlocked:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsTouchpadScreenShowing:Z

    new-instance v0, Lcom/android/server/desktopmode/DeviceDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DeviceDisplayManager$1;-><init>(Lcom/android/server/desktopmode/DeviceDisplayManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUiHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDisplayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mBlockDeviceDisplayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private blockTouchScreen(Z)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "blockTouchScreen(), block="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTouchScreenBlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mTouchScreenBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mTouchScreenBlocked:Z

    if-eq v0, p1, :cond_3c

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mTouchScreenBlocked:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v3, v3, v1}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private handleUpdateTouchpadScreen()V
    .registers 6

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateTouchpadScreen()"

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isTouchpadAvailable()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->hasContentsInDualView()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v0

    :goto_2c
    iget-object v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDesktopDockConnected()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/16 v1, 0x12d

    :goto_36
    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->setTouchpadScreen(ZI)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateDeviceDisplayBlockState()V

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_2c

    :cond_3f
    const/16 v1, 0x12c

    goto :goto_36
.end method

.method private isDefaultDisplayBlockedInternal()Z
    .registers 3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->hasContentsInDualView()Z

    move-result v1

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsTouchpadScreenShowing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_20
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeLoadingScreenShowing()Z

    move-result v1

    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x1

    goto :goto_24

    :cond_27
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private notifyToShowTouchpadUi(ZI)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsTouchpadScreenShowing:Z

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateTouchpadState(ZI)V

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsTouchpadScreenShowing:Z

    :cond_b
    return-void
.end method

.method private setDefaultDisplayPowerMode(I)V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultDisplayPowerMode(), mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/desktopmode/Utils;->powerModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-eq p1, v6, :cond_43

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v5}, Landroid/os/PowerManagerInternal;->setForcedDisplayOff(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isSPenFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string/jumbo v1, "/sys/class/sec/sec_epen/input/enabled"

    invoke-static {v1, v5}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    :cond_43
    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDefaultDisplayPowerMode(I)V

    if-ne p1, v6, :cond_67

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v4}, Landroid/os/PowerManagerInternal;->setForcedDisplayOff(Z)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->isSPenSystemFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    const-string/jumbo v1, "/sys/class/sec/sec_epen/input/enabled"

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    :cond_67
    return-void
.end method

.method private setTouchpadScreen(ZI)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadScreen(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-eqz p1, :cond_3a

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/desktopmode/DeviceDisplayManager;->notifyToShowTouchpadUi(ZI)V

    :goto_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isSPenFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DeviceDisplayManager;->updateSPenModeSetting(ZI)V

    :cond_39
    return-void

    :cond_3a
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->notifyToShowTouchpadUi(ZI)V

    goto :goto_2e
.end method

.method private updateDeviceDisplayBlockState()V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->isDefaultDisplayBlockedInternal()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDeviceDisplayBlocked:Z

    if-eq v1, v0, :cond_1a

    iput-boolean v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDeviceDisplayBlocked:Z

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDisplayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mBlockDeviceDisplayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDisplayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mBlockDeviceDisplayRunnable:Ljava/lang/Runnable;

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_desktopmode_DeviceDisplayManager-mthref-0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->handleUpdateTouchpadScreen()V

    return-void
.end method

.method blockDefaultDisplayAndTouchScreen(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDefaultDisplayBlocked:Z

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->setDefaultDisplayPowerMode(I)V

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DeviceDisplayManager;->blockTouchScreen(Z)V

    return-void

    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/DeviceDisplayManager;

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

    const-string/jumbo v0, "mIsDefaultDisplayBlocked"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDefaultDisplayBlocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsTouchpadScreenShowing"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsTouchpadScreenShowing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mTouchScreenBlocked"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mTouchScreenBlocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method isDefaultDisplayBlocked()Z
    .registers 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDefaultDisplayBlocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDefaultDisplayBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDefaultDisplayBlocked:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_desktopmode_DeviceDisplayManager_5190()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mIsDeviceDisplayBlocked:Z

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->blockDefaultDisplayAndTouchScreen(Z)V

    return-void
.end method

.method setDeviceEventListener(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->registerListener(Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mDeviceEventListener:Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->unregisterListener(Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;)V

    goto :goto_9
.end method

.method setTspPressureDisabled(Z)V
    .registers 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/android/server/desktopmode/DeviceDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTspPressureDisabled(),  enter= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "navigationbar_force_touch_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_32

    const-string/jumbo v1, "/sys/class/sec/tsp/pressure_enable"

    if-eqz p1, :cond_2f

    const/4 v0, 0x0

    :cond_2f
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    :cond_32
    return-void
.end method

.method updateSPenModeSetting(ZI)V
    .registers 7

    const/4 v3, 0x3

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    packed-switch p2, :pswitch_data_5a

    :goto_7
    return-void

    :pswitch_8
    const-string/jumbo v0, "/sys/class/sec/sec_epen/dex_enable"

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode"

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "spen_mode_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_7

    :pswitch_21
    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode_icon"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_7

    :pswitch_30
    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode_icon"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_40
    const-string/jumbo v1, "/sys/class/sec/sec_epen/dex_enable"

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "spen_mode"

    invoke-static {v0, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_56
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;I)V

    goto :goto_7

    :pswitch_data_5a
    .packed-switch 0x12c
        :pswitch_8
        :pswitch_21
        :pswitch_30
    .end packed-switch
.end method

.method updateTouchpadScreen()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUpdateTouchpadScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/DeviceDisplayManager;->mUpdateTouchpadScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
