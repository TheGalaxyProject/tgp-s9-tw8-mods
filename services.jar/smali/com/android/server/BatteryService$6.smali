.class Lcom/android/server/BatteryService$6;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)J
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4d

    move-result-wide v0

    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get20(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_17
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get27(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-wrap5(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->-set10(Lcom/android/server/BatteryService;J)J

    :cond_2e
    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get27(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->-set10(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "/efs/FactoryApp/max_current"

    iget-object v5, p0, Lcom/android/server/BatteryService$6;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get27(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->-wrap2(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_50

    :cond_4b
    monitor-exit v3

    return-void

    :catchall_4d
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_50
    move-exception v2

    monitor-exit v3

    throw v2
.end method