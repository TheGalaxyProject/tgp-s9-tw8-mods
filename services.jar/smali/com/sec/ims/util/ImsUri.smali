.class public Lcom/sec/ims/util/ImsUri;
.super Ljava/lang/Object;
.source "ImsUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/util/ImsUri$1;,
        Lcom/sec/ims/util/ImsUri$UriType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public static EMPTY:Lcom/sec/ims/util/ImsUri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUri"


# instance fields
.field private mSipUri:Lgov/nist/javax/sip/address/SipUri;

.field private mTelUri:Lcom/sec/ims/util/TelUri;

.field private mUrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/ims/util/ImsUri$1;

    invoke-direct {v0}, Lcom/sec/ims/util/ImsUri$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iget-object v1, v0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iget-object v1, v0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    iput-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/ImsUri;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/util/ImsUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/util/TelUri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/SipUri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .registers 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_5

    return-object v7

    :cond_5
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_28

    const-string/jumbo v4, "ImsUri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse: illegal Uri - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_28
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_2c
    const-string/jumbo v4, "sip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string/jumbo v4, "sips"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    :cond_3e
    new-instance v2, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/sec/ims/util/ImsUri;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/SipUri;)V

    return-object v4

    :cond_4e
    const-string/jumbo v4, "tel"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    new-instance v4, Lcom/sec/ims/util/ImsUri;

    invoke-static {p0}, Lcom/sec/ims/util/TelUri;->parseUri(Ljava/lang/String;)Lcom/sec/ims/util/TelUri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/ims/util/ImsUri;-><init>(Lcom/sec/ims/util/TelUri;)V

    return-object v4

    :cond_61
    const-string/jumbo v4, "urn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    new-instance v4, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v4, p0}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_6f} :catch_70

    return-object v4

    :catch_70
    move-exception v0

    const-string/jumbo v4, "ImsUri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse: failured. uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_99
    return-object v7
.end method

.method private uri()Lgov/nist/javax/sip/address/GenericURI;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public encode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    invoke-direct {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v1

    invoke-direct {v0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getHost()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    invoke-virtual {v2}, Lcom/sec/ims/util/TelUri;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_c
    iget-object v2, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string/jumbo v2, ""

    return-object v2

    :cond_14
    iget-object v2, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    const-string/jumbo v2, ""

    return-object v2

    :cond_20
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2d
    return-object v1
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/TelUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result v0

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriType()Lcom/sec/ims/util/ImsUri$UriType;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0

    :cond_15
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v2, :cond_14

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    if-nez v4, :cond_1b

    :goto_11
    add-int v1, v2, v3

    return v1

    :cond_14
    iget-object v2, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_1b
    iget-object v3, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    invoke-virtual {v3}, Lcom/sec/ims/util/TelUri;->hashCode()I

    move-result v3

    goto :goto_11
.end method

.method public removeParam(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public removeUserParam()V
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lcom/sec/ims/util/TelUri;

    invoke-virtual {v1, p1, p2}, Lcom/sec/ims/util/TelUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v1, p1, p2}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_d

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_d
.end method

.method public setUserParam(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringLimit()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_19
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
