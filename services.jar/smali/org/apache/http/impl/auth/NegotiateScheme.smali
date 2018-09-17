.class public Lorg/apache/http/impl/auth/NegotiateScheme;
.super Lorg/apache/http/impl/auth/GGSSchemeBase;
.source "NegotiateScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KERBEROS_OID:Ljava/lang/String; = "1.2.840.113554.1.2.2"

.field private static final SPNEGO_OID:Ljava/lang/String; = "1.3.6.1.5.5.2"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V
    .registers 4

    invoke-direct {p0, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/NegotiateScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/auth/GGSSchemeBase;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method protected generateToken([BLjava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected generateToken([BLjava/lang/String;Lorg/apache/http/auth/Credentials;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    new-instance v2, Lorg/ietf/jgss/Oid;

    const-string/jumbo v5, "1.3.6.1.5.5.2"

    invoke-direct {v2, v5}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    move-object v3, p1

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {p0, p1, v2, p2, p3}, Lorg/apache/http/impl/auth/NegotiateScheme;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B
    :try_end_d
    .catch Lorg/ietf/jgss/GSSException; {:try_start_a .. :try_end_d} :catch_11

    move-result-object v3

    :goto_e
    if-nez v4, :cond_24

    :cond_10
    :goto_10
    return-object v3

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1a

    throw v1

    :cond_1a
    iget-object v5, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v6, "GSSException BAD_MECH, retry with Kerberos MECH"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_e

    :cond_24
    iget-object v5, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    const-string/jumbo v6, "Using Kerberos MECH 1.2.840.113554.1.2.2"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v2, Lorg/ietf/jgss/Oid;

    const-string/jumbo v5, "1.2.840.113554.1.2.2"

    invoke-direct {v2, v5}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2, p2, p3}, Lorg/apache/http/impl/auth/NegotiateScheme;->generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)[B

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v5, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    if-eqz v5, :cond_10

    :try_start_3e
    iget-object v5, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    invoke-interface {v5, v3}, Lorg/apache/http/impl/auth/SpnegoTokenGenerator;->generateSpnegoDERObject([B)[B
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_45

    move-result-object v3

    goto :goto_10

    :catch_45
    move-exception v0

    iget-object v5, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "Parameter name"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Negotiate"

    return-object v0
.end method

.method public isConnectionBased()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
