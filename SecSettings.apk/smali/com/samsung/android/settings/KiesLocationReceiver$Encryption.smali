.class Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;
.super Ljava/lang/Object;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Encryption"
.end annotation


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mSalt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private securityPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/KiesLocationReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->streamCrypt(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->this$0:Lcom/samsung/android/settings/KiesLocationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;)V

    return-void
.end method

.method private decrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .registers 20

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_54

    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_ae
    .catchall {:try_start_3 .. :try_end_14} :catchall_78

    :try_start_14
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v6

    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_b0
    .catchall {:try_start_14 .. :try_end_23} :catchall_a7

    const/4 v9, 0x0

    const/16 v12, 0x400

    :try_start_26
    new-array v2, v12, [B

    :goto_28
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v6, v2, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_52

    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_37
    .catchall {:try_start_26 .. :try_end_36} :catchall_aa

    goto :goto_28

    :catch_37
    move-exception v4

    move-object v10, v11

    move-object v7, v8

    :goto_3a
    :try_start_3a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_78

    :try_start_3d
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_73
    .catchall {:try_start_3d .. :try_end_40} :catchall_78

    :goto_40
    const/16 p2, 0x0

    if-eqz v7, :cond_47

    :try_start_44
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_89

    :cond_47
    :goto_47
    if-eqz v6, :cond_4c

    :try_start_49
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_8e

    :cond_4c
    :goto_4c
    if-eqz v10, :cond_51

    :try_start_4e
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_93

    :cond_51
    :goto_51
    return-object p2

    :cond_52
    move-object v10, v11

    move-object v7, v8

    :cond_54
    if-eqz v7, :cond_59

    :try_start_56
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_69

    :cond_59
    :goto_59
    if-eqz v6, :cond_5e

    :try_start_5b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_6e

    :cond_5e
    :goto_5e
    if-eqz v10, :cond_51

    :try_start_60
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_51

    :catch_64
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catch_69
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    :catch_6e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    :catch_73
    move-exception v5

    :try_start_74
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_40

    :catchall_78
    move-exception v12

    :goto_79
    if-eqz v7, :cond_7e

    :try_start_7b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_98

    :cond_7e
    :goto_7e
    if-eqz v6, :cond_83

    :try_start_80
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_9d

    :cond_83
    :goto_83
    if-eqz v10, :cond_88

    :try_start_85
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_a2

    :cond_88
    :goto_88
    throw v12

    :catch_89
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :catch_8e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :catch_93
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    :catch_98
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    :catch_9d
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    :catch_a2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    :catchall_a7
    move-exception v12

    move-object v10, v11

    goto :goto_79

    :catchall_aa
    move-exception v12

    move-object v10, v11

    move-object v7, v8

    goto :goto_79

    :catch_ae
    move-exception v4

    goto :goto_3a

    :catch_b0
    move-exception v4

    move-object v10, v11

    goto :goto_3a
.end method

.method private decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x10

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    if-eq v1, v3, :cond_1f

    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "read bytes not equals to block size"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    if-ne p2, v3, :cond_52

    new-array v3, v5, [B

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v5, :cond_3c

    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "read bytes not equals to 16"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :cond_42
    :goto_42
    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherInputStream;

    iget-object v4, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p1, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_52
    if-nez p2, :cond_42

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_42
.end method

.method private encrypt(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .registers 20

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4f

    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_a4
    .catchall {:try_start_3 .. :try_end_14} :catchall_7d

    :try_start_14
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_a6
    .catchall {:try_start_14 .. :try_end_1b} :catchall_9d

    :try_start_1b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v11, 0x400

    new-array v2, v11, [B

    :goto_28
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v6, v2, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_4d

    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_36} :catch_37
    .catchall {:try_start_1b .. :try_end_36} :catchall_a0

    goto :goto_28

    :catch_37
    move-exception v4

    move-object v9, v10

    move-object v5, v6

    :goto_3a
    :try_start_3a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_7d

    if-eqz v5, :cond_42

    :try_start_3f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_6e

    :cond_42
    :goto_42
    if-eqz v7, :cond_47

    :try_start_44
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_73

    :cond_47
    :goto_47
    if-eqz v9, :cond_4c

    :try_start_49
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_78

    :cond_4c
    :goto_4c
    return-object p2

    :cond_4d
    move-object v9, v10

    move-object v5, v6

    :cond_4f
    if-eqz v5, :cond_54

    :try_start_51
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_64

    :cond_54
    :goto_54
    if-eqz v7, :cond_59

    :try_start_56
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_69

    :cond_59
    :goto_59
    if-eqz v9, :cond_4c

    :try_start_5b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_4c

    :catch_5f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :catch_64
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    :catch_69
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    :catch_6e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_73
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :catch_78
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    :catchall_7d
    move-exception v11

    :goto_7e
    if-eqz v5, :cond_83

    :try_start_80
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8e

    :cond_83
    :goto_83
    if-eqz v7, :cond_88

    :try_start_85
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_93

    :cond_88
    :goto_88
    if-eqz v9, :cond_8d

    :try_start_8a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_98

    :cond_8d
    :goto_8d
    throw v11

    :catch_8e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    :catch_93
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    :catch_98
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8d

    :catchall_9d
    move-exception v11

    move-object v5, v6

    goto :goto_7e

    :catchall_a0
    move-exception v11

    move-object v9, v10

    move-object v5, v6

    goto :goto_7e

    :catch_a4
    move-exception v4

    goto :goto_3a

    :catch_a6
    move-exception v4

    move-object v5, v6

    goto :goto_3a
.end method

.method private encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-ne p2, v4, :cond_3b

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateEncryptSalt()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :cond_2c
    :goto_2c
    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    :cond_3b
    if-nez p2, :cond_2c

    invoke-direct {p0}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_2c
.end method

.method private generateEncryptSalt()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v1, 0x3e8

    const/16 v4, 0x100

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mSalt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method private generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private streamCrypt(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v2, "KiesLocationReceiver"

    const-string/jumbo v3, "security password is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->securityPassword:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->mCipher:Ljavax/crypto/Cipher;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method
