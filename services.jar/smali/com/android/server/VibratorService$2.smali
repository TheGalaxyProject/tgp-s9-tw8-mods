.class Lcom/android/server/VibratorService$2;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-get3()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    :try_start_34
    const-string/jumbo v4, "reason"

    const/4 v6, -0x1

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/VibratorService;->-get3()Z

    move-result v4

    if-eqz v4, :cond_5c

    const-string/jumbo v4, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    const/16 v4, 0x8

    if-ne v2, v4, :cond_6b

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v6, "Keep screen turned off"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_34 .. :try_end_69} :catchall_ad

    monitor-exit v5

    return-void

    :cond_6b
    :try_start_6b
    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v4

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_86

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;)V

    :cond_86
    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get13(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_90
    :goto_90
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$Vibration;

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v4

    if-eq v3, v4, :cond_90

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4, v3}, Lcom/android/server/VibratorService;->-wrap8(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_ac
    .catchall {:try_start_6b .. :try_end_ac} :catchall_ad

    goto :goto_90

    :catchall_ad
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_b0
    monitor-exit v5

    :cond_b1
    :goto_b1
    return-void

    :cond_b2
    const-string/jumbo v4, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->-set1(Lcom/android/server/VibratorService;Z)Z

    goto :goto_b1

    :cond_c2
    const-string/jumbo v4, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    iget-object v4, p0, Lcom/android/server/VibratorService$2;->this$0:Lcom/android/server/VibratorService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->-set1(Lcom/android/server/VibratorService;Z)Z

    goto :goto_b1
.end method
