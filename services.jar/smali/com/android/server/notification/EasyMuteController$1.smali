.class Lcom/android/server/notification/EasyMuteController$1;
.super Ljava/lang/Object;
.source "EasyMuteController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .registers 6

    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v2

    packed-switch v2, :pswitch_data_4c

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    const-string/jumbo v2, "EasyMuteController"

    const-string/jumbo v3, "SemMotionRecognitionEvent.FLIP_SCREEN_DOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_11
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2}, Lcom/android/server/notification/EasyMuteController;->-get0(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_2e
    .catchall {:try_start_11 .. :try_end_20} :catchall_3d

    :cond_20
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v2}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_7

    :catch_2e
    move-exception v0

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v2}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_7

    :catchall_3d
    move-exception v2

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v3}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v3}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_4b
    throw v2

    :pswitch_data_4c
    .packed-switch 0xa
        :pswitch_8
    .end packed-switch
.end method
