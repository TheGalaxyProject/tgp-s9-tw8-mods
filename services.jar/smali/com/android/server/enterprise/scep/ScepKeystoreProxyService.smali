.class public Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;,
        Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyStoreErrors;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private UidoftheCert:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
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
    invoke-static {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;

    invoke-direct {v5, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

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

    sget-boolean v8, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_53

    const-string/jumbo v8, "SCEPKeystoreProxyService"

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
    new-instance v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/security/IKeyChainService;

    invoke-direct {v9, p0, v5, v8, v12}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;)V

    return-object v9
.end method

.method private broadcastStorageChange()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkCEPCaller()Z
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

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
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_27

    move-result-object v0

    if-nez v0, :cond_25

    return v7

    :cond_25
    const/4 v1, 0x0

    return v7

    :catch_27
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
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v9, 0x1

    return v9

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_2e

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "deleteCertificateEntry: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    if-nez p2, :cond_d2

    const/16 v1, 0x3e8

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/16 v10, 0x3e8

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    :goto_44
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_62

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_80

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "deleteCertificateEntry: processId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    const/4 v3, 0x0

    if-nez p2, :cond_87

    const/16 v9, 0x3e8

    if-ne v2, v9, :cond_219

    :cond_87
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_131

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_dc

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_d0

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry delete user cert: failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    const/4 v9, 0x1

    return v9

    :cond_d2
    const/16 v1, 0x3f2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v2, 0x3f2

    goto/16 :goto_44

    :cond_dc
    const/4 v3, 0x1

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_ea

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry delete user cert: success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    :goto_ea
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1bd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_168

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_12f

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry delete CA Cert: failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    const/4 v9, 0x1

    return v9

    :cond_131
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_ea

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not exist : USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14f} :catch_150
    .catchall {:try_start_c .. :try_end_14f} :catchall_1dc

    goto :goto_ea

    :catch_150
    move-exception v4

    :try_start_151
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_161

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry return exception"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catchall {:try_start_151 .. :try_end_161} :catchall_1dc

    :cond_161
    const/4 v9, 0x1

    if-eqz v5, :cond_167

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_167
    return v9

    :cond_168
    const/4 v3, 0x1

    :try_start_169
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_176

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry delete CA cert: success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_176
    :goto_176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1fa

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->makeUidWithUserID(II)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1e3

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_1bb

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry delKeyAsUser: failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bb
    const/4 v9, 0x1

    return v9

    :cond_1bd
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_176

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not exist : CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1db} :catch_150
    .catchall {:try_start_169 .. :try_end_1db} :catchall_1dc

    goto :goto_176

    :catchall_1dc
    move-exception v9

    if-eqz v5, :cond_1e2

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1e2
    throw v9

    :cond_1e3
    const/4 v3, 0x1

    :try_start_1e4
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_1f1

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "deleteCertificateEntry delKeyAsUser: success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1f1} :catch_150
    .catchall {:try_start_1e4 .. :try_end_1f1} :catchall_1dc

    :cond_1f1
    :goto_1f1
    if-eqz v3, :cond_352

    const/4 v9, 0x0

    if-eqz v5, :cond_1f9

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1f9
    return v9

    :cond_1fa
    :try_start_1fa
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_1f1

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not exist : USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f1

    :cond_219
    iget-object v9, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_29f

    const-string/jumbo v9, "USRCERT_"

    invoke-interface {v6, p1, v9}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25a

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_253

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "keyChainService.deleteCertificate delete user cert: failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_253} :catch_150
    .catchall {:try_start_1fa .. :try_end_253} :catchall_1dc

    :cond_253
    const/4 v9, 0x1

    if-eqz v5, :cond_259

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_259
    return v9

    :cond_25a
    const/4 v3, 0x1

    :try_start_25b
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_268

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "keyChainService.deleteCertificate delete user cert: success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_268
    :goto_268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_303

    const-string/jumbo v9, "CACERT_"

    invoke-interface {v6, p1, v9}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2be

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_298

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "keyChainService.deleteCertificate delete CA Cert: failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_25b .. :try_end_298} :catch_150
    .catchall {:try_start_25b .. :try_end_298} :catchall_1dc

    :cond_298
    const/4 v9, 0x1

    if-eqz v5, :cond_29e

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_29e
    return v9

    :cond_29f
    :try_start_29f
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_268

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not exist : USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_268

    :cond_2be
    const/4 v3, 0x1

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_2cc

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "keyChainService.deleteCertificate delete CA cert: success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cc
    :goto_2cc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "USRPKEY_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v2}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_332

    const-string/jumbo v9, "USRPKEY_"

    invoke-interface {v6, p1, v9}, Landroid/security/IKeyChainService;->deleteCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_322

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_2fc

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "keyChainService.deleteCertificate delKeyAsUser: failure"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_29f .. :try_end_2fc} :catch_150
    .catchall {:try_start_29f .. :try_end_2fc} :catchall_1dc

    :cond_2fc
    const/4 v9, 0x1

    if-eqz v5, :cond_302

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_302
    return v9

    :cond_303
    :try_start_303
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_2cc

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not exist : CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cc

    :cond_322
    const/4 v3, 0x1

    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_1f1

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    const-string/jumbo v10, "keyChainService.deleteCertificate delKeyAsUser: success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f1

    :cond_332
    sget-boolean v9, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v9, :cond_1f1

    const-string/jumbo v9, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not exist : USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_303 .. :try_end_350} :catch_150
    .catchall {:try_start_303 .. :try_end_350} :catchall_1dc

    goto/16 :goto_1f1

    :cond_352
    const/4 v9, 0x1

    if-eqz v5, :cond_358

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_358
    return v9
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x0

    return-object v11

    :cond_8
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    new-instance v10, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v10}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v5, 0x0

    sget-boolean v11, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v11, :cond_34

    const-string/jumbo v11, "SCEPKeystoreProxyService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getCertificate:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :try_start_34
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const/16 v12, 0x3e8

    invoke-static {v11, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/16 v2, 0x3f2

    const/16 v11, 0x3e8

    if-ne v1, v11, :cond_81

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_81

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-virtual {v7, v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_77} :catch_e7
    .catchall {:try_start_34 .. :try_end_77} :catchall_f2

    move-result-object v8

    :goto_78
    if-nez v8, :cond_c6

    const/4 v11, 0x0

    if-eqz v5, :cond_80

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_80
    return-object v11

    :cond_81
    :try_start_81
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v8

    goto :goto_78

    :cond_b4
    iget-object v11, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v11, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    const-string/jumbo v11, "USRCERT_"

    invoke-interface {v6, p1, v11}, Landroid/security/IKeyChainService;->getCertificateSystem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_78

    :cond_c6
    invoke-static {v8}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_e1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_e1

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/Certificate;

    const/4 v12, 0x0

    aput-object v11, v3, v12

    iput-object v3, v10, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_e1} :catch_e7
    .catchall {:try_start_81 .. :try_end_e1} :catchall_f2

    :cond_e1
    if-eqz v5, :cond_e6

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_e6
    return-object v10

    :catch_e7
    move-exception v4

    :try_start_e8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_f2

    if-eqz v5, :cond_f0

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_f0
    const/4 v11, 0x0

    return-object v11

    :catchall_f2
    move-exception v11

    if-eqz v5, :cond_f8

    invoke-virtual {v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_f8
    throw v11
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

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

    new-instance v1, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v6

    if-nez v6, :cond_9

    return v7

    :cond_9
    if-nez p1, :cond_c

    return v7

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    :goto_1d
    array-length v6, v4

    if-ge v1, v6, :cond_2c

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_33
    .catchall {:try_start_c .. :try_end_29} :catchall_3d

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_31
    const/4 v6, 0x0

    return v6

    :catch_33
    move-exception v0

    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_3c
    return v7

    :catchall_3d
    move-exception v6

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_43
    throw v6
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v5

    if-nez v5, :cond_9

    return v8

    :cond_9
    const/4 v0, 0x0

    const/16 v0, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_3b

    :try_start_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v6}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_43
    .catchall {:try_start_16 .. :try_end_34} :catchall_4b

    move-result v5

    if-nez v5, :cond_3f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catch_43
    move-exception v1

    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_4b
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCaCertificate([B)V
    .registers 9

    new-instance v4, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    :try_start_5
    monitor-enter v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_6} :catch_4f

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_1b

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_19

    const-string/jumbo v5, "SCEPKeystoreProxyService"

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

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_35

    const-string/jumbo v5, "SCEPKeystoreProxyService"

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
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->broadcastStorageChange()V

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

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_4b

    const-string/jumbo v5, "SCEPKeystoreProxyService"

    const-string/jumbo v6, "IOException while installing CA Certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    :catch_4f
    move-exception v3

    sget-boolean v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_5d

    const-string/jumbo v5, "SCEPKeystoreProxyService"

    const-string/jumbo v6, "CertificateException while installing CA Certificate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_36
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v23

    if-nez v23, :cond_9

    const/16 v23, 0x1

    return v23

    :cond_9
    if-nez p1, :cond_e

    const/16 v23, 0x1

    return v23

    :cond_e
    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    :try_start_12
    const-string/jumbo v23, "PKCS12"

    invoke-static/range {v23 .. v23}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    move-object/from16 v19, v0

    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v22

    check-cast v22, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v21

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v7, v0, [Ljava/security/cert/Certificate;

    const/16 v23, 0x0

    aput-object v22, v7, v23

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_81

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "installCertificateInAndroidKeyStore: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-eqz p4, :cond_183

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "USRCERT_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v22, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v24

    const/16 v25, 0x3f2

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_c0
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_c0} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_c0} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_c0} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_c0} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12 .. :try_end_c0} :catch_499
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_c0} :catch_48a
    .catchall {:try_start_12 .. :try_end_c0} :catchall_4e4

    move-result v23

    if-nez v23, :cond_c9

    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_c9
    :try_start_c9
    invoke-interface/range {v21 .. v21}, Ljava/security/Key;->getEncoded()[B

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v23

    if-eqz v23, :cond_10d

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "USRPKEY_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Ljava/security/Key;->getEncoded()[B

    move-result-object v24

    const/16 v25, 0x3f2

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_104
    .catch Ljava/security/KeyStoreException; {:try_start_c9 .. :try_end_104} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c9 .. :try_end_104} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_c9 .. :try_end_104} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_104} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_c9 .. :try_end_104} :catch_499
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_104} :catch_48a
    .catchall {:try_start_c9 .. :try_end_104} :catchall_4e4

    move-result v23

    if-nez v23, :cond_143

    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_10d
    :try_start_10d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "USRPKEY_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Ljava/security/Key;->getEncoded()[B

    move-result-object v24

    const/16 v25, 0x3f2

    const/16 v26, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_13a
    .catch Ljava/security/KeyStoreException; {:try_start_10d .. :try_end_13a} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10d .. :try_end_13a} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_10d .. :try_end_13a} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_13a} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_10d .. :try_end_13a} :catch_499
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_13a} :catch_48a
    .catchall {:try_start_10d .. :try_end_13a} :catchall_4e4

    move-result v23

    if-nez v23, :cond_143

    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_143
    :try_start_143
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    move/from16 v23, v0

    if-lez v23, :cond_47f

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "CACERT_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    move-object/from16 v24, v0

    const/16 v25, 0x3f2

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_17a
    .catch Ljava/security/KeyStoreException; {:try_start_143 .. :try_end_17a} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_143 .. :try_end_17a} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_143 .. :try_end_17a} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_17a} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_143 .. :try_end_17a} :catch_499
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_17a} :catch_48a
    .catchall {:try_start_143 .. :try_end_17a} :catchall_4e4

    move-result v23

    if-nez v23, :cond_47f

    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_183
    :try_start_183
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x3e8

    invoke-static/range {v23 .. v24}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    const/16 v23, 0x3e8

    move/from16 v0, v23

    if-ne v6, v0, :cond_318

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "USRCERT_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v22, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v23

    if-nez v23, :cond_21c

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_216

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    const-string/jumbo v24, "USER_CERTIFICATE keystoreService.put is failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Alias : USRCERT_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/security/KeyStoreException; {:try_start_183 .. :try_end_216} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_183 .. :try_end_216} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_183 .. :try_end_216} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_216} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_183 .. :try_end_216} :catch_499
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_216} :catch_48a
    .catchall {:try_start_183 .. :try_end_216} :catchall_4e4

    :cond_216
    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_21c
    :try_start_21c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "USRPKEY_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Ljava/security/Key;->getEncoded()[B

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v23

    if-nez v23, :cond_295

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_28f

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    const-string/jumbo v24, "USER_PRIVATE_KEY keystoreService.importKey is failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Alias : USRPKEY_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28f
    .catch Ljava/security/KeyStoreException; {:try_start_21c .. :try_end_28f} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21c .. :try_end_28f} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_21c .. :try_end_28f} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_28f} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_21c .. :try_end_28f} :catch_499
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_28f} :catch_48a
    .catchall {:try_start_21c .. :try_end_28f} :catchall_4e4

    :cond_28f
    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_295
    :try_start_295
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    move/from16 v23, v0

    if-lez v23, :cond_47f

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "CACERT_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v23

    if-nez v23, :cond_47f

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_312

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    const-string/jumbo v24, "CA_CERTIFICATE keystoreService.put is failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Alias : CACERT_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_312
    .catch Ljava/security/KeyStoreException; {:try_start_295 .. :try_end_312} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_295 .. :try_end_312} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_295 .. :try_end_312} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_312} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_295 .. :try_end_312} :catch_499
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_312} :catch_48a
    .catchall {:try_start_295 .. :try_end_312} :catchall_4e4

    :cond_312
    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :cond_318
    :try_start_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v17

    const-string/jumbo v23, "USRCERT_"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v22, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v23

    if-nez v23, :cond_39f

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_394

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    const-string/jumbo v24, "USER_CERTIFICATE keyChainService.put is failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Alias : USRCERT_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_394
    .catch Ljava/security/KeyStoreException; {:try_start_318 .. :try_end_394} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_318 .. :try_end_394} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_318 .. :try_end_394} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_318 .. :try_end_394} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_318 .. :try_end_394} :catch_499
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_394} :catch_48a
    .catchall {:try_start_318 .. :try_end_394} :catchall_4e4

    :cond_394
    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_39e

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_39e
    return v23

    :cond_39f
    :try_start_39f
    const-string/jumbo v23, "USRPKEY_"

    invoke-interface/range {v21 .. v21}, Ljava/security/Key;->getEncoded()[B

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v23

    if-nez v23, :cond_40a

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_3ff

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    const-string/jumbo v24, "USER_PRIVATE_KEY keyChainService.put is failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Alias : USRPKEY_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ff
    .catch Ljava/security/KeyStoreException; {:try_start_39f .. :try_end_3ff} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39f .. :try_end_3ff} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_39f .. :try_end_3ff} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_39f .. :try_end_3ff} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_39f .. :try_end_3ff} :catch_499
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3ff} :catch_48a
    .catchall {:try_start_39f .. :try_end_3ff} :catchall_4e4

    :cond_3ff
    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_409

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_409
    return v23

    :cond_40a
    :try_start_40a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    move/from16 v23, v0

    if-lez v23, :cond_47f

    const-string/jumbo v23, "CACERT_"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/security/IKeyChainService;->put(Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v23

    if-nez v23, :cond_47f

    sget-boolean v23, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v23, :cond_474

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    const-string/jumbo v24, "CA_CERTIFICATE keyChainService.put is failed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Alias : CACERT_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "SCEPKeystoreProxyService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Uid : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_474
    .catch Ljava/security/KeyStoreException; {:try_start_40a .. :try_end_474} :catch_4d5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_40a .. :try_end_474} :catch_4c6
    .catch Ljava/security/cert/CertificateException; {:try_start_40a .. :try_end_474} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_40a .. :try_end_474} :catch_4a8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_40a .. :try_end_474} :catch_499
    .catch Ljava/lang/Exception; {:try_start_40a .. :try_end_474} :catch_48a
    .catchall {:try_start_40a .. :try_end_474} :catchall_4e4

    :cond_474
    const/16 v23, 0x1

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_47e

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_47e
    return v23

    :cond_47f
    const/16 v23, 0x0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_489

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_489
    return v23

    :catch_48a
    move-exception v9

    :try_start_48b
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48e
    .catchall {:try_start_48b .. :try_end_48e} :catchall_4e4

    const/16 v23, 0x4

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_498

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_498
    return v23

    :catch_499
    move-exception v12

    :try_start_49a
    invoke-virtual {v12}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_49d
    .catchall {:try_start_49a .. :try_end_49d} :catchall_4e4

    const/16 v23, 0x2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_4a7

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4a7
    return v23

    :catch_4a8
    move-exception v8

    :try_start_4a9
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4ac
    .catchall {:try_start_4a9 .. :try_end_4ac} :catchall_4e4

    const/16 v23, 0x4

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_4b6

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4b6
    return v23

    :catch_4b7
    move-exception v13

    :try_start_4b8
    invoke-virtual {v13}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4bb
    .catchall {:try_start_4b8 .. :try_end_4bb} :catchall_4e4

    const/16 v23, 0x3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_4c5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4c5
    return v23

    :catch_4c6
    move-exception v11

    :try_start_4c7
    invoke-virtual {v11}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_4ca
    .catchall {:try_start_4c7 .. :try_end_4ca} :catchall_4e4

    const/16 v23, 0x2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_4d4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4d4
    return v23

    :catch_4d5
    move-exception v10

    :try_start_4d6
    invoke-virtual {v10}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_4d9
    .catchall {:try_start_4d6 .. :try_end_4d9} :catchall_4e4

    const/16 v23, 0x2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_4e3

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4e3
    return v23

    :catchall_4e4
    move-exception v23

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v16, :cond_4ed

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_4ed
    throw v23
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v12, 0x3e8

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v7

    if-nez v7, :cond_b

    return v11

    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v4, 0x0

    sget-boolean v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_2e

    const-string/jumbo v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAliasExists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :try_start_2e
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/16 v2, 0x3f2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    if-eqz p2, :cond_8f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_8e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_8e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_13e

    :cond_8e
    return v10

    :cond_8f
    if-ne v1, v12, :cond_e0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_df

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_df

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e0

    :cond_df
    return v10

    :cond_e0
    iget-object v7, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRCERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_138

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRPKEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_138

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CACERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Landroid/security/IKeyChainService;->contains(Ljava/lang/String;I)Z
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_135} :catch_144
    .catchall {:try_start_2e .. :try_end_135} :catchall_14e

    move-result v7

    if-eqz v7, :cond_13e

    :cond_138
    if-eqz v4, :cond_13d

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_13d
    return v10

    :cond_13e
    if-eqz v4, :cond_143

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_143
    return v11

    :catch_144
    move-exception v3

    :try_start_145
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_14e

    if-eqz v4, :cond_14d

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_14d
    return v11

    :catchall_14e
    move-exception v7

    if-eqz v4, :cond_154

    invoke-virtual {v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_154
    throw v7
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .registers 7

    :try_start_0
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_18
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v3

    return-object v3

    :catch_11
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catch_18
    move-exception v0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method
