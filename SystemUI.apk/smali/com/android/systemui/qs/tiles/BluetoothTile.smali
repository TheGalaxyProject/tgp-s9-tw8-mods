.class public Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BluetoothTile$1;,
        Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field mAvailableItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSDetailItems$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mBlueToothState:I

.field private final mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

.field private mDetailListening:Z

.field private mDoStopScan:Z

.field private final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field mPairedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSDetailItems$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .registers 1

    sget-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/ActivityStarter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailListening:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/util/SettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BluetoothTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDoStopScan:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->isBlockedByEASPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDoStopScan:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBlueToothState:I

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method

.method private isBlockedByEASPolicy()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method


# virtual methods
.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 2

    new-instance v0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    const/4 v0, 0x0

    return-object v0

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x71

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12088e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleClick enabled ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " state =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    return-void

    :cond_42
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$d_2AV4Wsx9jl1GMC_1YxsYZswFQ$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$d_2AV4Wsx9jl1GMC_1YxsYZswFQ$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_7c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->canConfigBluetooth()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_93
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(ZZ)V

    return-void
.end method

.method protected handleDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 4

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showItPolicyToast()V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->canConfigBluetooth()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 16

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v3

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v1

    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v9, v6, :cond_126

    const/4 v7, 0x1

    :goto_17
    iget v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBlueToothState:I

    if-eq v9, v1, :cond_129

    const/4 v2, 0x1

    :goto_1c
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleUpdateState enabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " connected = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " bluetoothState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_52

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    invoke-virtual {v9, v6}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    :cond_52
    iput v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mBlueToothState:I

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnecting()Z

    move-result v9

    if-nez v9, :cond_12c

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_12f

    const/4 v9, 0x1

    :goto_67
    iput-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_73

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/BluetoothTile;->fireToggleStateChanged(Z)V

    :cond_73
    if-eqz v6, :cond_1c7

    const/4 v9, 0x0

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_16b

    const v9, 0x7f080290

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_90

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :cond_90
    const/4 v9, 0x1

    if-ne v4, v9, :cond_132

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getLastDeviceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f120038

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :goto_ae
    iget-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c1

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v10, 0x7f12088e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    :cond_c1
    const/4 v9, 0x2

    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :goto_c4
    const v9, 0x7f0804f4

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_e4

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f120038

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    :cond_e4
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v9, :cond_1eb

    const v9, 0x7f120063

    :goto_ed
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v10, 0x7f12088e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1f0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    :goto_125
    return-void

    :cond_126
    const/4 v7, 0x0

    goto/16 :goto_17

    :cond_129
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_12c
    const/4 v9, 0x1

    goto/16 :goto_67

    :cond_12f
    const/4 v9, 0x0

    goto/16 :goto_67

    :cond_132
    const/4 v9, 0x2

    if-lt v4, v9, :cond_161

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f120888

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f120888

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_ae

    :cond_161
    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "no connected device"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    :cond_16b
    iget-boolean v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->isTransient:Z

    if-eqz v9, :cond_190

    const v9, 0x7f080291

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v10, 0x7f1200a3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v10, 0x7f12088e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto/16 :goto_ae

    :cond_190
    const v9, 0x7f080294

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v11, 0x7f1200a5

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v11, 0x7f120084

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_ae

    :cond_1c7
    const v9, 0x7f080293

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v10, 0x7f12088e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mContext:Landroid/content/Context;

    const v10, 0x7f1200a4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    const/4 v9, 0x1

    iput v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto/16 :goto_c4

    :cond_1eb
    const v9, 0x7f120062

    goto/16 :goto_ed

    :cond_1f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_125
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothSupported()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_BluetoothTile_6647()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->handleClick()V

    return-void
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "1"

    :goto_b
    return-object v0

    :cond_c
    const-string/jumbo v0, "0"

    goto :goto_b
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v1, v0, :cond_18

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v1, :cond_54

    :cond_18
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState failed value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " state = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " enabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_54
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeStringToCurrentState set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, v0, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->fireToggleStateChanged(Z)V

    :cond_79
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .registers 11

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Detail is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailListening:Z

    if-ne v4, p1, :cond_1f

    return-void

    :cond_1f
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDetailListening:Z

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_37

    if-eqz p1, :cond_3a

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateListDevices()V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v4, v8}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scan(Z)V

    :cond_37
    :goto_37
    iput-boolean v8, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDoStopScan:Z

    return-void

    :cond_3a
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mDoStopScan:Z

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scan(Z)V

    :cond_44
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSDetailItems$Item;

    iget-object v1, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4b

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_64
    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v5, "1180"

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v5, "1181"

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_37
.end method

.method public setListening(Z)V
    .registers 2

    return-void
.end method
