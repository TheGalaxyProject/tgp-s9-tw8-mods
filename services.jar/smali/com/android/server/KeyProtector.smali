.class public Lcom/android/server/KeyProtector;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KeyProtector$KeyStore;
    }
.end annotation


# static fields
.field private static final DEFAULT_IV_LEN:I = 0xc

.field private static final DEFAULT_KEY_LEN:I = 0x20

.field private static final FILE_PREFIX:Ljava/lang/String; = "ENCRYPTED_KEY_"

.field private static final TAG:Ljava/lang/String; = "KeyProtector"

.field private static sInstance:Lcom/android/server/KeyProtector;


# instance fields
.field private mKeyStore:Lcom/android/server/KeyProtector$KeyStore;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([B)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/KeyProtector;->clear([B)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attach(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method private static clear([B)V
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private deleteFile(ILjava/lang/String;)Z
    .registers 10

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ENCRYPTED_KEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "KeyProtector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFile - File path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5a

    const-string/jumbo v4, "KeyProtector"

    const-string/jumbo v5, "Null path..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_5a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6b

    :try_start_67
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6c

    move-result v3

    :cond_6b
    :goto_6b
    return v3

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/KeyProtector;
    .registers 2

    const-class v1, Lcom/android/server/KeyProtector;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/KeyProtector;

    invoke-direct {v0}, Lcom/android/server/KeyProtector;-><init>()V

    sput-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;

    :cond_e
    sget-object v0, Lcom/android/server/KeyProtector;->sInstance:Lcom/android/server/KeyProtector;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getKeyStore()Lcom/android/server/KeyProtector$KeyStore;
    .registers 3

    iget-object v0, p0, Lcom/android/server/KeyProtector;->mKeyStore:Lcom/android/server/KeyProtector$KeyStore;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/KeyProtector$KeyStore;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/android/server/KeyProtector$KeyStore;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/KeyProtector;->mKeyStore:Lcom/android/server/KeyProtector$KeyStore;

    :cond_d
    iget-object v0, p0, Lcom/android/server/KeyProtector;->mKeyStore:Lcom/android/server/KeyProtector$KeyStore;

    return-object v0
.end method

.method private readFile(ILjava/lang/String;)[B
    .registers 16

    const/4 v12, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ENCRYPTED_KEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "KeyProtector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFile - File path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_59

    const-string/jumbo v9, "KeyProtector"

    const-string/jumbo v10, "Null path..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_59
    const/4 v8, 0x0

    const/4 v4, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7c

    :try_start_68
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6d} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_7f
    .catchall {:try_start_68 .. :try_end_6d} :catchall_97

    :try_start_6d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v8, v6, [B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_76} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_a6
    .catchall {:try_start_6d .. :try_end_76} :catchall_a0

    if-eqz v5, :cond_7b

    :try_start_78
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7d

    :cond_7b
    :goto_7b
    move-object v4, v5

    :cond_7c
    :goto_7c
    return-object v8

    :catch_7d
    move-exception v2

    goto :goto_7b

    :catch_7f
    move-exception v1

    :goto_80
    :try_start_80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_97

    if-eqz v4, :cond_7c

    :try_start_85
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_7c

    :catch_89
    move-exception v2

    goto :goto_7c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_97

    if-eqz v4, :cond_7c

    :try_start_91
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_7c

    :catch_95
    move-exception v2

    goto :goto_7c

    :catchall_97
    move-exception v9

    :goto_98
    if-eqz v4, :cond_9d

    :try_start_9a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    :cond_9d
    :goto_9d
    throw v9

    :catch_9e
    move-exception v2

    goto :goto_9d

    :catchall_a0
    move-exception v9

    move-object v4, v5

    goto :goto_98

    :catch_a3
    move-exception v0

    move-object v4, v5

    goto :goto_8c

    :catch_a6
    move-exception v1

    move-object v4, v5

    goto :goto_80
.end method

.method private writeToFile(ILjava/lang/String;[B)Z
    .registers 15

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ENCRYPTED_KEY_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "KeyProtector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeToFile - File path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_5a

    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v9, "Null path..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    return v8

    :cond_5a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_60
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_81
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_75
    .catchall {:try_start_60 .. :try_end_65} :catchall_8d

    :try_start_65
    invoke-virtual {v5, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6b} :catch_99
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_9c
    .catchall {:try_start_65 .. :try_end_6b} :catchall_96

    const/4 v7, 0x1

    if-eqz v5, :cond_71

    :try_start_6e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_73

    :cond_71
    :goto_71
    move-object v4, v5

    :cond_72
    :goto_72
    return v7

    :catch_73
    move-exception v2

    goto :goto_71

    :catch_75
    move-exception v1

    :goto_76
    :try_start_76
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_8d

    if-eqz v4, :cond_72

    :try_start_7b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_72

    :catch_7f
    move-exception v2

    goto :goto_72

    :catch_81
    move-exception v0

    :goto_82
    :try_start_82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8d

    if-eqz v4, :cond_72

    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_72

    :catch_8b
    move-exception v2

    goto :goto_72

    :catchall_8d
    move-exception v8

    :goto_8e
    if-eqz v4, :cond_93

    :try_start_90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    :cond_93
    :goto_93
    throw v8

    :catch_94
    move-exception v2

    goto :goto_93

    :catchall_96
    move-exception v8

    move-object v4, v5

    goto :goto_8e

    :catch_99
    move-exception v0

    move-object v4, v5

    goto :goto_82

    :catch_9c
    move-exception v1

    move-object v4, v5

    goto :goto_76
.end method


# virtual methods
.method public decryptFast([B[B)[B
    .registers 12

    const/4 v8, 0x0

    if-eqz p1, :cond_8

    array-length v6, p1

    const/16 v7, 0x20

    if-eq v6, v7, :cond_12

    :cond_8
    const-string/jumbo v6, "KeyProtector"

    const-string/jumbo v7, "fast decryption - Only supported for 32-bytes key"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_12
    if-eqz p2, :cond_8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    :try_start_18
    invoke-static {p2, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    array-length v6, p2

    const/16 v7, 0xc

    invoke-static {p2, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "AES"

    invoke-direct {v5, p1, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v7, 0x80

    invoke-direct {v6, v7, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_42

    move-result-object v4

    :goto_41
    return-object v4

    :catch_42
    move-exception v2

    const-string/jumbo v6, "KeyProtector"

    const-string/jumbo v7, "fast decryption - Unexpected error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    move-result v0

    :goto_1c
    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->deleteFile(ILjava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_40

    const-string/jumbo v2, "KeyProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected failure while delete key with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-nez v1, :cond_60

    const-string/jumbo v2, "KeyProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected failure while delete file with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    if-eqz v0, :cond_67

    :goto_62
    return v1

    :cond_63
    const/4 v0, 0x1

    goto :goto_1c

    :cond_65
    const/4 v0, 0x0

    goto :goto_1c

    :cond_67
    const/4 v1, 0x0

    goto :goto_62
.end method

.method public encryptFast([B[B)[B
    .registers 15

    const/4 v9, 0x0

    if-eqz p1, :cond_8

    array-length v8, p1

    const/16 v10, 0x20

    if-eq v8, v10, :cond_12

    :cond_8
    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v10, "fast encryption - Only supported for 32-bytes key"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_12
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_14
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_59
    .catchall {:try_start_14 .. :try_end_19} :catchall_75

    :try_start_19
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, "AES"

    invoke-direct {v7, p1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v8, "AES/GCM/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_3d} :catch_7a
    .catchall {:try_start_19 .. :try_end_3d} :catchall_77

    move-result-object v3

    if-eqz v6, :cond_43

    :try_start_40
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_55
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_46

    :cond_43
    :goto_43
    if-eqz v9, :cond_57

    :try_start_45
    throw v9
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    move-exception v2

    move-object v5, v6

    :goto_48
    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v9, "fast encryption - Unexpected error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_54
    return-object v3

    :catch_55
    move-exception v9

    goto :goto_43

    :cond_57
    move-object v5, v6

    goto :goto_54

    :catch_59
    move-exception v8

    :goto_5a
    :try_start_5a
    throw v8
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_5f
    if-eqz v5, :cond_64

    :try_start_61
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_67

    :cond_64
    :goto_64
    if-eqz v9, :cond_74

    :try_start_66
    throw v9

    :catch_67
    move-exception v2

    goto :goto_48

    :catch_69
    move-exception v10

    if-nez v9, :cond_6e

    move-object v9, v10

    goto :goto_64

    :cond_6e
    if-eq v9, v10, :cond_64

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_64

    :cond_74
    throw v8
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_75} :catch_67

    :catchall_75
    move-exception v8

    goto :goto_5f

    :catchall_77
    move-exception v8

    move-object v5, v6

    goto :goto_5f

    :catch_7a
    move-exception v8

    move-object v5, v6

    goto :goto_5a
.end method

.method public exists(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->exists(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v1, "KeyProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Key exists in the KeyStore. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return v0
.end method

.method public migrateFromTimaKeyStore(Ljava/lang/String;I)Z
    .registers 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    :try_start_5
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "KeyProtector"

    const-string/jumbo v4, "Error while migrating from TIMA KeyStore..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return v2

    :cond_19
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e

    const/4 v2, 0x1

    goto :goto_18

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public protect([BLjava/lang/String;I)Z
    .registers 16

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_12

    :cond_8
    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v9, "Wrong input parameter..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->setSecretKey(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v4

    const-string/jumbo v8, "AES/GCM/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_6b

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v5, :cond_77

    const/4 v6, 0x0

    :goto_3f
    const/16 v8, 0xc

    if-eq v6, v8, :cond_79

    :try_start_43
    const-string/jumbo v8, "KeyProtector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid iv length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_60} :catch_97

    move-result v8

    return v11

    :cond_62
    :try_start_62
    new-instance v8, Ljava/lang/Exception;

    const-string/jumbo v9, "Unexpected failure while set key"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lcom/android/server/KeyProtector$KeyStore;->deleteSecretKey(Ljava/lang/String;I)Z

    return v11

    :cond_77
    array-length v6, v5

    goto :goto_3f

    :cond_79
    :try_start_79
    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7f} :catch_97

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {p0, p3, p2, v8}, Lcom/android/server/KeyProtector;->writeToFile(ILjava/lang/String;[B)Z

    move-result v8

    if-nez v8, :cond_a9

    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v9, "Failed to write into file..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v8

    return v11

    :catch_97
    move-exception v1

    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v9, "Failed to concatenate byte arrays"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v8

    return v11

    :cond_a9
    const-string/jumbo v8, "KeyProtector"

    const-string/jumbo v9, "Successfully wrote into file!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method public release(Ljava/lang/String;I)[B
    .registers 13

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_34

    const/4 v7, 0x0

    const/16 v8, 0xc

    :try_start_b
    invoke-static {v4, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    array-length v7, v4

    const/16 v8, 0xc

    invoke-static {v4, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_35

    move-result-object v5

    :try_start_16
    invoke-direct {p0}, Lcom/android/server/KeyProtector;->getKeyStore()Lcom/android/server/KeyProtector$KeyStore;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/android/server/KeyProtector$KeyStore;->getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v2

    const-string/jumbo v7, "AES/GCM/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v2, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_43

    move-result-object v1

    :cond_34
    :goto_34
    return-object v1

    :catch_35
    move-exception v3

    const-string/jumbo v7, "KeyProtector"

    const-string/jumbo v8, "Failed in copying array..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v9

    :catch_43
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public releaseMinor(Ljava/lang/String;I)[B
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/KeyProtector;->readFile(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_10
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_32

    const-string/jumbo v3, "KeyProtector"

    const-string/jumbo v6, "Found key from TIMA KeyStore."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo v3, "KeyProtector"

    const-string/jumbo v6, "Error while migrating from TIMA KeyStore..."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_3a

    :cond_32
    :goto_32
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    :cond_36
    :try_start_36
    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_32

    :catchall_3a
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
