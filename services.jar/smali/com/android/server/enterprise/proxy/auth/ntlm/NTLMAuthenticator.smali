.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field private static final HEADER_PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate:"

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string/jumbo v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_20
    return-object v2
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_f

    const-string/jumbo v2, ""

    return-object v2

    :cond_f
    const/16 v2, 0xd

    if-eq v1, v2, :cond_17

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_17
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_21

    if-gez v1, :cond_f

    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_8

    :cond_7
    return-object v3

    :cond_8
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    move-result-object v10

    if-eqz v10, :cond_58

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x10000

    invoke-virtual {v10, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isFlagSet(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v5

    :cond_24
    invoke-virtual {v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v1

    invoke-virtual {v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlags()I

    move-result v3

    and-int v2, v1, v3

    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;

    invoke-virtual {v10}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v1

    array-length v3, v8

    if-lez v3, :cond_50

    aget-object v3, v8, v4

    :goto_40
    array-length v4, v8

    if-lez v4, :cond_54

    aget-object v4, v8, v7

    :goto_45
    const-string/jumbo v6, "localhost"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_50
    const-string/jumbo v3, ""

    goto :goto_40

    :cond_54
    const-string/jumbo v4, ""

    goto :goto_45

    :cond_58
    return-object v3
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    const-string/jumbo v2, "Proxy-Authenticate:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_19

    return-object v1

    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    goto :goto_2
.end method

.method private processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const/4 v4, 0x2

    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string/jumbo v3, "Proxy-Authenticate:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string/jumbo v3, "NTLM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_24

    :cond_23
    return-object v1

    :cond_24
    array-length v2, v0

    if-le v2, v4, :cond_29

    aget-object v1, v0, v4

    :cond_29
    return-object v1
.end method

.method private receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_31

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    array-length v4, v0

    if-lez v4, :cond_31

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string/jumbo v5, "407"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    :cond_31
    const/4 v2, 0x0

    if-eqz v3, :cond_39

    new-instance v2, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;-><init>(Ljava/lang/String;)V

    :cond_39
    return-object v2
.end method

.method private sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    invoke-direct {v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;-><init>()V

    invoke-static {p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-object v1
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v3

    return-object v3

    :catch_14
    move-exception v0

    return-object v3
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "NTLM"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .registers 21

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    const/4 v13, 0x0

    const/4 v3, 0x0

    :try_start_9
    new-instance v4, Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v14

    invoke-direct {v4, v12, v14}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16} :catch_d8
    .catchall {:try_start_9 .. :try_end_16} :catchall_f8

    :try_start_16
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_29

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string/jumbo v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "NTLMAuthenticator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "NTLMAuthenticator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    :goto_73
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v12, "NTLMAuthenticator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Line froms server "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_96} :catch_fd
    .catchall {:try_start_16 .. :try_end_96} :catchall_fa

    move-result v12

    if-gtz v12, :cond_b1

    :cond_99
    if-eqz v4, :cond_9e

    :try_start_9b
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9e} :catch_d4
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a1

    :cond_9e
    :goto_9e
    if-eqz v13, :cond_d6

    :try_start_a0
    throw v13
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a1} :catch_a1

    :catch_a1
    move-exception v5

    move-object v3, v4

    :goto_a3
    const-string/jumbo v12, "NTLMAuthenticator"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ad
    if-eqz v10, :cond_f6

    const/4 v12, 0x0

    :goto_b0
    return v12

    :cond_b1
    :try_start_b1
    const-string/jumbo v12, "HTTP/1."

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_cd

    const-string/jumbo v12, " "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    aget-object v12, v12, v14

    const-string/jumbo v14, "407"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v10, v12, 0x1

    :cond_cd
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_d0} :catch_fd
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_fa

    move-result v12

    if-lez v12, :cond_99

    goto :goto_73

    :catch_d4
    move-exception v13

    goto :goto_9e

    :cond_d6
    move-object v3, v4

    goto :goto_ad

    :catch_d8
    move-exception v12

    :goto_d9
    :try_start_d9
    throw v12
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_e0
    if-eqz v3, :cond_e5

    :try_start_e2
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_ea
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e8

    :cond_e5
    :goto_e5
    if-eqz v13, :cond_f5

    :try_start_e7
    throw v13

    :catch_e8
    move-exception v5

    goto :goto_a3

    :catch_ea
    move-exception v14

    if-nez v13, :cond_ef

    move-object v13, v14

    goto :goto_e5

    :cond_ef
    if-eq v13, v14, :cond_e5

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e5

    :cond_f5
    throw v12
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_f6} :catch_e8

    :cond_f6
    const/4 v12, -0x1

    goto :goto_b0

    :catchall_f8
    move-exception v12

    goto :goto_e0

    :catchall_fa
    move-exception v12

    move-object v3, v4

    goto :goto_e0

    :catch_fd
    move-exception v12

    move-object v3, v4

    goto :goto_d9
.end method
