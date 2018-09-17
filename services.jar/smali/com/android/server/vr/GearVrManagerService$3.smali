.class Lcom/android/server/vr/GearVrManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received UpsmEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDockState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v3}, Lcom/android/server/vr/GearVrManagerService;->-get0(Lcom/android/server/vr/GearVrManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-get1(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    packed-switch v0, :pswitch_data_b4

    :try_start_4c
    const-string/jumbo v1, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_96

    :goto_66
    monitor-exit v2

    return-void

    :pswitch_68
    :try_start_68
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap7(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/16 v3, 0x80

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set2(Lcom/android/server/vr/GearVrManagerService;I)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap47(Lcom/android/server/vr/GearVrManagerService;)V

    :goto_7c
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap1(Lcom/android/server/vr/GearVrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set0(Lcom/android/server/vr/GearVrManagerService;I)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->-wrap45(Lcom/android/server/vr/GearVrManagerService;)V

    :goto_8f
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set1(Lcom/android/server/vr/GearVrManagerService;Z)Z
    :try_end_95
    .catchall {:try_start_68 .. :try_end_95} :catchall_96

    goto :goto_66

    :catchall_96
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_99
    :try_start_99
    const-string/jumbo v1, "GearVrManagerService"

    const-string/jumbo v3, "UPSM Enabled, ignore forcing vr exit"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_a3
    const-string/jumbo v1, "GearVrManagerService"

    const-string/jumbo v3, "UPSM Enabled, ignore forcing undock"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :pswitch_ad
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$3;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-set1(Lcom/android/server/vr/GearVrManagerService;Z)Z
    :try_end_b3
    .catchall {:try_start_99 .. :try_end_b3} :catchall_96

    goto :goto_66

    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_ad
    .end packed-switch
.end method
