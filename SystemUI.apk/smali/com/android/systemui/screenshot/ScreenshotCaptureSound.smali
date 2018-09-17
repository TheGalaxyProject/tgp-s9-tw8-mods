.class public Lcom/android/systemui/screenshot/ScreenshotCaptureSound;
.super Ljava/lang/Object;
.source "ScreenshotCaptureSound.java"


# static fields
.field private static final SOUND_FILES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForcedSoundIds:[I

.field private mForcedSoundPool:Landroid/media/SoundPool;

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/system/media/audio/ui/camera_click.ogg"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->createSoundPool(Z)Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    const/4 v0, 0x0

    :goto_30
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3c
    return-void
.end method

.method private createSoundPool(Z)Landroid/media/SoundPool;
    .registers 10

    const/4 v7, 0x5

    const/4 v6, 0x1

    sget-object v3, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createSoundPool : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const-string/jumbo v4, "CAMERA"

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    if-eqz p1, :cond_53

    invoke-static {v7}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_39
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v3, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-object v2

    :cond_53
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_39
.end method


# virtual methods
.method public declared-synchronized load(I)V
    .registers 7

    const/4 v4, -0x1

    monitor-enter p0

    if-ltz p1, :cond_9

    :try_start_4
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_26

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    aget v0, v0, p1

    if-ne v0, v4, :cond_3b

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1

    :cond_3b
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aget v0, v0, p1

    if-ne v0, v4, :cond_50

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_23

    :cond_50
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized play(IZ)V
    .registers 12

    monitor-enter p0

    if-ltz p1, :cond_8

    :try_start_3
    sget-object v3, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-lt p1, v3, :cond_25

    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown sound requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    aget v1, v3, p1

    if-eqz p2, :cond_33

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    aget v1, v3, p1

    :cond_33
    const/4 v3, -0x1

    if-ne v1, v3, :cond_59

    if-eqz p2, :cond_49

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundIds:[I

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mForcedSoundPool:Landroid/media/SoundPool;

    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, p1
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_22

    :goto_47
    monitor-exit p0

    return-void

    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundIds:[I

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, p1

    goto :goto_47

    :cond_59
    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_86

    :goto_5e
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_22

    goto :goto_47

    :pswitch_67
    :try_start_67
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    const-string/jumbo v3, "situation=3;device=0"

    invoke-virtual {v7, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_7c} :catch_7e
    .catchall {:try_start_67 .. :try_end_7c} :catchall_22

    move-result v2

    goto :goto_5e

    :catch_7e
    move-exception v8

    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_81
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_22

    goto :goto_5e

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_67
    .end packed-switch
.end method
