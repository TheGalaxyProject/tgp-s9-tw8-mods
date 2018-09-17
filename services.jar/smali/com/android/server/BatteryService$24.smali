.class Lcom/android/server/BatteryService$24;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->InitBatteryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get20(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "!@[BatteryInfo] InitBatteryInfo()"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap3(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set9(Lcom/android/server/BatteryService;J)J

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_SW_ASOC:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get26(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-gez v0, :cond_78

    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "/efs/FactoryApp/asoc"

    const-wide/16 v4, 0x64

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    const-string/jumbo v0, "/sys/class/power_supply/battery/fg_asoc"

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-wrap10(Ljava/lang/String;I)V

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap7(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set12(Lcom/android/server/BatteryService;J)J

    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v2, "/sys/class/power_supply/battery/battery_cycle"

    iget-object v3, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get29(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_60
    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap5(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set10(Lcom/android/server/BatteryService;J)J

    iget-object v0, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-wrap6(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService;->-set11(Lcom/android/server/BatteryService;J)J
    :try_end_76
    .catchall {:try_start_7 .. :try_end_76} :catchall_86

    monitor-exit v1

    return-void

    :cond_78
    :try_start_78
    const-string/jumbo v0, "/sys/class/power_supply/battery/fg_asoc"

    iget-object v2, p0, Lcom/android/server/BatteryService$24;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get26(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->-wrap10(Ljava/lang/String;I)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_86

    goto :goto_3e

    :catchall_86
    move-exception v0

    monitor-exit v1

    throw v0
.end method
