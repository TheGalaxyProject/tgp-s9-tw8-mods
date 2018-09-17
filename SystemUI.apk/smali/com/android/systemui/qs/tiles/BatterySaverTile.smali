.class public Lcom/android/systemui/qs/tiles/BatterySaverTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "BatterySaverTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;"
    }
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

.field private mCharging:Z

.field private mDetailShown:Z

.field private mLevel:I

.field private mPluggedIn:Z

.field private mPowerSave:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/statusbar/policy/BatteryController;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Lcom/android/systemui/qs/QSHost;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mHost:Lcom/android/systemui/qs/QSHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/BatterySaverTile;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mLevel:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/BatterySaverTile;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatterySaverTile;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatterySaverTile;Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x105

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSaveMode(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_5
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v0, 0x7f08028f

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mContext:Landroid/content/Context;

    const v1, 0x7f12013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_2c
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_5

    :cond_32
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .registers 10

    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mCharging:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    :cond_16
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mPowerSave:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile;->refreshState(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mDetailShown:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    :cond_f
    return-void
.end method

.method public setDetailListening(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setDetailListening(Z)V

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryDetail:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-set0(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;

    :cond_b
    return-void
.end method

.method public setListening(Z)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_7
.end method
