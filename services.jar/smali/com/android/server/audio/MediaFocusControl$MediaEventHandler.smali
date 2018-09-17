.class Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaEventHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22

    :goto_5
    return-void

    :pswitch_6
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get1()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14
    .catchall {:try_start_b .. :try_end_12} :catchall_1f

    :goto_12
    monitor-exit v2

    goto :goto_5

    :catch_14
    move-exception v0

    :try_start_15
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v3, "EXCEPTION : mAudioFocusLock didn\'t notified and will be notified automatically"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_12

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
