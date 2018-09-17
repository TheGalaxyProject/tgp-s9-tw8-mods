.class public Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;
.super Ljava/lang/Object;
.source "TrustedCertStoreAdapter.java"


# static fields
.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

.field private static mTrustCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;
    .registers 2

    const-class v1, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    :cond_e
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteCertificateEntry(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->deleteCertificateEntry(Ljava/lang/String;)V

    return-void
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)V
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public installCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    return-void
.end method
