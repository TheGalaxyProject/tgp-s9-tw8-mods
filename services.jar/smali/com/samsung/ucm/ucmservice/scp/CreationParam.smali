.class public Lcom/samsung/ucm/ucmservice/scp/CreationParam;
.super Ljava/lang/Object;
.source "CreationParam.java"


# static fields
.field public static final KEY_ECC_PARAM_FRP_256:I = 0x40

.field public static final KEY_ECC_PARAM_NIST_P256:I = 0x0

.field public static final KEY_TYPE_DH:I = 0x89

.field public static final KEY_TYPE_ECC:I = 0x90

.field public static final KEY_USAGE_BIT_ENCRYPTION:I = 0x8

.field public static final KEY_USAGE_BIT_MAC:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_KEY_ID:B = -0x6dt

.field private static final TAG_KEY_LENGTH:B = -0x7ft

.field private static final TAG_KEY_PARAM_DH_G:B = -0x74t

.field private static final TAG_KEY_PARAM_DH_P:B = -0x75t

.field private static final TAG_KEY_PARAM_ECC:B = -0x76t

.field private static final TAG_KEY_TYPE:B = -0x80t

.field private static final TAG_KEY_USAGE:B = -0x6bt

.field private static final TAG_KEY_VERSION:B = -0x6ct

.field private static final TAG_SCP_CREATION_PARAM:S = -0x40e0s

.field private static final TAG_SCP_PROTOCOL:B = -0x6ft


# instance fields
.field private keyId:[B

.field private keyLength:[B

.field private keyType:[B

.field private keyUsage:[B

.field private keyVersion:[B

.field private paramDHG:[B

.field private paramDHP:[B

.field private paramECC:[B

.field private protocol:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "UCM.SCP.Param"

    sput-object v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    const/16 v1, 0x65

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    aput-byte v2, v0, v2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    aput-byte v2, v0, v2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    const/16 v1, 0x3c

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    const/16 v1, 0x20

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    const/16 v1, -0x70

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    aput-byte v2, v0, v2

    return-void
.end method

.method public static generateParam(Landroid/os/Bundle;)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v2, 0x90

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;-><init>()V

    if-nez p0, :cond_13

    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no bundle for SCP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_13
    const-string/jumbo v1, "scp_protocol"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    const-string/jumbo v1, "scp_protocol"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setProtocol(I)V

    const-string/jumbo v1, "scp_key_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string/jumbo v1, "scp_key_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyId(I)V

    :cond_39
    const-string/jumbo v1, "scp_key_version"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string/jumbo v1, "scp_key_version"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyVersion(I)V

    :cond_4c
    const-string/jumbo v1, "scp_key_length"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string/jumbo v1, "scp_key_length"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyLength(I)V

    :cond_5f
    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->enableEncryption()V

    :cond_74
    :goto_74
    const-string/jumbo v1, "scp_mac"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    const-string/jumbo v1, "scp_mac"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->enableMAC()V

    :cond_89
    :goto_89
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v1

    packed-switch v1, :pswitch_data_118

    :goto_90
    return-object v0

    :cond_91
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SCP param generation faield :: no protocol"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_9a
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->disableEncryption()V

    goto :goto_74

    :cond_9e
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->disableMAC()V

    goto :goto_89

    :pswitch_a2
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamECC(I)V

    goto :goto_90

    :cond_b9
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t find ECC curve info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :pswitch_c2
    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d9

    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamECC(I)V

    goto :goto_90

    :cond_d9
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t find ECC curve info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :pswitch_e2
    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setKeyType(I)V

    const-string/jumbo v1, "scp_key_agreement_param_dh_p"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10e

    const-string/jumbo v1, "scp_key_agreement_param_dh_p"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamDHP([B)V

    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->setParamDHG([B)V

    goto :goto_90

    :cond_10e
    sget-object v1, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Can\'t find DH parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    nop

    :pswitch_data_118
    .packed-switch 0x64
        :pswitch_a2
        :pswitch_c2
        :pswitch_e2
    .end packed-switch
.end method

.method public static generateParam([B)Lcom/samsung/ucm/ucmservice/scp/CreationParam;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;-><init>()V

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->parse([B)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6f

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_22

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find protocol"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_22
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6d

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_40

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyId"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6c

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_5e

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyVersion"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5e
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x6b

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_7c

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyUsage"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7c
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x7f

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_9a

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyLength"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9a
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x80

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_b8

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyType"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b8
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    const/16 v4, 0x89

    if-ne v3, v4, :cond_103

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x75

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_de

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find DH-p"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_de
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x74

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_fc

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find DH-g"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_fc
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    :goto_102
    return-object v0

    :cond_103
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_12a

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v4, -0x76

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    invoke-virtual {v1, v3}, Lcom/samsung/ucm/ucmservice/scp/BerTLV;->getSubTLV(Lcom/samsung/ucm/ucmservice/scp/Tag;)Lcom/samsung/ucm/ucmservice/scp/BerTLV;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    if-nez v2, :cond_123

    new-instance v3, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v4, "can\'t find keyId"

    invoke-direct {v3, v4}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_123
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;->getValue()[B

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    goto :goto_102

    :cond_12a
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string/jumbo v4, "unknown key type"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private toHex([B)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, p1

    move v2, v3

    :goto_b
    if-ge v2, v4, :cond_27

    aget-byte v0, p1, v2

    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public disableEncryption()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "disable encryption not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableMAC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "disable MAC not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableEncryption()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    return-void
.end method

.method public enableMAC()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    return-void
.end method

.method public getKeyId()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyLength()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyType()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyUsage()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getKeyVersion()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getParamDHG()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    return-object v0
.end method

.method public getParamDHP()[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    return-object v0
.end method

.method public getParamECC()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getProtocol()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public setKeyId(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-void
.end method

.method public setKeyLength(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x20

    if-eq p1, v0, :cond_d

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "key length is fixed as 256 bit"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-void
.end method

.method public setKeyType(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-void
.end method

.method public setKeyVersion(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-void
.end method

.method public setParamDHG([B)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    return-void
.end method

.method public setParamDHP([B)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    return-void
.end method

.method public setParamECC(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-void
.end method

.method public setProtocol(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "scp_protocol"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "scp_key_id"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "scp_key_version"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "scp_key_length"

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_56

    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3f
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5d

    const-string/jumbo v1, "scp_mac"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_4e
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getProtocol()I

    move-result v1

    packed-switch v1, :pswitch_data_7e

    :goto_55
    return-object v0

    :cond_56
    const-string/jumbo v1, "scp_encryption"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3f

    :cond_5d
    const-string/jumbo v1, "scp_mac"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4e

    :pswitch_64
    const-string/jumbo v1, "scp_key_agreement_param_ecc"

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_55

    :pswitch_6d
    const-string/jumbo v1, "scp_key_agreement_param_dh_p"

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v1, "scp_key_agreement_param_dh_g"

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_55

    :pswitch_data_7e
    .packed-switch 0x64
        :pswitch_64
        :pswitch_64
        :pswitch_6d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCP creation-param {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocol:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyUsage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyUsage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyLength:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "KEY PARAM {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x89

    if-ne v1, v2, :cond_d7

    const-string/jumbo v1, "DH-P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    if-nez v1, :cond_cd

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b3
    const-string/jumbo v1, ", DH-G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_cd
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    :cond_d7
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_ed

    const-string/jumbo v1, "ECC curveId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    aget-byte v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c2

    :cond_ed
    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c2
.end method

.method public toTLV()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v2, -0x40e0

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(S)V

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6f

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->protocol:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6d

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyId:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6c

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyVersion:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x6b

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyUsage:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x7f

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyLength:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x80

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->keyType:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x89

    if-ne v1, v2, :cond_ae

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    if-nez v1, :cond_87

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;

    const-string/jumbo v2, "no DH-p"

    invoke-direct {v1, v2}, Lcom/samsung/ucm/ucmservice/scp/BerTLV$BerTLVException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_87
    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x75

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHP:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x74

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramDHG:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    :goto_a9
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->write()[B

    move-result-object v1

    return-object v1

    :cond_ae
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->getKeyType()I

    move-result v1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_c8

    new-instance v1, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;

    new-instance v2, Lcom/samsung/ucm/ucmservice/scp/Tag;

    const/16 v3, -0x76

    invoke-direct {v2, v3}, Lcom/samsung/ucm/ucmservice/scp/Tag;-><init>(B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->paramECC:[B

    invoke-direct {v1, v2, v3}, Lcom/samsung/ucm/ucmservice/scp/PrimitiveBerTLV;-><init>(Lcom/samsung/ucm/ucmservice/scp/Tag;[B)V

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/ConstructedBerTLV;->add(Lcom/samsung/ucm/ucmservice/scp/BerTLV;)V

    goto :goto_a9

    :cond_c8
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "unknown key type"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
