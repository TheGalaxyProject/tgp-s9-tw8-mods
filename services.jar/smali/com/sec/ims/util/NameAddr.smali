.class public Lcom/sec/ims/util/NameAddr;
.super Ljava/lang/Object;
.source "NameAddr.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/util/NameAddr$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/util/NameAddr$1;

    invoke-direct {v0}, Lcom/sec/ims/util/NameAddr$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/NameAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    const-class v0, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/NameAddr;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/util/NameAddr;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/util/ImsUri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_2a

    return v3

    :cond_1f
    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    :cond_2a
    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_33

    iget-object v1, v0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v1, :cond_3e

    return v3

    :cond_33
    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    iget-object v2, v0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v3

    :cond_3e
    return v4
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v4, :cond_1b

    :goto_11
    add-int v1, v2, v3

    return v1

    :cond_14
    iget-object v2, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_1b
    iget-object v3, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->hashCode()I

    move-result v3

    goto :goto_11
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_10

    const-string/jumbo v0, ""

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/util/NameAddr;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
