.class public Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "AudioBalanceSeekbarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$1;,
        Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;,
        Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;
    }
.end annotation


# instance fields
.field private final MONO_AUDIO_KEY_CHECKBOX_DB:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentProgress:I

.field private mEarPlugs:Z

.field private mInitFinish:Z

.field private mLeft:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerisPrepared:Z

.field private mMonoAudioObserver:Landroid/database/ContentObserver;

.field private mOldAudioBalance:I

.field private mPercentageOfBalance:I

.field private mRight:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->updateEnableState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mInitFinish:Z

    const-string/jumbo v0, "mono_audio_db"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->MONO_AUDIO_KEY_CHECKBOX_DB:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$1;-><init>(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMonoAudioObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$2;-><init>(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference$3;-><init>(Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const v0, 0x7f0d0222

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_43

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    :cond_43
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBluetoothA2dpOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pauseMediaPlayer()V
    .registers 4

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2d
    return-void
.end method

.method private prepareMediaPlayer()V
    .registers 6

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_29
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2e} :catch_57

    :goto_2e
    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareMediaPlayer() mMediaPlayer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4b
    :try_start_4b
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_56} :catch_57

    goto :goto_29

    :catch_57
    move-exception v0

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    const-string/jumbo v2, "Exception thrown during preparing sound."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method private releaseMediaPlayer()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_36
    return-void
.end method

.method private setAudioBalance(I)V
    .registers 5

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioBalance() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private setDualColorSeekbar()V
    .registers 6

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3ebd70a4    # 0.37f

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_text_contrast_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_3c
    return-void

    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2f
.end method

.method private setInitFinish(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mInitFinish:Z

    return-void
.end method

.method private startMediaPlayer()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_52

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_44

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "startMediaPlayer() requestAudioFocus : fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "startMediaPlayer() requestAudioFocus : success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_52
    return-void
.end method

.method private updateEnableState()V
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mono_audio_db"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_34

    const/4 v1, 0x1

    :cond_1a
    :goto_1a
    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_2e
    xor-int/lit8 v0, v1, 0x1

    :goto_30
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    return-void

    :cond_34
    const/4 v1, 0x0

    goto :goto_1a

    :cond_36
    const/4 v0, 0x0

    goto :goto_30
.end method


# virtual methods
.method public getAudioBalanceFromDB(I)I
    .registers 6

    move v0, p1

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SET"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_balance"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121a21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSeekbarInitFinish()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mInitFinish:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 8

    const/16 v5, 0x64

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const-string/jumbo v2, "AudioBalanceSeekbarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBindView() mOldAudioBalance : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0a0782

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v2, 0x7f0a048d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    const v2, 0x7f0a0702

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_62
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-gt v2, v5, :cond_aa

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_72
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120f87

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12167f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setInitFinish(Z)V

    return-void

    :cond_aa
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_72
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_48

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_48

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_42

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_31
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return v3

    :cond_42
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_31

    :cond_48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_82

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_82

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_7a

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_69
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    :cond_74
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return v3

    :cond_7a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_69

    :cond_82
    return v2

    :cond_83
    return v2
.end method

.method public onPause()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->releaseMediaPlayer()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setInitFinish(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMonoAudioObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onPrepared() mMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8

    const/16 v1, 0x32

    if-nez p3, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_91

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    iput p2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    const/16 v0, 0x64

    if-gt p2, v0, :cond_75

    if-eq p2, v1, :cond_22

    const/16 v0, 0x35

    if-gt p2, v0, :cond_22

    const/16 v0, 0x2f

    if-lt p2, v0, :cond_22

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_22
    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-le v0, v1, :cond_92

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, -0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    :cond_2e
    :goto_2e
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_balance"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_75

    if-eqz p3, :cond_75

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    :cond_75
    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volumn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    return-void

    :cond_92
    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ge v0, v1, :cond_9f

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    rsub-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    goto :goto_2e

    :cond_9f
    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ne v0, v1, :cond_2e

    iput v1, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    goto :goto_2e
.end method

.method public onResume()V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->prepareMediaPlayer()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->updateEnableState()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mono_audio_db"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mMonoAudioObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    const/16 v1, 0x64

    iget v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-gt v0, v1, :cond_2d

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onStopTrackingTouch() : Current progress is below than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_balance"

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2d
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string/jumbo v0, "AudioBalanceSeekbarPreference"

    const-string/jumbo v1, "onStopTrackingTouch() : Current progress is over than MaxAudioBalance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->pauseMediaPlayer()V

    :cond_8
    return-void
.end method
