.class public Lcom/android/server/enterprise/ccm/CertificateHandler;
.super Ljava/lang/Object;
.source "CertificateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateHandler"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .registers 15

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    array-length v11, v1

    move v9, v10

    :goto_e
    if-ge v9, v11, :cond_1f

    aget-object v4, v1, v9

    new-instance v12, Landroid/app/enterprise/CertificateInfo;

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-direct {v12, v4}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1f
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    iput-object v9, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    array-length v11, v6

    move v9, v10

    :goto_3b
    if-ge v9, v11, :cond_70

    aget-object v2, v6, v9

    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v12

    if-eqz v12, :cond_4c

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4f
    .catchall {:try_start_2 .. :try_end_4c} :catchall_73

    :cond_4c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :catch_4f
    move-exception v7

    :try_start_50
    const-string/jumbo v9, "CertificateHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "installFrom exception - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_73

    monitor-exit p0

    return v10

    :cond_70
    const/4 v9, 0x1

    monitor-exit p0

    return v9

    :catchall_73
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v5, "2.5.29.19"

    invoke-virtual {p1, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_b

    return v6

    :cond_b
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2e

    move-result v5

    return v5

    :catch_2e
    move-exception v2

    return v6
.end method


# virtual methods
.method public extractPkcs12([BLjava/lang/String;)Z
    .registers 17

    const/4 v13, 0x0

    if-nez p2, :cond_d

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12() password is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_d
    new-instance v9, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    const/4 v7, 0x0

    :goto_17
    const/4 v10, 0x5

    if-ge v7, v10, :cond_108

    const-string/jumbo v10, "CertificateHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "extractPkcs12() try "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "CertificateHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "extractPkcs12() data length is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4f
    const-string/jumbo v10, "PKCS12"

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v9}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12() keystore.aliases()"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_76

    return v13

    :cond_76
    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12() aliases.hasMoreElements()"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_ff

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12()  aliases.nextElement()"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_a0

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12() alias is null!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_a0
    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12()  keystore.isKeyEntry(alias)"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7f

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12()  keystore.getEntry()"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v2, v9}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12() entry instanceof PrivateKeyEntry"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v10, v5, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v10, :cond_7f

    const-string/jumbo v10, "CertificateHandler"

    const-string/jumbo v11, "extractPkcs12() installFrom((PrivateKeyEntry) entry)"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v10, v0

    iput-object v10, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast v5, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ccm/CertificateHandler;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_dd} :catch_df

    move-result v10

    return v10

    :catch_df
    move-exception v4

    const-string/jumbo v10, "CertificateHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "extractPkcs12 exception - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x5

    :try_start_fc
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fc .. :try_end_ff} :catch_103
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_ff} :catch_103

    :cond_ff
    :goto_ff
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_17

    :catch_103
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ff

    :cond_108
    return v13
.end method

.method public getFormattedPrivateKey()[B
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyAlgorithm()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPemCertificateChain()[B
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/security/cert/Certificate;

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1a
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mCaCerts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/cert/X509Certificate;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/security/cert/X509Certificate;

    move-object v1, v0

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_3b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3e} :catch_60
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_3e} :catch_40

    move-result-object v5

    :goto_3f
    return-object v5

    :catch_40
    move-exception v3

    const-string/jumbo v6, "CertificateHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPemCertificateChain exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_60
    move-exception v2

    const-string/jumbo v6, "CertificateHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPemCertificateChain exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public getPrivateKeyEntry()Ljava/security/KeyStore$PrivateKeyEntry;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mPrivateKeyEntry:Ljava/security/KeyStore$PrivateKeyEntry;

    return-object v0
.end method

.method public isPrivateKeyExists()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/CertificateHandler;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method
