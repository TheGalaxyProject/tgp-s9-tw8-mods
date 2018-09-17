.class public Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;
.super Ljava/lang/Object;
.source "BasicAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field public static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: Basic "

.field private static final TAG:Ljava/lang/String; = "BasicAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy-Authorization: Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Basic"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .registers 18

    const/4 v6, -0x1

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_1c
    new-instance v8, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-direct {v8, v9, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_29} :catch_a7
    .catchall {:try_start_1c .. :try_end_29} :catchall_cb

    :try_start_29
    const-string/jumbo v9, "BasicAuthenticator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BasicAuthenticator::verifyAuthenticationCredentials writing to proxy:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :cond_52
    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "HTTP/1."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8d

    const-string/jumbo v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aget-object v9, v9, v11

    const-string/jumbo v11, "407"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a1

    const/4 v6, -0x1

    :goto_73
    const-string/jumbo v9, "BasicAuthenticator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BasicAuthenticator::verifyAuthenticationCredentials retStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_90} :catch_d0
    .catchall {:try_start_29 .. :try_end_90} :catchall_cd

    move-result v9

    if-gtz v9, :cond_52

    if-eqz v8, :cond_98

    :try_start_95
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_98} :catch_a3
    .catch Ljava/net/UnknownHostException; {:try_start_95 .. :try_end_98} :catch_9b
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_c8

    :cond_98
    :goto_98
    if-eqz v10, :cond_a5

    :try_start_9a
    throw v10
    :try_end_9b
    .catch Ljava/net/UnknownHostException; {:try_start_9a .. :try_end_9b} :catch_9b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9b} :catch_c8

    :catch_9b
    move-exception v2

    move-object v7, v8

    :goto_9d
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_a0
    return v6

    :cond_a1
    const/4 v6, 0x0

    goto :goto_73

    :catch_a3
    move-exception v10

    goto :goto_98

    :cond_a5
    move-object v7, v8

    goto :goto_a0

    :catch_a7
    move-exception v9

    :goto_a8
    :try_start_a8
    throw v9
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    :catchall_a9
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_ad
    if-eqz v7, :cond_b2

    :try_start_af
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_b7
    .catch Ljava/net/UnknownHostException; {:try_start_af .. :try_end_b2} :catch_b5
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_c2

    :cond_b2
    :goto_b2
    if-eqz v10, :cond_c7

    :try_start_b4
    throw v10

    :catch_b5
    move-exception v2

    goto :goto_9d

    :catch_b7
    move-exception v11

    if-nez v10, :cond_bc

    move-object v10, v11

    goto :goto_b2

    :cond_bc
    if-eq v10, v11, :cond_b2

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c1
    .catch Ljava/net/UnknownHostException; {:try_start_b4 .. :try_end_c1} :catch_b5
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c1} :catch_c2

    goto :goto_b2

    :catch_c2
    move-exception v1

    :goto_c3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    :cond_c7
    :try_start_c7
    throw v9
    :try_end_c8
    .catch Ljava/net/UnknownHostException; {:try_start_c7 .. :try_end_c8} :catch_b5
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_c8} :catch_c2

    :catch_c8
    move-exception v1

    move-object v7, v8

    goto :goto_c3

    :catchall_cb
    move-exception v9

    goto :goto_ad

    :catchall_cd
    move-exception v9

    move-object v7, v8

    goto :goto_ad

    :catch_d0
    move-exception v9

    move-object v7, v8

    goto :goto_a8
.end method
