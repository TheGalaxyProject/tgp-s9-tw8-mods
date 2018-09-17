.class public Lcom/android/server/SyntheticPasswordSecret;
.super Ljava/lang/Object;
.source "SyntheticPasswordSecret.java"


# static fields
.field private static final DEFAULT_KEY_LENGTH:I = 0x20

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "DEFAULT_PASSWORD"

.field private static final DEVICE_SUPPORT_FIPS_TIMA:Z

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordSecret"

.field private static final TYPE_TIMA_FIPS_KEYSTORE:Ljava/lang/String; = "FipsTimaKeyStore"

.field private static final TYPE_TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static sInstance:Lcom/android/server/SyntheticPasswordSecret;


# instance fields
.field private mKeyStoreStatus:I

.field private mKeyStoreType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SyntheticPasswordSecret;->sInstance:Lcom/android/server/SyntheticPasswordSecret;

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SyntheticPasswordSecret;->DEVICE_SUPPORT_FIPS_TIMA:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/SyntheticPasswordSecret;->DEVICE_SUPPORT_FIPS_TIMA:Z

    if-eqz v0, :cond_31

    const-string/jumbo v0, "FipsTimaKeyStore"

    :goto_a
    iput-object v0, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getTimaStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    const-string/jumbo v0, "SyntheticPasswordSecret"

    const-string/jumbo v1, "Module initialized! [ Type : %s, Status : %d ]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreType:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const-string/jumbo v0, "TIMAKeyStore"

    goto :goto_a
.end method

.method private checkTimaStatus()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getTimaStatus()I

    move-result v1

    iput v1, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    :cond_b
    iget v1, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private static computeSha256([B)[B
    .registers 6

    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v3, 0x40

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    return-object v3

    :catch_15
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private deleteKey(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->checkTimaStatus()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Device seems to be compromised!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method private getEntryPassword()Ljava/security/KeyStore$ProtectionParameter;
    .registers 3

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    const-string/jumbo v1, "DEFAULT_PASSWORD"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/SyntheticPasswordSecret;
    .registers 1

    sget-object v0, Lcom/android/server/SyntheticPasswordSecret;->sInstance:Lcom/android/server/SyntheticPasswordSecret;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/SyntheticPasswordSecret;

    invoke-direct {v0}, Lcom/android/server/SyntheticPasswordSecret;-><init>()V

    sput-object v0, Lcom/android/server/SyntheticPasswordSecret;->sInstance:Lcom/android/server/SyntheticPasswordSecret;

    :cond_b
    sget-object v0, Lcom/android/server/SyntheticPasswordSecret;->sInstance:Lcom/android/server/SyntheticPasswordSecret;

    return-object v0
.end method

.method private getKey(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->checkTimaStatus()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Device seems to be compromised!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getEntryPassword()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Failed to find key entry"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreType:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v2

    :catch_b
    move-exception v0

    const-string/jumbo v3, "Unexpected exception while load TKS instance"

    invoke-static {v3, v0}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_13
    move-exception v1

    const-string/jumbo v3, "Unexpected exception while get TKS instance"

    invoke-static {v3, v1}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private getTimaStatus()I
    .registers 8

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_5
    const-string/jumbo v3, "tima"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    if-nez v1, :cond_2e

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v6, "Failed to get tima service"

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_40

    :catch_1b
    move-exception v0

    :try_start_1c
    const-string/jumbo v3, "Unexpected exception while check tima status"

    invoke-static {v3, v0}, Lcom/sec/sdp/internal/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_40

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_25
    if-eqz v2, :cond_2d

    const-string/jumbo v3, "Device seems to be compromised!"

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_2d
    return v2

    :cond_2e
    :try_start_2e
    sget-boolean v3, Lcom/android/server/SyntheticPasswordSecret;->DEVICE_SUPPORT_FIPS_TIMA:Z

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_1b
    .catchall {:try_start_2e .. :try_end_36} :catchall_40

    move-result v2

    :goto_37
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :cond_3b
    :try_start_3b
    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_1b
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    move-result v2

    goto :goto_37

    :catchall_40
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private importKey(Ljava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->checkTimaStatus()Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Device seems to be compromised!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, ""

    invoke-direct {v0, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v1, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/SyntheticPasswordSecret;->getEntryPassword()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method


# virtual methods
.method public generateAndSaveSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/SyntheticPasswordSecret;->generateSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SyntheticPasswordSecret;->saveSecretKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public generateSecretKey()Ljavax/crypto/SecretKey;
    .registers 4

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SecureUtil;->generateRandomBytes(I)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/SyntheticPasswordSecret;->getKey(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "AES"

    invoke-direct {v3, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_16} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_35
    .catchall {:try_start_4 .. :try_end_16} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_1a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1d
    const-string/jumbo v3, "Unexpected failure while get secret [ Status : %d ]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :catch_35
    move-exception v0

    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catch_3d
    move-exception v1

    :try_start_3e
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_45

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    :catchall_45
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeSecretKey(Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/SyntheticPasswordSecret;->deleteKey(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_b
    .catchall {:try_start_4 .. :try_end_7} :catchall_29

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_a
    return-void

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "Unexpected failure while remove secret [ Status : %d ]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_29

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    :catchall_29
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public saveSecretKey(Ljava/lang/String;Ljavax/crypto/SecretKey;)Z
    .registers 12

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_6
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/SyntheticPasswordSecret;->importKey(Ljava/lang/String;[B)V
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_d} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_11
    .catchall {:try_start_6 .. :try_end_d} :catchall_35

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catch_11
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_35

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_18
    const-string/jumbo v3, "Unexpected failure while save secret [ Status : %d ]"

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/server/SyntheticPasswordSecret;->mKeyStoreStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return v8

    :catch_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    :catchall_35
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
