.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$1;,
        Lcom/android/server/DockObserver$2;,
        Lcom/android/server/DockObserver$3;,
        Lcom/android/server/DockObserver$BinderService;,
        Lcom/android/server/DockObserver$logRecent;
    }
.end annotation


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final CCIC_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"

.field private static final CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final CCIC_DOCK_USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_DEVICE_TYPE_CCIC:I = 0x1

.field private static final DOCK_DEVICE_TYPE_MUIC:I = 0x0

.field private static final DOCK_DEVICE_TYPE_NONE:I = -0x1

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final SILENT_REBOOT_PATH:Ljava/lang/String; = "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private mActualUsbpdIds:Ljava/lang/String;

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mCcicObserver:Landroid/os/UEventObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUEventDevice:I

.field private final mLock:Ljava/lang/Object;

.field private mLogRecent:Lcom/android/server/DockObserver$logRecent;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mReportedUsbpdIds:Ljava/lang/String;

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private mUsbpdIds:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/DockObserver;)I
    .registers 2

    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/DockObserver;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DockObserver;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/DockObserver;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/DockObserver;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DockObserver;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/DockObserver;->shouldHandleOtherStateChange()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleOtherStateChange()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DockObserver;->mLastUEventDevice:I

    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/DockObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    new-instance v0, Lcom/android/server/DockObserver$logRecent;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$logRecent;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Landroid/os/UEventObserver;

    const-string/jumbo v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private handleDockStateChange()V
    .registers 9

    const/16 v7, 0x67

    iget-object v4, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    const-string/jumbo v3, "DockObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dock state changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_57

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v3, v7, :cond_57

    if-eq v2, v7, :cond_57

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_b5

    monitor-exit v4

    return-void

    :cond_57
    :try_start_57
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v6, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    :cond_65
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x20000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.intent.extra.SMART_DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.SMART_DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_aa

    iget-object v3, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_aa

    const-string/jumbo v3, "com.sec.intent.extra.DOCK_ID"

    iget-object v5, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_aa
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b3
    .catchall {:try_start_57 .. :try_end_b3} :catchall_b5

    monitor-exit v4

    return-void

    :catchall_b5
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleOtherStateChange()V
    .registers 12

    const/16 v10, 0x6a

    const/16 v9, 0x70

    const/16 v8, 0x69

    iget-object v4, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    const-string/jumbo v3, "DockObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Other state changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_69

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_9 .. :try_end_67} :catchall_a7

    monitor-exit v4

    return-void

    :cond_69
    :try_start_69
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v6, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    :cond_77
    const-class v3, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v2, :cond_fc

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v3, v8, :cond_94

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "HMT is connected"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_a7

    :cond_92
    :goto_92
    monitor-exit v4

    return-void

    :cond_94
    :try_start_94
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v3, v9, :cond_aa

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "HMT Tethered is connected"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V
    :try_end_a6
    .catchall {:try_start_94 .. :try_end_a6} :catchall_a7

    goto :goto_92

    :catchall_a7
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_aa
    if-ne v1, v8, :cond_be

    :try_start_ac
    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v3, :cond_be

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "HMT is disconnected"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_92

    :cond_be
    if-ne v1, v9, :cond_d3

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v3, :cond_d3

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "HMT Tethered is disconnected"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_92

    :cond_d3
    if-ne v1, v8, :cond_e7

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v3, v10, :cond_e7

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "HMT is abnormal"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_92

    :cond_e7
    if-ne v1, v9, :cond_92

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v3, v10, :cond_92

    const-string/jumbo v3, "DockObserver"

    const-string/jumbo v5, "HMT Tethered is abnormal"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1004

    invoke-virtual {v2, v3}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyDeviceEventChanged(I)V

    goto :goto_92

    :cond_fc
    const-string/jumbo v3, "DockObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HMT ignored.  mReportedDockState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " previousDock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catchall {:try_start_ac .. :try_end_123} :catchall_a7

    goto/16 :goto_92
.end method

.method private init()V
    .registers 12

    iget-object v9, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/16 v8, 0x400

    :try_start_5
    new-array v0, v8, [C

    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/switch/dock/state"

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_98
    .catchall {:try_start_5 .. :try_end_f} :catchall_95

    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_12
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget v8, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v8, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_85

    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2e} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_98
    .catchall {:try_start_2b .. :try_end_2e} :catchall_95

    :goto_2e
    :try_start_2e
    iget v8, p0, Lcom/android/server/DockObserver;->mActualDockState:I
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_95

    if-nez v8, :cond_83

    const/16 v8, 0x400

    :try_start_34
    new-array v1, v8, [C

    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3e} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_b8
    .catchall {:try_start_34 .. :try_end_3e} :catchall_95

    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_41
    invoke-virtual {v5, v1, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_a3

    :try_start_51
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    const/16 v8, 0x400

    new-array v0, v8, [C

    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_60} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_60} :catch_b8
    .catchall {:try_start_51 .. :try_end_60} :catchall_95

    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_63
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    iget v8, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v8, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_80
    .catchall {:try_start_63 .. :try_end_80} :catchall_b3

    :try_start_80
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_b8
    .catchall {:try_start_80 .. :try_end_83} :catchall_95

    :cond_83
    :goto_83
    monitor-exit v9

    return-void

    :catchall_85
    move-exception v8

    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v8
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_8a} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_98
    .catchall {:try_start_86 .. :try_end_8a} :catchall_95

    :catch_8a
    move-exception v2

    :try_start_8b
    const-string/jumbo v8, "DockObserver"

    const-string/jumbo v10, "This kernel does not have dock station support"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_95

    goto :goto_2e

    :catchall_95
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_98
    move-exception v3

    :try_start_99
    const-string/jumbo v8, "DockObserver"

    const-string/jumbo v10, ""

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_95

    goto :goto_2e

    :catchall_a3
    move-exception v8

    :try_start_a4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    throw v8
    :try_end_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a8} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a8} :catch_b8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_95

    :catch_a8
    move-exception v2

    :try_start_a9
    const-string/jumbo v8, "DockObserver"

    const-string/jumbo v10, "This kernel does not have ccic dock station support"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_95

    goto :goto_83

    :catchall_b3
    move-exception v8

    :try_start_b4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v8
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_b4 .. :try_end_b8} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_95

    :catch_b8
    move-exception v3

    :try_start_b9
    const-string/jumbo v8, "DockObserver"

    const-string/jumbo v10, ""

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_95

    goto :goto_83
.end method

.method private isDexmodeState(I)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_9

    const/16 v1, 0x6e

    if-ne p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x6f

    if-eq p1, v1, :cond_9

    const/16 v1, 0x72

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isOtherState(I)Z
    .registers 3

    const/16 v0, 0x69

    if-lt p1, v0, :cond_13

    const/16 v0, 0xff

    if-eq p1, v0, :cond_13

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->isDexmodeState(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isVrDevice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private setActualDockStateLocked(I)V
    .registers 8

    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$logRecent;

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iget-object v2, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/DockObserver$logRecent;->log(IILjava/lang/String;)V

    :cond_17
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_31

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_31

    const-string/jumbo v0, "DockObserver"

    const-string/jumbo v1, "Adjusting dock state value for compatibility"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    add-int/lit8 v0, v0, 0x5e

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    :cond_31
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_54

    iput v4, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    :goto_3b
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-eq v0, v5, :cond_43

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez v0, :cond_57

    :cond_43
    const-string/jumbo v0, "sys.dockstate"

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-ne v0, v5, :cond_57

    return-void

    :cond_54
    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    goto :goto_3b

    :cond_57
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_5e

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    :cond_5e
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_33

    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iget-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_30

    :cond_24
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "android.server:DOCK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_30
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_33
    return-void
.end method

.method private shouldHandleOtherStateChange()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/DockObserver;->isVrDevice()Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_25

    move-result v0

    if-eqz v0, :cond_d

    monitor-exit v1

    return v3

    :cond_d
    :try_start_d
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->isOtherState(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_25

    if-nez v0, :cond_1b

    :cond_19
    monitor-exit v1

    return v3

    :cond_1b
    :try_start_1b
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->isOtherState(I)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_25

    move-result v0

    if-nez v0, :cond_19

    monitor-exit v1

    return v2

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x226

    if-ne p1, v0, :cond_12

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v1

    :cond_12
    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStart()V
    .registers 4

    const-string/jumbo v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
