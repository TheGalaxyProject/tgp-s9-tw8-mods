.class Lcom/android/systemui/volume/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static AUDIO_MANAGER_FLAGS:[I

.field private static AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

.field private static final HMMAA:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x9

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "h:mm aa"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/volume/Util;->HMMAA:Ljava/text/SimpleDateFormat;

    new-array v0, v3, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "SHOW_UI"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "VIBRATE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "PLAY_SOUND"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ALLOW_RINGER_MODES"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "REMOVE_SOUND_AND_VIBRATE"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHOW_VIBRATE_HINT"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHOW_SILENT_HINT"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "FROM_KEY"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHOW_UI_WARNINGS"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_52
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioManagerFlagsToString(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    sget-object v1, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/volume/Util;->bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bitFieldToString(I[I[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v3, 0x2c

    if-nez p0, :cond_8

    const-string/jumbo v2, ""

    return-object v2

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_e
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    aget v2, p1, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1f
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    aget v2, p1, v0

    not-int v2, v2

    and-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2b
    if-eqz p0, :cond_40

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_36

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    const-string/jumbo v2, "UNKNOWN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    move-object p0, v0

    :cond_a
    return-object p0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v3, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vol."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_21

    :goto_20
    return-object v0

    :cond_21
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public static mediaMetadataToString(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    :try_start_3
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaDescription;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_10} :catch_13

    move-result-object v1

    return-object v1

    :cond_12
    return-object v2

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object v2
.end method

.method public static playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Util;->playbackInfoTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/volume/Util;->volumeProviderControlToString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static playbackInfoTypeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "LOCAL"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "REMOTE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public static playbackStateStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "STATE_NONE"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "STATE_STOPPED"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "STATE_PAUSED"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "STATE_PLAYING"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public static playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/Util;->playbackStateStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RINGER_MODE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "RINGER_MODE_SILENT"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "RINGER_MODE_VIBRATE"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "RINGER_MODE_NORMAL"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/volume/Util;->emptyToNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static final setVisOrGone(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    :goto_a
    if-ne v1, p1, :cond_f

    :cond_c
    return-void

    :cond_d
    move v1, v0

    goto :goto_a

    :cond_f
    if-eqz p1, :cond_15

    :goto_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_15
    const/16 v0, 0x8

    goto :goto_11
.end method

.method public static volumeProviderControlToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VOLUME_CONTROL_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "VOLUME_CONTROL_ABSOLUTE"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "VOLUME_CONTROL_FIXED"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "VOLUME_CONTROL_RELATIVE"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_18
    .end packed-switch
.end method
