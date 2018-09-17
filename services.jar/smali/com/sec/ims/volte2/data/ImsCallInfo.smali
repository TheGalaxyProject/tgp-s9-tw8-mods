.class public Lcom/sec/ims/volte2/data/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/ImsCallInfo$1;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$BearerState;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$CallType;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Direction;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Qci;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Radio;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/volte2/data/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mDirection:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mIsConferenceCall:Z

.field private mIsDowngradedAtEstablish:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsSamsungMdmnCall:Z

.field private mNumberPlus:Ljava/lang/String;

.field private mPeerUri:Ljava/lang/String;

.field private mVideoBearerState:I

.field private mVideoNGbrBearerState:I

.field private mVoiceBearerState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/volte2/data/ImsCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/ImsCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 16

    const/4 v2, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    iput p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    iput-boolean p3, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    iput-boolean p4, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    iput p5, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    iput p6, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    iput p7, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    iput p8, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    iput-object p9, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    iput p11, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    iput-boolean p12, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5c

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5e

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_60

    move v0, v1

    :goto_51
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_62

    :goto_59
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return-void

    :cond_5c
    move v0, v2

    goto :goto_15

    :cond_5e
    move v0, v2

    goto :goto_1e

    :cond_60
    move v0, v2

    goto :goto_51

    :cond_62
    move v1, v2

    goto :goto_59
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    return v0
.end method

.method public getCallType()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    return v0
.end method

.method public getDedicatedBearerState(I)I
    .registers 3

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_e

    :goto_4
    :pswitch_4
    return v0

    :pswitch_5
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    goto :goto_4

    :pswitch_8
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    goto :goto_4

    :pswitch_b
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public getDirection()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    return-object v0
.end method

.method public isConferenceCall()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return v0
.end method

.method public isDowngradedAtEstablish()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    return v0
.end method

.method public isDowngradedVideoCall()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    return v0
.end method

.method public isMOCall()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public isMTCall()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSamsungMdmnCall()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return v0
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    return-void
.end method

.method public setSamsungMdmnCall(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], callType: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    packed-switch v1, :pswitch_data_158

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], Direction: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    packed-switch v1, :pswitch_data_160

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], isDowngradedVideoCall : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], isDowngradedAtEstablish : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], VoiceBearerState : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], VideoBearerState : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], VideoNGbrBearerState : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], isConferenceCall : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], mIsSamsungMdmnCall : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CALL_TYPE_VOICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    :pswitch_e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CALL_TYPE_VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    :pswitch_ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "MO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    :pswitch_115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "MT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    :pswitch_12b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PULLED_MO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    :pswitch_141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PULLED_MT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_63

    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_d3
        :pswitch_e9
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_115
        :pswitch_12b
        :pswitch_141
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    if-eqz v0, :cond_52

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    if-eqz v0, :cond_54

    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    if-eqz v0, :cond_56

    move v0, v1

    :goto_47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    if-eqz v0, :cond_58

    :goto_4e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_52
    move v0, v2

    goto :goto_14

    :cond_54
    move v0, v2

    goto :goto_1c

    :cond_56
    move v0, v2

    goto :goto_47

    :cond_58
    move v1, v2

    goto :goto_4e
.end method
