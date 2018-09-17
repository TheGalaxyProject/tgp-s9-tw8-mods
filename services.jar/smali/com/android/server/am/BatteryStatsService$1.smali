.class Lcom/android/server/am/BatteryStatsService$1;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryStatsService;->setBatteryState(IIIIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;

.field final synthetic val$chargeFullUAh:I

.field final synthetic val$chargeUAh:I

.field final synthetic val$health:I

.field final synthetic val$level:I

.field final synthetic val$plugType:I

.field final synthetic val$secCurrentEvent:I

.field final synthetic val$secEvent:I

.field final synthetic val$secOnline:I

.field final synthetic val$status:I

.field final synthetic val$temp:I

.field final synthetic val$volt:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIIII)V
    .registers 13

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    iput p9, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeFullUAh:I

    iput p10, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secEvent:I

    iput p11, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secOnline:I

    iput p12, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secCurrentEvent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v13

    :try_start_5
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    if-nez v0, :cond_33

    const/4 v12, 0x1

    :goto_a
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    if-ne v0, v12, :cond_35

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    iget v7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    iget v8, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeFullUAh:I

    iget v9, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secEvent:I

    iget v10, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secOnline:I

    iget v11, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secCurrentEvent:I

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIIII)V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_64

    monitor-exit v13

    return-void

    :cond_33
    const/4 v12, 0x0

    goto :goto_a

    :cond_35
    monitor-exit v13

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string/jumbo v1, "battery-state"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->updateExternalStatsSync(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v13

    :try_start_45
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$1;->val$status:I

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$1;->val$health:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$1;->val$plugType:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$1;->val$level:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$1;->val$temp:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$1;->val$volt:I

    iget v7, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeUAh:I

    iget v8, p0, Lcom/android/server/am/BatteryStatsService$1;->val$chargeFullUAh:I

    iget v9, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secEvent:I

    iget v10, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secOnline:I

    iget v11, p0, Lcom/android/server/am/BatteryStatsService$1;->val$secCurrentEvent:I

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIIII)V
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_67

    monitor-exit v13

    return-void

    :catchall_64
    move-exception v0

    monitor-exit v13

    throw v0

    :catchall_67
    move-exception v0

    monitor-exit v13

    throw v0
.end method
