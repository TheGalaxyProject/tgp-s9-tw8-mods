.class Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;
.super Ljava/lang/Object;
.source "AudioBalanceSeekbarPreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5

    packed-switch p1, :pswitch_data_6e

    :pswitch_3
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown audio focus change code,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void

    :pswitch_1e
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-get0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-get0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-get0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1d

    :pswitch_45
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-get0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;->this$0:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->-get0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1d

    :pswitch_64
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :pswitch_data_6e
    .packed-switch -0x3
        :pswitch_45
        :pswitch_45
        :pswitch_1e
        :pswitch_3
        :pswitch_64
    .end packed-switch
.end method
