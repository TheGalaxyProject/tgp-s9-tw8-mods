.class public Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;
.super Ljava/lang/Object;
.source "PlainConnectionSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/socket/ConnectionSocketFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->INSTANCE:Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;
    .registers 1

    sget-object v0, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->INSTANCE:Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_c

    invoke-virtual {p0, p6}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->createSocket(Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v1

    :goto_6
    if-nez p5, :cond_e

    :goto_8
    :try_start_8
    invoke-virtual {v1, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_12

    return-object v1

    :cond_c
    move-object v1, p2

    goto :goto_6

    :cond_e
    invoke-virtual {v1, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_8

    :catch_12
    move-exception v0

    :try_start_13
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    :goto_16
    throw v0

    :catch_17
    move-exception v2

    goto :goto_16
.end method

.method public createSocket(Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method
