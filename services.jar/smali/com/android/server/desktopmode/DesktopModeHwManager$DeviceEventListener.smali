.class Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;
.super Ljava/lang/Object;
.source "DesktopModeHwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeHwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceEventListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onDisplayChanged(ZZ)V
    .registers 3

    return-void
.end method

.method onDisplayUpdated()V
    .registers 1

    return-void
.end method

.method onDockFastChargingStateChanged(I)V
    .registers 2

    return-void
.end method

.method onDockLowChargerPowerChanged(Z)V
    .registers 2

    return-void
.end method

.method onDockStateChanged(Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;Lcom/android/server/desktopmode/DesktopModeHwManager$DockState;)V
    .registers 3

    return-void
.end method

.method onInputDeviceChanged(Z)V
    .registers 2

    return-void
.end method

.method onSPenStateChanged(Z)V
    .registers 2

    return-void
.end method

.method onTouchpadEnabled(ZI)V
    .registers 3

    return-void
.end method

.method onWiredChargingChanged(Z)V
    .registers 2

    return-void
.end method
