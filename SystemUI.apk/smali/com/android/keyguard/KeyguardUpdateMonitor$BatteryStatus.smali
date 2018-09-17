.class public Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryStatus"
.end annotation


# instance fields
.field private final BATTERY_HEALTH_OVERHEATLIMIT:I

.field private final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I

.field public final health:I

.field public final highVoltage:Z

.field public final level:I

.field public final maxChargingWattage:I

.field public final online:I

.field public final plugged:I

.field public remaining:J

.field public final status:I


# direct methods
.method public constructor <init>(IIIIIIZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->BATTERY_HEALTH_OVERHEATLIMIT:I

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    iput p5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iput p6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    iput-boolean p7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    return-void
.end method


# virtual methods
.method public final getChargeEnabled()Z
    .registers 3

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public final getChargingSpeed(II)I
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-gtz v1, :cond_7

    const/4 v0, -0x1

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-lt v1, p1, :cond_6

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-le v0, p2, :cond_11

    const/4 v0, 0x2

    goto :goto_6

    :cond_11
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public final getChargingType()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->highVoltage:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    return v0

    :cond_7
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->online:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_15

    const/16 v0, 0xd

    return v0

    :cond_15
    const/16 v0, 0xc

    return v0

    :cond_18
    const/16 v0, 0xa

    return v0
.end method

.method public isBatteryLow()Z
    .registers 3

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCharged()Z
    .registers 3

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPluggedIn()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method
