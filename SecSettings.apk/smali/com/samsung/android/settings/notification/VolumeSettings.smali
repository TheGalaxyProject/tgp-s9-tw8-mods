.class public Lcom/samsung/android/settings/notification/VolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VolumeSettings$1;,
        Lcom/samsung/android/settings/notification/VolumeSettings$2;,
        Lcom/samsung/android/settings/notification/VolumeSettings$3;,
        Lcom/samsung/android/settings/notification/VolumeSettings$H;,
        Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;,
        Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final NLG_PARAMS:[Ljava/lang/String;

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final VOLUME_CONTROL_TARGETS:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Lcom/samsung/android/settings/notification/VolumeSettings$H;

.field private mIsEmerMode:Z

.field private mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

.field private final mReceiver:Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/SecVolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mZenMode:I


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/notification/VolumeSettings;->NLG_PARAMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mDisabledByAdmin:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mHandler:Lcom/samsung/android/settings/notification/VolumeSettings$H;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/VolumeSettings;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VolumeSettings;I)Lcom/android/settings/notification/SecVolumeSeekBarPreference;
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->findTarget(I)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/VolumeSettings;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->findEventId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/VolumeSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->findAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/VolumeSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateBixbyPreference(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/VolumeSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateMusicPreference(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/VolumeSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/notification/VolumeSettings;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "media_volume"

    aput-object v1, v0, v3

    const-string/jumbo v1, "alarm_volume"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ring_volume"

    aput-object v1, v0, v5

    const-string/jumbo v1, "notification_volume"

    aput-object v1, v0, v6

    const-string/jumbo v1, "system_volume"

    aput-object v1, v0, v7

    const-string/jumbo v1, "waiting_tone_volume"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "bixby_volume"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VolumeSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VolumeRingtone"

    aput-object v1, v0, v3

    const-string/jumbo v1, "VolumeMedia"

    aput-object v1, v0, v4

    const-string/jumbo v1, "VolumeNotifications"

    aput-object v1, v0, v5

    const-string/jumbo v1, "VolumeSystem"

    aput-object v1, v0, v6

    const-string/jumbo v1, "VolumeBixbyVoice"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Level"

    aput-object v1, v0, v3

    const-string/jumbo v1, "UpByPercentage"

    aput-object v1, v0, v4

    const-string/jumbo v1, "DownByPercentage"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Up"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Down"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Max"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Min"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeSettings;->ACTIONS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "RingtoneVolume"

    aput-object v1, v0, v3

    const-string/jumbo v1, "MediaVolume"

    aput-object v1, v0, v4

    const-string/jumbo v1, "NotificationsVolume"

    aput-object v1, v0, v5

    const-string/jumbo v1, "SystemVolume"

    aput-object v1, v0, v6

    const-string/jumbo v1, "BixbyVoiceVolume"

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeSettings;->NLG_PARAMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings$H;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;Lcom/samsung/android/settings/notification/VolumeSettings$H;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mHandler:Lcom/samsung/android/settings/notification/VolumeSettings$H;

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mReceiver:Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingerMode:I

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VolumeSettings$2;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/VolumeSettings$3;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method private findAction(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, "VolumeBixbyVoice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "Level"

    return-object v1

    :cond_d
    sget-object v2, Lcom/samsung/android/settings/notification/VolumeSettings;->ACTIONS:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_11
    if-ge v1, v3, :cond_1f

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    return-object v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method private findEventId(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_4d

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    sget-object v5, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    return v2

    :cond_1e
    sget-object v5, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    return v6

    :cond_29
    sget-object v5, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    return v7

    :cond_34
    sget-object v5, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    return v8

    :cond_3f
    sget-object v5, Lcom/samsung/android/settings/notification/VolumeSettings;->VOLUME_CONTROL_TARGETS:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    return v9

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4d
    const/4 v1, -0x1

    return v1
.end method

.method private findTarget(I)Lcom/android/settings/notification/SecVolumeSeekBarPreference;
    .registers 3

    packed-switch p1, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 9

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_22

    move-result v5

    if-lez v5, :cond_2c

    return-object v4

    :catch_22
    move-exception v0

    const-string/jumbo v5, "VolumeSettings"

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setStream(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez p3, :cond_18

    invoke-virtual {v0, p3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setMuteIcon(I)V

    :cond_18
    return-object v0
.end method

.method private updateBixbyPreference(I)V
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-eqz v1, :cond_14

    if-lez p1, :cond_15

    const v0, 0x1080a7d

    :goto_a
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->updateTitleView(Z)V

    :cond_14
    return-void

    :cond_15
    const v0, 0x1080a6a

    goto :goto_a
.end method

.method private updateEffectsSuppressor()V
    .registers 7

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-eqz v2, :cond_36

    if-eqz v0, :cond_37

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x10405c3

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2e
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    :cond_36
    return-void

    :cond_37
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method private updateMusicPreference(I)V
    .registers 6

    iget v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mZenMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_18

    const/4 v0, 0x1

    :goto_6
    if-lez p1, :cond_1a

    if-eqz v0, :cond_1a

    const v1, 0x1080a7d

    :goto_d
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->updateTitleView(Z)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_6

    :cond_1a
    const v1, 0x1080a6a

    goto :goto_d
.end method

.method private updateNotificationIcon(I)V
    .registers 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotificationIcon : progress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_49

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-lez p1, :cond_5e

    const v0, 0x1080a7d

    :goto_28
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_72

    :cond_34
    move v1, v2

    :goto_35
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-eq v0, v5, :cond_74

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    :cond_49
    :goto_49
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-nez v0, :cond_5d

    if-nez p1, :cond_7a

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    :goto_54
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    :cond_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v0, v2, :cond_6e

    const v0, 0x1080a85

    goto :goto_28

    :cond_6e
    const v0, 0x1080a6a

    goto :goto_28

    :cond_72
    move v1, v3

    goto :goto_35

    :cond_74
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_49

    :cond_7a
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_54
.end method

.method private updateRingOrNotificationIcon(I)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRingOrNotificationIcon : progress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_43

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_4b

    const v0, 0x1080a7d

    :goto_2e
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_5f

    move v1, v2

    :goto_38
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-eqz p1, :cond_61

    move v0, v2

    :goto_40
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    :cond_43
    if-nez p1, :cond_63

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    :goto_4a
    return-void

    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v0, v2, :cond_5b

    const v0, 0x1080a85

    goto :goto_2e

    :cond_5b
    const v0, 0x1080a6a

    goto :goto_2e

    :cond_5f
    move v1, v3

    goto :goto_38

    :cond_61
    move v0, v3

    goto :goto_40

    :cond_63
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_4a
.end method

.method private updateRingOrNotificationPreference()V
    .registers 6

    const v1, 0x1080a6a

    const/4 v4, 0x1

    const-string/jumbo v2, "VolumeSettings"

    const-string/jumbo v3, "updateRingOrNotificationPreference : "

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v3, :cond_25

    :cond_1e
    :goto_1e
    invoke-virtual {v2, v1, v4}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->showIcon(IZ)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateRingOrNotificationIcon(I)V

    :goto_24
    return-void

    :cond_25
    if-lez v0, :cond_2b

    const v1, 0x1080a7d

    goto :goto_1e

    :cond_2b
    iget v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingerMode:I

    if-ne v3, v4, :cond_1e

    const v1, 0x1080a85

    goto :goto_1e

    :cond_33
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V

    goto :goto_24
.end method

.method private updateRingerMode()V
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingerMode:I

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void
.end method

.method private updateSystemIcon(I)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-lez p1, :cond_2a

    const v0, 0x1080a7d

    :goto_9
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v2

    :goto_18
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->showIcon(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    :goto_29
    return-void

    :cond_2a
    const v0, 0x1080a6a

    goto :goto_9

    :cond_2e
    move v1, v3

    goto :goto_18

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_29
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xfa6

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "VolumeSettings"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/notification/VolumeSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/VolumeSettings$4;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const v9, 0x7f15012e

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x1080a6a

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, ":settings:fragment_args_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/notification/VolumeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_64

    iput-boolean v7, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    :cond_64
    const-string/jumbo v4, "media_volume"

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const-string/jumbo v4, "notification_volume"

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const-string/jumbo v4, "system_volume"

    invoke-direct {p0, v4, v7, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const-string/jumbo v4, "bixby_volume"

    const/16 v5, 0xe

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const-string/jumbo v4, "alarm_volume"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v4, :cond_ed

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string/jumbo v4, "waiting_tone_volume"

    const/16 v5, 0x8

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_b0

    const-string/jumbo v4, "waiting_tone_volume_explanation"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    :cond_b0
    :goto_b0
    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v4, :cond_fa

    const-string/jumbo v4, "ring_volume"

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const v5, 0x7f120dd5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/notification/VolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_ca
    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    if-eqz v4, :cond_106

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "UPSM"

    invoke-static {v4, v9, v5}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_106

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_106

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_dd

    :cond_ed
    const-string/jumbo v4, "waiting_tone_volume"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "waiting_tone_volume_explanation"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_b0

    :cond_fa
    const-string/jumbo v4, "ring_volume"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v4, v8}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->setOrder(I)V

    goto :goto_ca

    :cond_106
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v4

    if-eqz v4, :cond_116

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isBixbyVoiceEnable(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11c

    :cond_116
    const-string/jumbo v4, "bixby_volume"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    :cond_11c
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v4

    if-eqz v4, :cond_12d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/notification/VolumeSettings;->setHasOptionsMenu(Z)V

    :goto_125
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_12d
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/VolumeSettings;->setHasOptionsMenu(Z)V

    goto :goto_125
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    const v1, 0x7f121df6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    return v7

    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f121df6

    move-object v1, p0

    move-object v5, v3

    move-object v6, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mReceiver:Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->register(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "VolumeSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mReceiver:Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/notification/VolumeSettings$Receiver;->register(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mZenMode:I

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateMusicPreference(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/16 v9, 0xe

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateBixbyPreference(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityResume()V

    goto :goto_3c

    :cond_4c
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    sget-object v10, Lcom/samsung/android/settings/notification/VolumeSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_6a
    if-ge v9, v11, :cond_97

    aget-object v2, v10, v9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_79

    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_79
    instance-of v6, v3, Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v6, :cond_87

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_87

    move-object v6, v3

    check-cast v6, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v6, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_87
    instance-of v6, v3, Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    if-eqz v6, :cond_93

    check-cast v3, Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const-string/jumbo v6, "no_adjust_volume"

    invoke-virtual {v3, v6}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_93
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_6a

    :cond_97
    if-nez v1, :cond_f1

    if-eqz v0, :cond_f1

    move v6, v7

    :goto_9c
    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mDisabledByAdmin:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    const-string/jumbo v6, "dnd_enabled"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_c5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "zen_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_f3

    const-string/jumbo v6, "dnd_enabled"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_c5
    :goto_c5
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v9, "VolumeSetting"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v6, :cond_dc

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityResume()V

    :cond_dc
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityResume()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityResume()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityResume()V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityResume()V

    return-void

    :cond_f1
    move v6, v8

    goto :goto_9c

    :cond_f3
    const-string/jumbo v6, "dnd_enabled"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_c5
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityStop()V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings;->mBixbyPreference:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->onActivityStop()V

    return-void
.end method
