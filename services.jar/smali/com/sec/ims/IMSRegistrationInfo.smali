.class public Lcom/sec/ims/IMSRegistrationInfo;
.super Ljava/lang/Object;
.source "IMSRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSRegistrationInfo$1;,
        Lcom/sec/ims/IMSRegistrationInfo$ECMP_MODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/IMSRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mECMPMode:I

.field private mEPDGStatus:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:I

.field private mFeatureMask:I

.field private mFeatureTags:Ljava/lang/String;

.field private mIMSCkIk:Ljava/lang/String;

.field private mLimitedMode:I

.field private mLocalProfileUri:Ljava/lang/String;

.field private mNetworkType:I

.field private mRegisterRetryOver:I

.field private mURIfromPAU:Ljava/lang/String;

.field private mURIfromPAU2nd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/IMSRegistrationInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSRegistrationInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/IMSRegistrationInfo;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;II)V
    .registers 13

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    iput p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    iput p3, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    iput p4, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    iput p5, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    iput-object p6, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    iput p7, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    iput p8, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    iput-object p9, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    iput p10, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    iput p11, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return-void
.end method

.method private final initialize()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    iput-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    iput-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    iput-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSRegistrationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSRegistrationInfo;

    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    :cond_13
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    :cond_20
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    :cond_2d
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/ims/IMSRegistrationInfo;->clone()Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getECMPMode()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    return v0
.end method

.method public getEPDGStatus()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    return v0
.end method

.method public getFeatureMask()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    return v0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSCkIk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitedMode()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    return v0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    return v0
.end method

.method public getPAssociatedUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssociatedUri2nd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterRetryOver()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    return v0
.end method

.method public setECMPMode(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    return-void
.end method

.method public setEPDGStatus(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return-void
.end method

.method public setErrorCode(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExpiryTime(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    return-void
.end method

.method public setFeatureMask(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    return-void
.end method

.method public setFeatureTags(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method

.method public setIMSCkIk(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    return-void
.end method

.method public setLimitedMode(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    return-void
.end method

.method public setLocalProfileUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    return-void
.end method

.method public setPAssociatedUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    return-void
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    return-void
.end method

.method public setRegisterRetryOver(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
