.class public Lcom/sec/ims/util/TelUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "TelUri.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelUri"


# instance fields
.field private mIsInternational:Z

.field private mNumber:Ljava/lang/String;

.field private mPhoneContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/TelUri;->setPhoneNumber(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    return-void
.end method

.method public static equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return v4

    :cond_8
    const-string/jumbo v2, "sip"

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user=phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v0

    :cond_26
    :goto_26
    const-string/jumbo v2, "sip"

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user=phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    :cond_44
    :goto_44
    if-nez v0, :cond_53

    if-eqz v1, :cond_53

    :cond_48
    return v4

    :cond_49
    invoke-static {p0}, Lcom/sec/ims/util/TelUri;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_4e
    invoke-static {p1}, Lcom/sec/ims/util/TelUri;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_53
    if-eqz v0, :cond_57

    if-eqz v1, :cond_48

    :cond_57
    if-eqz v0, :cond_5e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_5e
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez p0, :cond_5

    return-object v6

    :cond_5
    const-string/jumbo v3, "tel"

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_23
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_28
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user=phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    return-object v2

    :cond_3a
    if-nez v2, :cond_5b

    const-string/jumbo v3, "TelUri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user is null. uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_5b
    const-string/jumbo v3, "[\\+\\d]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    return-object v2

    :cond_65
    return-object v6
.end method

.method public static hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    return v3

    :cond_5
    const-string/jumbo v1, "tel"

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v4

    :cond_13
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user=phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    if-eqz v0, :cond_30

    const-string/jumbo v1, "[\\+\\d]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    return v4

    :cond_30
    return v3
.end method

.method public static isInternationalNumber(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isShortCode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x2

    const/16 v5, 0x30

    const/16 v4, 0x31

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "US"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_19

    return v2

    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2e

    :cond_2d
    return v2

    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_49

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_49

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_48

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_49

    :cond_48
    return v2

    :cond_49
    const-string/jumbo v0, "+1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_67

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_66

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_67

    :cond_66
    return v2

    :cond_67
    return v3
.end method

.method public static parseUri(Ljava/lang/String;)Lcom/sec/ims/util/TelUri;
    .registers 7

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz p0, :cond_d

    const-string/jumbo v3, "tel:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    return-object v5

    :cond_e
    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_20

    new-instance v3, Lcom/sec/ims/util/TelUri;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/util/TelUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_20
    const/4 v2, 0x0

    const-string/jumbo v3, "phone-context"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_30

    add-int/lit8 v3, v1, 0xe

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_30
    new-instance v3, Lcom/sec/ims/util/TelUri;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/sec/ims/util/TelUri;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sec/ims/util/TelUri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/sec/ims/util/TelUri;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/TelUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/TelUri;->isGlobal()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    if-nez v2, :cond_29

    :cond_20
    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_29
    iget-object v2, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3b
    return v1
.end method

.method public getPhoneContext()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "+"

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "tel"

    return-object v0
.end method

.method public isGlobal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "phone-context"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Lcom/sec/ims/util/TelUri;->setPhoneContext(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public setPhoneContext(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_10

    iput-boolean v2, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_10
    iput-object p1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/ims/util/TelUri;->mIsInternational:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "+"

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/util/TelUri;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    if-nez v0, :cond_31

    const-string/jumbo v0, ""

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string/jumbo v0, ""

    goto :goto_13

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";phone-context="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/ims/util/TelUri;->mPhoneContext:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method
