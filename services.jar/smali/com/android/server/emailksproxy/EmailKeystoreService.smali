.class public Lcom/android/server/emailksproxy/EmailKeystoreService;
.super Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;
.source "EmailKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreErrors;,
        Lcom/android/server/emailksproxy/EmailKeystoreService$KeyStoreStatus;
    }
.end annotation


# static fields
.field private static final synthetic -android-security-KeyStore$StateSwitchesValues:[I = null

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "EmailKeystoreService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/emailksproxy/EmailKeystoreService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static synthetic -getandroid-security-KeyStore$StateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->-android-security-KeyStore$StateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/security/KeyStore$State;->values()[Landroid/security/KeyStore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-nez p0, :cond_d

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "context == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    invoke-static {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v5, Lcom/android/server/emailksproxy/EmailKeystoreService$2;

    invoke-direct {v5, v6}, Lcom/android/server/emailksproxy/EmailKeystoreService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    new-instance v3, Landroid/content/Intent;

    const-class v8, Landroid/security/IKeyChainService;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean v8, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v8, :cond_53

    const-string/jumbo v8, "EmailKeystoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "KeyChainConnection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {p0, v3, v5, v11, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_72

    new-instance v8, Ljava/lang/AssertionError;

    const-string/jumbo v9, "Could not bind to KeyChainService"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_72
    new-instance v9, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/security/IKeyChainService;

    invoke-direct {v9, p0, v5, v8, v12}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;)V

    return-object v9
.end method

.method private broadcastStorageChange()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCEPCaller()Z
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v0, :cond_18

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    return v2

    :cond_18
    return v3
.end method

.method private checkCaller()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    return-void
.end method

.method private installCaCertificate([B)V
    .registers 9

    new-instance v4, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    :try_start_5
    monitor-enter v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_4f

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_1b

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_19

    const-string/jumbo v5, "EmailKeystoreService"

    const-string/jumbo v6, "CA Certificate parse error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_3a

    :cond_19
    :try_start_19
    monitor-exit v4
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1a} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_1a} :catch_4f

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {v4, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_35

    const-string/jumbo v5, "EmailKeystoreService"

    const-string/jumbo v6, "CA Certificate successfully installed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_3a

    :cond_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_35 .. :try_end_36} :catch_4f

    :goto_36
    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->broadcastStorageChange()V

    return-void

    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4

    throw v5
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3d} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_3b .. :try_end_3d} :catch_4f

    :catch_3d
    move-exception v2

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_4b

    const-string/jumbo v5, "EmailKeystoreService"

    const-string/jumbo v6, "IOException while installing CA Certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    :catch_4f
    move-exception v3

    sget-boolean v5, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v5, :cond_5d

    const-string/jumbo v5, "EmailKeystoreService"

    const-string/jumbo v6, "CertificateException while installing CA Certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_36
.end method

.method private isHardwareBackedKey([B)Z
    .registers 10

    const/4 v7, 0x0

    :try_start_1
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    if-nez v4, :cond_16

    return v7

    :cond_16
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    return v7

    :cond_25
    new-instance v5, Lsun/security/x509/AlgorithmId;

    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v5}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_36

    return v7

    :cond_36
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3b

    move-result v5

    return v5

    :catch_3b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "System Service"

    const-string/jumbo v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private makeUidWithUserID(II)I
    .registers 4

    if-gez p1, :cond_3

    return p2

    :cond_3
    const v0, 0x186a0

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public getKeystoreStatus()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v3

    if-nez v3, :cond_9

    return v5

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-static {}, Lcom/android/server/emailksproxy/EmailKeystoreService;->-getandroid-security-KeyStore$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_44

    packed-switch v3, :pswitch_data_4a

    const/4 v2, 0x0

    :goto_1f
    sget-boolean v3, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v3, :cond_3d

    const-string/jumbo v3, "EmailKeystoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getKeystoreStatus returns: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v2

    :pswitch_3e
    const/4 v2, 0x1

    goto :goto_1f

    :pswitch_40
    const/4 v2, 0x2

    goto :goto_1f

    :pswitch_42
    const/4 v2, 0x3

    goto :goto_1f

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v5

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_42
        :pswitch_3e
    .end packed-switch
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_c

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/emailksproxy/EmailKeystoreService$1;-><init>(Lcom/android/server/emailksproxy/EmailKeystoreService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public installCACert(Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    return v3

    :cond_8
    if-nez p1, :cond_c

    const/4 v3, -0x2

    return v3

    :cond_c
    :try_start_c
    iget-object v2, p1, Lcom/samsung/android/knox/util/SemCertAndroidKeyStore;->certs:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    :goto_f
    array-length v3, v2

    if-ge v1, v3, :cond_24

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/emailksproxy/EmailKeystoreService;->installCaCertificate([B)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x1

    return v3

    :cond_24
    const/4 v3, 0x0

    return v3
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/knox/util/SemCertByte;Ljava/lang/String;[CZI)I
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v18

    if-nez v18, :cond_9

    const/16 v18, 0x1

    return v18

    :cond_9
    if-nez p1, :cond_e

    const/16 v18, 0x1

    return v18

    :cond_e
    const-wide/16 v12, 0x0

    :try_start_10
    const-string/jumbo v18, "PKCS12"

    invoke-static/range {v18 .. v18}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v14, v0, [B

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v16

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v4, v0, [Ljava/security/cert/Certificate;

    const/16 v18, 0x0

    aput-object v17, v4, v18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    sget-boolean v18, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v18, :cond_73

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "installCertificateInAndroidKeyStore: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    if-eqz p4, :cond_16d

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v11

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USRCERT_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v17, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v19

    const/16 v20, 0x3f2

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_b0
    .catch Ljava/security/KeyStoreException; {:try_start_10 .. :try_end_b0} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_b0} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_b0} :catch_370
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_b0} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_10 .. :try_end_b0} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_b0} :catch_352
    .catchall {:try_start_10 .. :try_end_b0} :catchall_38e

    move-result v18

    if-nez v18, :cond_b9

    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_b9
    :try_start_b9
    invoke-interface/range {v16 .. v16}, Ljava/security/Key;->getEncoded()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/emailksproxy/EmailKeystoreService;->isHardwareBackedKey([B)Z

    move-result v18

    if-eqz v18, :cond_fb

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USRPKEY_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/security/Key;->getEncoded()[B

    move-result-object v19

    const/16 v20, 0x3f2

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_f2
    .catch Ljava/security/KeyStoreException; {:try_start_b9 .. :try_end_f2} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b9 .. :try_end_f2} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_b9 .. :try_end_f2} :catch_370
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_f2} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_b9 .. :try_end_f2} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_f2} :catch_352
    .catchall {:try_start_b9 .. :try_end_f2} :catchall_38e

    move-result v18

    if-nez v18, :cond_12f

    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_fb
    :try_start_fb
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USRPKEY_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/security/Key;->getEncoded()[B

    move-result-object v19

    const/16 v20, 0x3f2

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_126
    .catch Ljava/security/KeyStoreException; {:try_start_fb .. :try_end_126} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_fb .. :try_end_126} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_fb .. :try_end_126} :catch_370
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_126} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_fb .. :try_end_126} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_126} :catch_352
    .catchall {:try_start_fb .. :try_end_126} :catchall_38e

    move-result v18

    if-nez v18, :cond_12f

    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_12f
    :try_start_12f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    move/from16 v18, v0

    if-lez v18, :cond_34c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CACERT_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x3f2

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_164
    .catch Ljava/security/KeyStoreException; {:try_start_12f .. :try_end_164} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12f .. :try_end_164} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_12f .. :try_end_164} :catch_370
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_164} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12f .. :try_end_164} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_164} :catch_352
    .catchall {:try_start_12f .. :try_end_164} :catchall_38e

    move-result v18

    if-nez v18, :cond_34c

    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_16d
    :try_start_16d
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v11

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USRCERT_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v17, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v19

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v18

    if-nez v18, :cond_214

    sget-boolean v18, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v18, :cond_20e

    const-string/jumbo v18, "EmailKeystoreService"

    const-string/jumbo v19, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Alias : USRCERT_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Uid : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20e
    .catch Ljava/security/KeyStoreException; {:try_start_16d .. :try_end_20e} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16d .. :try_end_20e} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_16d .. :try_end_20e} :catch_370
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_20e} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_16d .. :try_end_20e} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_20e} :catch_352
    .catchall {:try_start_16d .. :try_end_20e} :catchall_38e

    :cond_20e
    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_214
    :try_start_214
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "USRPKEY_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/security/Key;->getEncoded()[B

    move-result-object v19

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v18

    if-nez v18, :cond_2ab

    sget-boolean v18, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v18, :cond_2a5

    const-string/jumbo v18, "EmailKeystoreService"

    const-string/jumbo v19, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Alias : USRPKEY_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Uid : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a5
    .catch Ljava/security/KeyStoreException; {:try_start_214 .. :try_end_2a5} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_214 .. :try_end_2a5} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_214 .. :try_end_2a5} :catch_370
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_2a5} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_214 .. :try_end_2a5} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_2a5} :catch_352
    .catchall {:try_start_214 .. :try_end_2a5} :catchall_38e

    :cond_2a5
    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_2ab
    :try_start_2ab
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    move/from16 v18, v0

    if-lez v18, :cond_34c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CACERT_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    move-object/from16 v19, v0

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v18

    if-nez v18, :cond_34c

    sget-boolean v18, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v18, :cond_346

    const-string/jumbo v18, "EmailKeystoreService"

    const-string/jumbo v19, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Alias : CACERT_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "EmailKeystoreService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Uid : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;->makeUidWithUserID(II)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_346
    .catch Ljava/security/KeyStoreException; {:try_start_2ab .. :try_end_346} :catch_384
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2ab .. :try_end_346} :catch_37a
    .catch Ljava/security/cert/CertificateException; {:try_start_2ab .. :try_end_346} :catch_370
    .catch Ljava/io/IOException; {:try_start_2ab .. :try_end_346} :catch_366
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2ab .. :try_end_346} :catch_35c
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_346} :catch_352
    .catchall {:try_start_2ab .. :try_end_346} :catchall_38e

    :cond_346
    const/16 v18, 0x1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :cond_34c
    const/16 v18, 0x0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catch_352
    move-exception v6

    :try_start_353
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_356
    .catchall {:try_start_353 .. :try_end_356} :catchall_38e

    const/16 v18, 0x4

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catch_35c
    move-exception v9

    :try_start_35d
    invoke-virtual {v9}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_360
    .catchall {:try_start_35d .. :try_end_360} :catchall_38e

    const/16 v18, 0x2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catch_366
    move-exception v5

    :try_start_367
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36a
    .catchall {:try_start_367 .. :try_end_36a} :catchall_38e

    const/16 v18, 0x4

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catch_370
    move-exception v10

    :try_start_371
    invoke-virtual {v10}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_374
    .catchall {:try_start_371 .. :try_end_374} :catchall_38e

    const/16 v18, 0x3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catch_37a
    move-exception v8

    :try_start_37b
    invoke-virtual {v8}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_37e
    .catchall {:try_start_37b .. :try_end_37e} :catchall_38e

    const/16 v18, 0x2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catch_384
    move-exception v7

    :try_start_385
    invoke-virtual {v7}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_388
    .catchall {:try_start_385 .. :try_end_388} :catchall_38e

    const/16 v18, 0x2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v18

    :catchall_38e
    move-exception v18

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/server/emailksproxy/EmailKeystoreService;->checkCEPCaller()Z

    move-result v4

    if-nez v4, :cond_9

    return v7

    :cond_9
    sget-boolean v4, Lcom/android/server/emailksproxy/EmailKeystoreService;->DBG:Z

    if-eqz v4, :cond_2b

    const-string/jumbo v4, "EmailKeystoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAliasExists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const/16 v1, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    if-eqz p2, :cond_90

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e4

    :cond_8f
    return v8

    :cond_90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_de

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_de

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_db} :catch_df

    move-result v4

    if-eqz v4, :cond_e4

    :cond_de
    return v8

    :catch_df
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return v7

    :cond_e4
    return v7
.end method
