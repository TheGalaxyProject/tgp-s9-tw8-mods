.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType1Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType1Message"

.field private static defaultFlagSet:I


# instance fields
.field private domain:Ljava/lang/String;

.field private type1MessageString:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x88207

    sput v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    sget v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->defaultFlagSet:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setFlags(I)V

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    return-object v4

    :cond_9
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_b
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    if-eqz v5, :cond_98

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_98

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->domain:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cp850"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v5, 0x1000

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    :goto_2a
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a1

    iget-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->workstation:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cp850"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v5, 0x2000

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    :goto_49
    if-nez v0, :cond_a8

    move v6, v4

    :goto_4c
    if-nez v3, :cond_ab

    move v5, v4

    :goto_4f
    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x20

    new-array v2, v5, [B

    sget-object v5, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->NTLM_HEADER_BYTES:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v2, v5, v6, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x4

    invoke-static {v2, v6, v5, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v5, 0x1000

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    const/16 v5, 0x10

    const/16 v6, 0x20

    invoke-static {v2, v5, v6, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    :cond_7d
    const/16 v5, 0x2000

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->isFlagSet(I)Z

    move-result v5

    if-eqz v5, :cond_8e

    if-nez v0, :cond_ad

    :goto_87
    add-int/lit8 v4, v4, 0x20

    const/16 v5, 0x18

    invoke-static {v2, v5, v4, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    :cond_8e
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->type1MessageString:Ljava/lang/String;

    return-object v4

    :cond_98
    const/16 v5, 0x1000

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_2a

    :catch_9f
    move-exception v1

    return-object v9

    :cond_a1
    const/16 v5, 0x2000

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->setThisFlag(IZ)V

    goto :goto_49

    :cond_a8
    array-length v5, v0

    move v6, v5

    goto :goto_4c

    :cond_ab
    array-length v5, v3

    goto :goto_4f

    :cond_ad
    array-length v4, v0
    :try_end_ae
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_ae} :catch_9f

    goto :goto_87
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
