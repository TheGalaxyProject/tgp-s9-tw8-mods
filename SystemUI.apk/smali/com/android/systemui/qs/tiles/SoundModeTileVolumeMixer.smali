.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
    }
.end annotation


# static fields
.field private static final BIXBY_AUTHORITY:Ljava/lang/String; = "com.samsung.android.bixby.agent.settings"

.field private static final BIXBY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final BIXBY_VOICE_ENABLE_PATH:Ljava/lang/String; = "bixby_voice_isenable"

.field private static final BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field private static final STREAMS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_BIXBY_VOICE:I

.field public static final STREAM_MULTI_SOUND:I = 0xc

.field private static final STREAM_REMOTE_CONTROL:I = 0x64

.field public static final STREAM_SMART_VIEW:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SoundModeTileVolumeMixer"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I

.field private mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

.field private mSmartViewisMute:Z

.field private mVoiceCapable:Z

.field private final mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

.field private mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSmartViewisMute:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSmartViewisMute:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isVoiceCallingState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->findRow(I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    const v6, 0x1040ae7

    const/4 v5, 0x3

    const/4 v2, 0x0

    const v4, 0x1040af3

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_11d

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->DEBUG:Z

    invoke-static {v5}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v0

    sput v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1040af6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1040af5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1040ae3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1040af4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120a65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120a60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120a66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120a5d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120a61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    sget v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1040af2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void

    :cond_11d
    move v0, v2

    goto/16 :goto_10
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mRows:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    iput v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMinSmartViewVol:I

    iput v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMaxSmartViewVol:I

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSmartViewisMute:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVoiceCapable:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addVolumeBar(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0142

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-direct {v1, v4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)V

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->initRow(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getChildCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V

    return-void
.end method

.method private findRow(I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_6

    return-object v0

    :cond_19
    const/4 v2, 0x0

    return-object v2
.end method

.method private getCurrentUserContext()Landroid/content/Context;
    .registers 8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v2, 0x0

    if-eqz v3, :cond_18

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    :try_start_b
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_17} :catch_1b

    move-result-object v2

    :cond_18
    if-eqz v2, :cond_22

    :goto_1a
    return-object v2

    :catch_1b
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_22
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1a
.end method

.method private initRow(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;I)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/16 v10, 0x64

    const/16 v9, 0xb

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-set2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;I)I

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-set0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v5

    const v6, 0x7f0a04da

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-set3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v5

    const v6, 0x7f0a04d9

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    invoke-static {p1, v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-set1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    if-ne v5, v9, :cond_eb

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/-$Lambda$aToYaevofMU6bET0ggzvwsKEEng$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/qs/tiles/-$Lambda$aToYaevofMU6bET0ggzvwsKEEng$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_5a
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->semSetMode(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    invoke-interface {v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;->isSettingAllSoundMute()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_70
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    if-ne v5, v9, :cond_10c

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_10a

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isSmartViewEnabled()Z

    move-result v5

    if-eqz v5, :cond_90

    :try_start_81
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v6, "mivo"

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8f} :catch_107

    move-result v2

    :cond_90
    :goto_90
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_97
    :goto_97
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    if-eqz v5, :cond_a4

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_12b

    :cond_a4
    const/4 v1, 0x1

    :goto_a5
    if-eqz v1, :cond_12e

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v3, v5, 0x64

    :goto_ab
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v4, 0x0

    if-eqz v1, :cond_132

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_bc
    :goto_bc
    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setStream(I)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_ea

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;

    move-result-object v6

    sget-object v5, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_ea
    return-void

    :cond_eb
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/qs/tiles/-$Lambda$aToYaevofMU6bET0ggzvwsKEEng;

    invoke-direct {v6}, Lcom/android/systemui/qs/tiles/-$Lambda$aToYaevofMU6bET0ggzvwsKEEng;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_5a

    :catch_107
    move-exception v0

    const/4 v2, 0x0

    goto :goto_90

    :cond_10a
    const/4 v2, 0x0

    goto :goto_90

    :cond_10c
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_11d

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto/16 :goto_97

    :cond_11d
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    if-ge v5, v10, :cond_97

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto/16 :goto_97

    :cond_12b
    const/4 v1, 0x0

    goto/16 :goto_a5

    :cond_12e
    mul-int/lit8 v3, v2, 0x64

    goto/16 :goto_ab

    :cond_132
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    if-ne v5, v9, :cond_bc

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_15d

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isSmartViewEnabled()Z

    move-result v5

    if-eqz v5, :cond_151

    :try_start_142
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v6, "mavo"

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_150} :catch_15a

    move-result v4

    :cond_151
    :goto_151
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto/16 :goto_bc

    :catch_15a
    move-exception v0

    const/4 v4, 0x0

    goto :goto_151

    :cond_15d
    const/4 v4, 0x0

    goto :goto_151
.end method

.method private isBixbyVoiceEnable()Z
    .registers 12

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "SoundModeTileVolumeMixer"

    const-string/jumbo v1, "isBixbyVoiceEnable() Check Knox com mode. return FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v10

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_70

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "bixby_voice_isenable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v10

    :cond_3a
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-boolean v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->DEBUG:Z

    if-eqz v0, :cond_6a

    const-string/jumbo v0, "SoundModeTileVolumeMixer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBixbyVoiceEnable() Check Settings value - columnIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",  value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    if-ne v8, v9, :cond_6e

    move v0, v9

    :goto_6d
    return v0

    :cond_6e
    move v0, v10

    goto :goto_6d

    :cond_70
    const-string/jumbo v0, "SoundModeTileVolumeMixer"

    const-string/jumbo v1, "isBixbyVoiceEnable() FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private isSmartViewEnabled()Z
    .registers 2

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private isVoiceCallingState()Z
    .registers 7

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    :goto_15
    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v2, 0x1

    :goto_1e
    const/4 v4, 0x3

    if-eq v0, v4, :cond_24

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2c

    :cond_24
    const/4 v1, 0x1

    :goto_25
    if-nez v2, :cond_2e

    :goto_27
    return v1

    :cond_28
    const/4 v0, -0x2

    goto :goto_15

    :cond_2a
    const/4 v2, 0x0

    goto :goto_1e

    :cond_2c
    const/4 v1, 0x0

    goto :goto_25

    :cond_2e
    const/4 v1, 0x1

    goto :goto_27
.end method

.method static synthetic lambda$-com_android_systemui_qs_tiles_SoundModeTileVolumeMixer_10168(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v1
.end method

.method static synthetic lambda$-com_android_systemui_qs_tiles_SoundModeTileVolumeMixer_10762(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVoiceCapable:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mCurrentUserContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVoiceCapable:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    :cond_3b
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isBixbyVoiceEnable()Z

    move-result v1

    if-eqz v1, :cond_52

    sget v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    :cond_52
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->semUnregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    :try_start_e
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_15} :catch_19

    :goto_15
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onDetachedFromWindow()V

    return-void

    :catch_19
    move-exception v0

    const-string/jumbo v1, "SoundModeTileVolumeMixer"

    const-string/jumbo v2, "mVolumeMixerReceiver() is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public setVolumeMixerTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    return-void
.end method
