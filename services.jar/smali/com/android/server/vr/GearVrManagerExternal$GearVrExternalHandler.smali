.class final Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
.super Landroid/os/Handler;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrExternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_56

    :goto_5
    return-void

    :pswitch_6
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerExternal;->-get0(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_d
    const-string/jumbo v4, "GearVrManagerExternal"

    const-string/jumbo v6, "VRConnection timeout for VRService!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerExternal;->-wrap0(Lcom/android/server/vr/GearVrManagerExternal;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1d

    monitor-exit v5

    goto :goto_5

    :catchall_1d
    move-exception v4

    monitor-exit v5

    throw v4

    :pswitch_20
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleDeviceEventChanged(I)V

    goto :goto_5

    :pswitch_28
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4, v1}, Lcom/android/server/vr/GearVrManagerExternal;->-wrap1(Lcom/android/server/vr/GearVrManagerExternal;I)V

    goto :goto_5

    :pswitch_30
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrHome()V

    goto :goto_5

    :pswitch_36
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartWaitActivity(Landroid/content/Intent;I)V

    goto :goto_5

    :pswitch_42
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4e

    const/4 v0, 0x1

    :goto_48
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleVrMode(Z)V

    goto :goto_5

    :cond_4e
    const/4 v0, 0x0

    goto :goto_48

    :pswitch_50
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrRecents()V

    goto :goto_5

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_6
        :pswitch_20
        :pswitch_28
        :pswitch_30
        :pswitch_36
        :pswitch_42
        :pswitch_50
    .end packed-switch
.end method
