.class public Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;
.super Ljava/lang/Object;
.source "TrustSelfSignedStrategy.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/TrustStrategy;


# static fields
.field public static final INSTANCE:Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;->INSTANCE:Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x1

    array-length v1, p1

    if-eq v1, v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method
