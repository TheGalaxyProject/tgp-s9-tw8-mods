.class public Lcom/sec/ims/util/SipError;
.super Ljava/lang/Object;
.source "SipError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/util/SipError$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/util/SipError;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SipError"


# instance fields
.field protected mCode:I

.field protected mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/util/SipError$1;

    invoke-direct {v0}, Lcom/sec/ims/util/SipError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/SipError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iput-object p2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/SipError;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/util/SipError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/ims/util/SipError;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/SipError;

    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_19
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v3, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :cond_21
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v3, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v3, :cond_2f

    iget-object v1, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :cond_2f
    return v1
.end method

.method public equalsWithStrict(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/ims/util/SipError;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/SipError;

    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v3, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :cond_21
    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    return v1

    :cond_32
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v3, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v3, :cond_40

    iget-object v1, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :cond_40
    return v1
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    return v0
.end method

.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .registers 4

    const-string/jumbo v0, "SipError"

    const-string/jumbo v1, "getFromRejectReason: Should be called!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    :goto_e
    add-int v1, v3, v2

    return v1

    :cond_11
    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_e
.end method

.method public setCode(I)V
    .registers 2

    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_d
.end method
