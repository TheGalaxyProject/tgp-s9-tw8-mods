.class Lcom/android/server/DeviceIdleController$7;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$7;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    if-nez p1, :cond_b

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$7;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$7;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updateDisplayLocked()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
