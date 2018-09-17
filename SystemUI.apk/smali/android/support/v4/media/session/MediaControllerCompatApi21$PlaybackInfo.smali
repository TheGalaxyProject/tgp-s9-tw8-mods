.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 2

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x7

    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_17

    const/4 v0, 0x6

    return v0

    :cond_17
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    return v2

    :pswitch_1f
    return v2

    :pswitch_20
    return v1

    :pswitch_21
    const/4 v0, 0x0

    return v0

    :pswitch_23
    const/16 v0, 0x8

    return v0

    :pswitch_26
    return v3

    :pswitch_27
    const/4 v0, 0x2

    return v0

    :pswitch_29
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_21
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method
