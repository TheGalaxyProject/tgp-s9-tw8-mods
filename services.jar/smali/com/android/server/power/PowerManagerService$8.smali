.class Lcom/android/server/power/PowerManagerService$8;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 15

    const/16 v4, 0x2e

    const/4 v3, 0x0

    iget-object v10, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v10}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1a

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_ca

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "WirelessChargerSContextListener : No Move"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v3, v1, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    goto :goto_1a

    :pswitch_29
    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "WirelessChargerSContextListener : Move"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "SContextListener : Unregister SContextListener"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get62(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v3, v1, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get38(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_6d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get45(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    sub-long v2, v8, v2

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_c4

    const-string/jumbo v1, "PowerManagerService"

    const-string/jumbo v2, "WirelessChargerSContextListener : received move lately"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->-set23(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-set10(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string/jumbo v2, " powered change"

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-set30(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-set19(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "android.server.power:POWER"

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x3e8

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap9(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$8;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-wrap67(Lcom/android/server/power/PowerManagerService;)V
    :try_end_c4
    .catchall {:try_start_6d .. :try_end_c4} :catchall_c7

    :cond_c4
    monitor-exit v12

    goto/16 :goto_1a

    :catchall_c7
    move-exception v1

    monitor-exit v12

    throw v1

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_29
    .end packed-switch
.end method
