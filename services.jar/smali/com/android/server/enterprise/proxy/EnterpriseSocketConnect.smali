.class public Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
.super Ljava/lang/Thread;
.source "EnterpriseSocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final CONTENT_LENGTH_HEADER_PREFIX:Ljava/lang/String; = "Content-Length: "

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field public static final EMPTY_CONTENT_LENGTH:I = -0x1

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "EnterpriseSocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private authHeader:Ljava/lang/String;

.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->start()V

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 8

    if-eqz p2, :cond_e

    const-string/jumbo v4, "Proxy-Authorization: Basic "

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    const/4 p2, 0x0

    :cond_e
    :try_start_e
    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v3, p1, p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_23

    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_23

    :goto_1b
    :try_start_1b
    invoke-virtual {v3}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_23

    :goto_1e
    return-void

    :catch_1f
    move-exception v1

    goto :goto_1b

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method

.method private static getContentLength(Ljava/lang/String;)I
    .registers 6

    const-string/jumbo v2, "Content-Length: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    :try_start_9
    const-string/jumbo v2, "Content-Length: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1a} :catch_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_1a} :catch_1c

    move-result v2

    return v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "EnterpriseSocketConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ArrayIndexOutOfBoundsException to extract content length from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_37
    const/4 v2, -0x1

    return v2

    :catch_39
    move-exception v1

    const-string/jumbo v2, "EnterpriseSocketConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NumberFormatException to extract content length from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string/jumbo v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private performCommunication()V
    .registers 7

    const/16 v3, 0x200

    new-array v0, v3, [B

    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_17

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :goto_16
    return-void

    :cond_17
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_4

    :catch_1e
    move-exception v1

    const-string/jumbo v3, "EnterpriseSocketConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException while performing communication "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private performCommunicationWithHeader(Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v1, v0

    :goto_5
    if-eqz v5, :cond_1d

    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    const/4 v7, 0x1

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v4

    :goto_e
    const/4 v5, 0x0

    if-nez v4, :cond_25

    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    move-object v0, v1

    :goto_1c
    return-void

    :cond_1d
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_25
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_5a

    move-result v6

    if-eqz v6, :cond_34

    const/4 v5, 0x1

    move-object v0, v1

    :goto_2d
    :try_start_2d
    iget-object v6, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-static {v6, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_7b

    move-object v1, v0

    goto :goto_5

    :cond_34
    :try_start_34
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_40} :catch_5a

    :try_start_40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4f} :catch_7b

    move-result-object v4

    goto :goto_2d

    :cond_51
    const/4 v6, -0x1

    if-ne v2, v6, :cond_7d

    :try_start_54
    invoke-static {v4}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->getContentLength(Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_5a

    move-result v2

    move-object v0, v1

    goto :goto_2d

    :catch_5a
    move-exception v3

    move-object v0, v1

    :goto_5c
    const-string/jumbo v6, "EnterpriseSocketConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IOException while performing communication with header "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :catch_7b
    move-exception v3

    goto :goto_5c

    :cond_7d
    move-object v0, v1

    goto :goto_2d
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunicationWithHeader(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunication()V

    goto :goto_9
.end method
