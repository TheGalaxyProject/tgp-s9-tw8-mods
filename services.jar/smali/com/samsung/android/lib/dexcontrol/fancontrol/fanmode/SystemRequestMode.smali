.class public Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;
.super Ljava/lang/Object;
.source "SystemRequestMode.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/IFanMode;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenRequestMode"


# instance fields
.field private mDexModel:I

.field private mFanLevelTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;",
            ">;"
        }
    .end annotation
.end field

.field private mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    return-void
.end method

.method private getFanLevelTable()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;",
            "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    const v1, 0xa020

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_55
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v2, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method


# virtual methods
.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    if-nez v0, :cond_b

    :goto_5
    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mDexModel:I

    return-void

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mFanLevelTable:Ljava/util/Map;

    goto :goto_5
.end method

.method public getCurrentFanLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "curFanLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->getSiopLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ScreenRequestMode"

    invoke-static {v1, v0}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->getFanLevelTable()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    invoke-interface {v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->getSiopLevel()Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FAN_LEVEL;

    return-object v0
.end method

.method public onChangedDexMode()V
    .registers 1

    return-void
.end method

.method public declared-synchronized onChangedFanHoldingRequestCount(I)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onChangedSystemRequestStatus(Z)V
    .registers 4

    if-eqz p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fancontrol/fanmode/SystemRequestMode;->mIDexFanModeControl:Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-interface {v0, v1}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanModeControl;->setFanMode(Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;)V

    goto :goto_2
.end method
