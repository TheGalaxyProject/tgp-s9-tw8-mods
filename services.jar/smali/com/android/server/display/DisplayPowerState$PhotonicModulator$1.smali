.class Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->-get0(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->-set0(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->-wrap1(Lcom/android/server/display/DisplayPowerState;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
