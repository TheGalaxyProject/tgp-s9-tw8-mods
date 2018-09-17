.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType2Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType2Message"


# instance fields
.field private contextData:[B

.field private flagsObtained:I

.field private serverChallengeNonce:[B

.field private targetData:[B

.field private targetName:Ljava/lang/String;

.field private type2MessageBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->processMessageString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlags(I)V

    return-void
.end method

.method private checkForValidData(II)Z
    .registers 6

    const/4 v1, 0x0

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_b

    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    :cond_b
    return v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isValidNTLMType2String()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    sget-object v2, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->NTLM_HEADER_BYTES:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_19

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Type2 Format Exception: Misplaced Header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Type2 Format Exception: Message Type Incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContextData()[B
    .registers 6

    const/16 v4, 0x20

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    if-nez v1, :cond_21

    const/16 v1, 0x28

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v1

    if-eqz v1, :cond_21

    new-array v0, v3, [B

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setContextData([B)V

    :cond_21
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-object v1
.end method

.method protected getFlagsObtained()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    if-gez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlagsObtained(I)V

    :cond_16
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return v0
.end method

.method protected getServerChallengeNonce()[B
    .registers 6

    const/16 v4, 0x18

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    if-nez v1, :cond_21

    const/16 v1, 0x20

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v1

    if-eqz v1, :cond_21

    new-array v0, v3, [B

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setServerChallengeNonce([B)V

    :cond_21
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-object v1
.end method

.method protected getTargetData()[B
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v1, :cond_6

    return-object v2

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetData([B)V

    :cond_19
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-object v1
.end method

.method protected getTargetName()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v3, :cond_6

    return-object v4

    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    if-nez v3, :cond_28

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v2

    :try_start_12
    array-length v3, v2

    if-lez v3, :cond_28

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v1

    new-instance v4, Ljava/lang/String;

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2b

    const-string/jumbo v3, "Cp850"

    :goto_22
    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetName(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_28} :catch_2f

    :cond_28
    :goto_28
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-object v3

    :cond_2b
    :try_start_2b
    const-string/jumbo v3, "UTF-16LE"
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_22

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_28
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isValidNTLMType2String()V

    return-void
.end method

.method protected setContextData([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-void
.end method

.method protected setFlagsObtained(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return-void
.end method

.method protected setServerChallengeNonce([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-void
.end method

.method protected setTargetData([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-void
.end method

.method protected setTargetName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-void
.end method
