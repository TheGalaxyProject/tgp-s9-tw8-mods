.class Lcom/android/systemui/servicebox/pages/music/MusicController$4;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get5(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get5(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v2

    const-string/jumbo v3, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    return-void

    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, p2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set7(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get6(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_2c

    :cond_44
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 8

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMetadataChanged() metadata = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1d

    return-void

    :cond_1d
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set5(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set7(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_pkg"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap4(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    :cond_4f
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_59
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_59

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get6(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_59

    :cond_74
    return-void
.end method

.method public onPendingIntentChanged(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set10(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set9(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_4e

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlaybackStateChanged() / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_50

    :goto_2c
    :pswitch_2c
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_36

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_36

    :pswitch_48
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap4(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    goto :goto_2c

    :cond_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x3
        :pswitch_48
        :pswitch_2c
        :pswitch_2c
        :pswitch_48
    .end packed-switch
.end method

.method public onSessionChanged(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionChanged() session is changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->isMusicControllerDisabled()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :cond_3a
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4b

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_4b

    return-void

    :cond_4b
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get3(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_show_music_oobe_text"

    const/4 v5, -0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_64
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, v6}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set2(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, v6}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set1(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set8(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap1(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set6(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_99
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a3
    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_a3

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    goto :goto_a3

    :cond_b5
    return-void
.end method

.method public declared-synchronized onSessionDestroyed(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionDestroyed() sessionPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mLastPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap2(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set9(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4e
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_58

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_6a

    goto :goto_58

    :catchall_6a
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6d
    monitor-exit p0

    return-void
.end method

.method public onSessionEnabled(Z)V
    .registers 7

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionEnabled() enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get4(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lastSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", activeSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get10(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7b

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get10(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "MusicController_LOCK"

    const-string/jumbo v3, "onSessionEnabled() Set enabled to true because LastSession and TopSession are same"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_7b
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get4(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v2

    if-ne v2, p1, :cond_84

    return-void

    :cond_84
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set3(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_93
    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_93

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setSessionEnabled(Z)V

    goto :goto_93

    :cond_a5
    return-void
.end method
