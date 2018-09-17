.class public Lcom/sec/ims/volte2/data/MediaProfile;
.super Ljava/lang/Object;
.source "MediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/MediaProfile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/volte2/data/MediaProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioBitRate:I

.field private mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

.field private mAudioQuality:I

.field private mHeight:I

.field private mVideoOrientation:I

.field private mVideoPause:Z

.field private mVideoQuality:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput v2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    iput v2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    iput v2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    iput v2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    const/16 v3, 0x1e0

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v3, 0x280

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    iput-boolean v2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    :goto_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_b5

    :goto_49
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    return-void

    :cond_4c
    const-string/jumbo v3, "AMR-WB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_25

    :cond_5a
    const-string/jumbo v3, "AMR-NB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_25

    :cond_68
    const-string/jumbo v3, "EVS-FB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_25

    :cond_76
    const-string/jumbo v3, "EVS-SWB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_25

    :cond_84
    const-string/jumbo v3, "EVS-WB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_25

    :cond_92
    const-string/jumbo v3, "EVS-NB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_25

    :cond_a0
    const-string/jumbo v3, "EVS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto/16 :goto_25

    :cond_af
    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v3, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto/16 :goto_25

    :cond_b5
    move v1, v2

    goto :goto_49
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    iput v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    iput p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioBitRate()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    return v0
.end method

.method public getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-object v0
.end method

.method public getAudioQuality()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    return v0
.end method

.method public getVideoOrientation()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    return v0
.end method

.method public getVideoPause()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    return v0
.end method

.method public getVideoQuality()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    return v0
.end method

.method public getVideoSize()Ljava/lang/String;
    .registers 9

    const/16 v7, 0x1e0

    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/16 v4, 0xb0

    const/16 v3, 0x90

    const-string/jumbo v0, "VGA"

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_1d

    const-string/jumbo v0, "HD720"

    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v2, 0x438

    if-ne v1, v2, :cond_2d

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_2d

    const-string/jumbo v0, "HD720LAND"

    goto :goto_1c

    :cond_2d
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    if-ne v1, v7, :cond_3b

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    const/16 v2, 0x280

    if-ne v1, v2, :cond_3b

    const-string/jumbo v0, "VGA"

    goto :goto_1c

    :cond_3b
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    const/16 v2, 0x280

    if-ne v1, v2, :cond_49

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v7, :cond_49

    const-string/jumbo v0, "VGALAND"

    goto :goto_1c

    :cond_49
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    if-ne v1, v5, :cond_55

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v6, :cond_55

    const-string/jumbo v0, "QVGA"

    goto :goto_1c

    :cond_55
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    if-ne v1, v6, :cond_61

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v5, :cond_61

    const-string/jumbo v0, "QVGALAND"

    goto :goto_1c

    :cond_61
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    if-ne v1, v3, :cond_6d

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v4, :cond_6d

    const-string/jumbo v0, "QCIF"

    goto :goto_1c

    :cond_6d
    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    if-ne v1, v4, :cond_1c

    iget v1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    if-ne v1, v3, :cond_1c

    const-string/jumbo v0, "QCIFLAND"

    goto :goto_1c
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    return v0
.end method

.method public setAudioBitRate(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    return-void
.end method

.method public setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    return-void
.end method

.method public setAudioQuality(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioQuality:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    return-void
.end method

.method public setVideoPause(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    return-void
.end method

.method public setVideoQuality(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    return-void
.end method

.method public setVideoSize(II)V
    .registers 3

    iput p1, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    iput p2, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioCodec:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_d
    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mAudioBitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/MediaProfile;->mVideoPause:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2f
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_d

    :cond_36
    const/4 v0, 0x0

    goto :goto_2b
.end method
