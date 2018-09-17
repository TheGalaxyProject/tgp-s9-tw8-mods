.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static mTimaService:Landroid/service/tima/ITimaService;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    const-string/jumbo v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/vpn/key"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_13
    invoke-virtual {p2, p1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_37

    if-eqz p1, :cond_37

    const-string/jumbo v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_37
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .registers 9

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return-object v5

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->generateSalt()[B

    move-result-object v4

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v5, "HmacSHA256"

    const-string/jumbo v6, "AndroidOpenSSL"

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_27

    move-result-object v1

    :goto_26
    return-object v1

    :catch_27
    move-exception v0

    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    const-string/jumbo v5, "KnoxVpnCredentialHandler"

    const-string/jumbo v6, "Error inside generateCMK "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private generateSalt()[B
    .registers 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x20

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v2

    :cond_25
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_e
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v3

    :try_start_13
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_1c} :catch_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v2

    :catch_1d
    move-exception v0

    const-string/jumbo v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to load TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_39
    move-exception v1

    const-string/jumbo v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get TKS instance..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "N/A"

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v0, "TIMAKeyStore"

    :cond_11
    :goto_11
    const-string/jumbo v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_39
    const-string/jumbo v2, "FIPS3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v0, "FipsTimaKeyStore"

    goto :goto_11
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_11

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    :cond_11
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaService:Landroid/service/tima/ITimaService;

    return-object v0
.end method

.method private getTimaStatus()I
    .registers 7

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v4, "2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2f} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2f} :catch_97

    :cond_2f
    :goto_2f
    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Tima Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4a
    :try_start_4a
    const-string/jumbo v4, "3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v2

    goto :goto_2f

    :cond_5c
    const-string/jumbo v4, "FIPS3.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v2

    goto :goto_2f

    :cond_6f
    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_8b} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8b} :catch_97

    goto :goto_2f

    :catch_8c
    move-exception v0

    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_97
    move-exception v1

    const-string/jumbo v3, "KnoxVpnCredentialHandler"

    const-string/jumbo v4, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    return-void
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/16 v7, 0x20

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v0, v7, [B

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-eqz v6, :cond_62

    :try_start_14
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    const-string/jumbo v7, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4e

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4e

    invoke-interface {v6, v4}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    if-eqz v3, :cond_4e

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    if-nez v7, :cond_4e

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-static {v3, v7, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :cond_4e
    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_51} :catch_55
    .catchall {:try_start_14 .. :try_end_51} :catchall_5d

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_54
    return-object v5

    :catch_55
    move-exception v2

    :try_start_56
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5d

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    :catchall_5d
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_62
    return-object v5
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .registers 15

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v8

    sparse-switch v8, :sswitch_data_1c4

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "Tima status is unknown"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    :goto_1f
    if-eqz p2, :cond_4d

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v8, ""

    invoke-direct {v6, p2, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v7, v6}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v8, :cond_41

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "An entry is already present, deleting it and updating the name"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    :cond_44
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v8

    invoke-virtual {v4, p1, v7, v8}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_4c
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4c} :catch_160
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4c} :catch_125
    .catchall {:try_start_4 .. :try_end_4c} :catchall_19b

    const/4 v5, 0x1

    :cond_4d
    if-nez v4, :cond_58

    :try_start_4f
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_108

    :cond_58
    :goto_58
    return v5

    :sswitch_59
    :try_start_59
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v9, "2.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsForTima20(Ljava/lang/String;[B)Z
    :try_end_67
    .catch Ljava/security/KeyStoreException; {:try_start_59 .. :try_end_67} :catch_160
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_67} :catch_125
    .catchall {:try_start_59 .. :try_end_67} :catchall_19b

    move-result v8

    :try_start_68
    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    const-string/jumbo v10, "storeCredentials :: Null keystore..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_71} :catch_8e

    :goto_71
    return v8

    :cond_72
    :try_start_72
    const-string/jumbo v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    goto :goto_1f

    :cond_80
    const-string/jumbo v9, "FIPS3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_8c
    .catch Ljava/security/KeyStoreException; {:try_start_72 .. :try_end_8c} :catch_160
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8c} :catch_125
    .catchall {:try_start_72 .. :try_end_8c} :catchall_19b

    move-result-object v4

    goto :goto_1f

    :catch_8e
    move-exception v3

    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_aa
    :try_start_aa
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "unknown TIMA Version"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/security/KeyStoreException; {:try_start_aa .. :try_end_b3} :catch_160
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_125
    .catchall {:try_start_aa .. :try_end_b3} :catchall_19b

    :try_start_b3
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bc} :catch_bd

    :goto_bc
    return v11

    :catch_bd
    move-exception v3

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :sswitch_d9
    :try_start_d9
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "TIMA Compromised"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/security/KeyStoreException; {:try_start_d9 .. :try_end_e2} :catch_160
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e2} :catch_125
    .catchall {:try_start_d9 .. :try_end_e2} :catchall_19b

    :try_start_e2
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_eb} :catch_ec

    :goto_eb
    return v11

    :catch_ec
    move-exception v3

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    :catch_108
    move-exception v3

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    :catch_125
    move-exception v0

    :try_start_126
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "Exception occured while trying to store the info inside keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v8, :cond_136

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_136
    .catchall {:try_start_126 .. :try_end_136} :catchall_19b

    :cond_136
    if-nez v4, :cond_58

    :try_start_138
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_141} :catch_143

    goto/16 :goto_58

    :catch_143
    move-exception v3

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    :catch_160
    move-exception v1

    :try_start_161
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v8, :cond_171

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_171
    .catchall {:try_start_161 .. :try_end_171} :catchall_19b

    :cond_171
    if-nez v4, :cond_58

    :try_start_173
    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_17c} :catch_17e

    goto/16 :goto_58

    :catch_17e
    move-exception v3

    const-string/jumbo v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    :catchall_19b
    move-exception v8

    if-nez v4, :cond_1a7

    :try_start_19e
    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    const-string/jumbo v10, "storeCredentials :: Null keystore..."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a7} :catch_1a8

    :cond_1a7
    :goto_1a7
    throw v8

    :catch_1a8
    move-exception v3

    const-string/jumbo v9, "KnoxVpnCredentialHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to close input stream: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a7

    :sswitch_data_1c4
    .sparse-switch
        0x0 -> :sswitch_59
        0x1000c -> :sswitch_d9
        0x1000d -> :sswitch_d9
        0x1000e -> :sswitch_d9
        0x1000f -> :sswitch_d9
    .end sparse-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .registers 13

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v3, :cond_4e

    :try_start_f
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    const-string/jumbo v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_35

    const/4 v6, -0x1

    if-eq v2, v6, :cond_35

    invoke-interface {v3, v2, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    :cond_35
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_38} :catch_3d
    .catchall {:try_start_f .. :try_end_38} :catchall_49

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x1

    return v6

    :catch_3d
    move-exception v1

    :try_start_3e
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_45

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    :cond_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_49
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_4e
    const-string/jumbo v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "storeCredentialsForTima20 failed returning false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method private updateTimaVersion()V
    .registers 5

    const-string/jumbo v1, "N/A"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_41

    :try_start_b
    const-string/jumbo v1, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    if-eqz v1, :cond_42

    const-string/jumbo v1, "2.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_4e

    :goto_25
    const-string/jumbo v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void

    :cond_42
    :try_start_42
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_59

    const-string/jumbo v1, "FIPS3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4d} :catch_4e

    goto :goto_25

    :catch_4e
    move-exception v0

    const-string/jumbo v1, "KnoxVpnCredentialHandler"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :cond_59
    :try_start_59
    const-string/jumbo v1, "3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_4e

    goto :goto_25
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .registers 16

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v10

    sparse-switch v10, :sswitch_data_294

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "Tima status is unknown"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    invoke-direct {p0, v5, v7, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_21} :catch_22b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_21} :catch_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_21} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_174
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_137
    .catchall {:try_start_6 .. :try_end_21} :catchall_268

    if-nez v7, :cond_2c

    :try_start_23
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_fd

    :cond_2c
    :goto_2c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :sswitch_30
    :try_start_30
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v11, "2.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_38} :catch_22b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_38} :catch_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_30 .. :try_end_38} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_174
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_137
    .catchall {:try_start_30 .. :try_end_38} :catchall_268

    move-result v11

    if-eqz v11, :cond_48

    :try_start_3b
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_44} :catch_7d

    :goto_44
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_48
    :try_start_48
    const-string/jumbo v11, "3.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6f

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    :goto_55
    if-eqz v7, :cond_60

    invoke-virtual {v7, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-virtual {v7, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/security/KeyStoreException; {:try_start_48 .. :try_end_60} :catch_22b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_48 .. :try_end_60} :catch_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_48 .. :try_end_60} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_60} :catch_174
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_60} :catch_137
    .catchall {:try_start_48 .. :try_end_60} :catchall_268

    :cond_60
    if-nez v7, :cond_6b

    :try_start_62
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6b} :catch_11a

    :cond_6b
    :goto_6b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6e
    return-void

    :cond_6f
    :try_start_6f
    const-string/jumbo v11, "FIPS3.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_7b
    .catch Ljava/security/KeyStoreException; {:try_start_6f .. :try_end_7b} :catch_22b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_7b} :catch_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_6f .. :try_end_7b} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7b} :catch_174
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_137
    .catchall {:try_start_6f .. :try_end_7b} :catchall_268

    move-result-object v7

    goto :goto_55

    :catch_7d
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_99
    :try_start_99
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "unknown TIMA Version"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/security/KeyStoreException; {:try_start_99 .. :try_end_a2} :catch_22b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_99 .. :try_end_a2} :catch_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_99 .. :try_end_a2} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a2} :catch_174
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a2} :catch_137
    .catchall {:try_start_99 .. :try_end_a2} :catchall_268

    :try_start_a2
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ab} :catch_af

    :goto_ab
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_af
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :sswitch_cb
    :try_start_cb
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "TIMA Compromised"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/security/KeyStoreException; {:try_start_cb .. :try_end_d4} :catch_22b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cb .. :try_end_d4} :catch_1ee
    .catch Ljava/security/cert/CertificateException; {:try_start_cb .. :try_end_d4} :catch_1b1
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d4} :catch_174
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d4} :catch_137
    .catchall {:try_start_cb .. :try_end_d4} :catchall_268

    :try_start_d4
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_dd} :catch_e1

    :goto_dd
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_e1
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    :catch_fd
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :catch_11a
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    :catch_137
    move-exception v1

    :try_start_138
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_13f

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13f
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "Exception occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_138 .. :try_end_148} :catchall_268

    if-nez v7, :cond_153

    :try_start_14a
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_153} :catch_158

    :cond_153
    :goto_153
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6e

    :catch_158
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_153

    :catch_174
    move-exception v0

    :try_start_175
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_17c

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17c
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "IOException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_175 .. :try_end_185} :catchall_268

    if-nez v7, :cond_190

    :try_start_187
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_190} :catch_195

    :cond_190
    :goto_190
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6e

    :catch_195
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_190

    :catch_1b1
    move-exception v4

    :try_start_1b2
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_1b9

    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :cond_1b9
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c2
    .catchall {:try_start_1b2 .. :try_end_1c2} :catchall_268

    if-nez v7, :cond_1cd

    :try_start_1c4
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1cd} :catch_1d2

    :cond_1cd
    :goto_1cd
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6e

    :catch_1d2
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    :catch_1ee
    move-exception v3

    :try_start_1ef
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_1f6

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_1f6
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ff
    .catchall {:try_start_1ef .. :try_end_1ff} :catchall_268

    if-nez v7, :cond_20a

    :try_start_201
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_20a} :catch_20f

    :cond_20a
    :goto_20a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6e

    :catch_20f
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20a

    :catch_22b
    move-exception v2

    :try_start_22c
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v10, :cond_233

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    :cond_233
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23c
    .catchall {:try_start_22c .. :try_end_23c} :catchall_268

    if-nez v7, :cond_247

    :try_start_23e
    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    const-string/jumbo v11, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_247
    .catch Ljava/io/IOException; {:try_start_23e .. :try_end_247} :catch_24c

    :cond_247
    :goto_247
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6e

    :catch_24c
    move-exception v6

    const-string/jumbo v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to close input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_247

    :catchall_268
    move-exception v10

    if-nez v7, :cond_274

    :try_start_26b
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v12, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_274} :catch_278

    :cond_274
    :goto_274
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :catch_278
    move-exception v6

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to close input stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_274

    :sswitch_data_294
    .sparse-switch
        0x0 -> :sswitch_30
        0x1000c -> :sswitch_cb
        0x1000d -> :sswitch_cb
        0x1000e -> :sswitch_cb
        0x1000f -> :sswitch_cb
    .end sparse-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v11, :cond_20

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v11

    sparse-switch v11, :sswitch_data_1fc

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "Tima status is unknown"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    :goto_44
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6d

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v5

    check-cast v5, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    invoke-interface {v11}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_6d

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6c
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_6c} :catch_192
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6c} :catch_155
    .catchall {:try_start_27 .. :try_end_6c} :catchall_1cf

    move-object v8, v9

    :cond_6d
    if-nez v10, :cond_78

    :try_start_6f
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_138

    :cond_78
    :goto_78
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7b
    return-object v8

    :sswitch_7c
    :try_start_7c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string/jumbo v14, "2.0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9a

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/security/KeyStoreException; {:try_start_7c .. :try_end_8c} :catch_192
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8c} :catch_155
    .catchall {:try_start_7c .. :try_end_8c} :catchall_1cf

    move-result-object v11

    :try_start_8d
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_96} :catch_b6

    :goto_96
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    :cond_9a
    :try_start_9a
    const-string/jumbo v14, "3.0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v10

    goto :goto_44

    :cond_a8
    const-string/jumbo v14, "FIPS3.0"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_b4
    .catch Ljava/security/KeyStoreException; {:try_start_9a .. :try_end_b4} :catch_192
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b4} :catch_155
    .catchall {:try_start_9a .. :try_end_b4} :catchall_1cf

    move-result-object v10

    goto :goto_44

    :catch_b6
    move-exception v7

    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :cond_d2
    :try_start_d2
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "unknown TIMA Version"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/security/KeyStoreException; {:try_start_d2 .. :try_end_db} :catch_192
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_155
    .catchall {:try_start_d2 .. :try_end_db} :catchall_1cf

    const/4 v11, 0x0

    :try_start_dc
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e5} :catch_e9

    :goto_e5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    :catch_e9
    move-exception v7

    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    :sswitch_105
    :try_start_105
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "TIMA Comprimised"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/security/KeyStoreException; {:try_start_105 .. :try_end_10e} :catch_192
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10e} :catch_155
    .catchall {:try_start_105 .. :try_end_10e} :catchall_1cf

    const/4 v11, 0x0

    :try_start_10f
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_118} :catch_11c

    :goto_118
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v11

    :catch_11c
    move-exception v7

    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    :catch_138
    move-exception v7

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    :catch_155
    move-exception v3

    :try_start_156
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v11, :cond_166

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_166
    .catchall {:try_start_156 .. :try_end_166} :catchall_1cf

    :cond_166
    if-nez v10, :cond_171

    :try_start_168
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_171} :catch_176

    :cond_171
    :goto_171
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7b

    :catch_176
    move-exception v7

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_171

    :catch_192
    move-exception v4

    :try_start_193
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v11, :cond_1a3

    invoke-virtual {v4}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_1a3
    .catchall {:try_start_193 .. :try_end_1a3} :catchall_1cf

    :cond_1a3
    if-nez v10, :cond_1ae

    :try_start_1a5
    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1ae} :catch_1b3

    :cond_1ae
    :goto_1ae
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7b

    :catch_1b3
    move-exception v7

    const-string/jumbo v11, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae

    :catchall_1cf
    move-exception v11

    if-nez v10, :cond_1db

    :try_start_1d2
    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    const-string/jumbo v15, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1db} :catch_1df

    :cond_1db
    :goto_1db
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    :catch_1df
    move-exception v7

    const-string/jumbo v14, "KnoxVpnCredentialHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to close input stream: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1db

    nop

    :sswitch_data_1fc
    .sparse-switch
        0x0 -> :sswitch_7c
        0x1000c -> :sswitch_105
        0x1000d -> :sswitch_105
        0x1000e -> :sswitch_105
        0x1000f -> :sswitch_105
    .end sparse-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_37

    const-string/jumbo v4, "N/A"

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    :cond_19
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result v0

    const-string/jumbo v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3b

    :cond_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_3b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
