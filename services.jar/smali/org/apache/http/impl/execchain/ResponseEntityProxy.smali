.class Lorg/apache/http/impl/execchain/ResponseEntityProxy;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "ResponseEntityProxy.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# instance fields
.field private final connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object p2, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    return-void
.end method

.method private abortConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    goto :goto_4
.end method

.method private cleanup()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->close()V

    goto :goto_4
.end method

.method public static enchance(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    .registers 4

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    new-instance v1, Lorg/apache/http/impl/execchain/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;-><init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6
.end method


# virtual methods
.method public consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_18
    .catchall {:try_start_2 .. :try_end_5} :catchall_13

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 v3, 0x0

    return v3

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_18
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    goto :goto_2

    :catch_e
    move-exception v1

    :try_start_f
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->abortConnection()V

    throw v1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0

    :catch_18
    move-exception v2

    :try_start_19
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->abortConnection()V

    throw v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_13
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/conn/EofSensorInputStream;

    iget-object v1, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    goto :goto_4
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_3} :catch_2b
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-nez v6, :cond_f

    :cond_5
    move v4, v5

    :goto_6
    if-nez p1, :cond_19

    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_2b
    .catchall {:try_start_8 .. :try_end_b} :catchall_26

    :cond_b
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    return v5

    :cond_f
    :try_start_f
    iget-object v6, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->connHolder:Lorg/apache/http/impl/execchain/ConnectionHolder;

    invoke-virtual {v6}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReleased()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_2b
    .catchall {:try_start_f .. :try_end_14} :catchall_26

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_19
    :try_start_19
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/net/SocketException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_2b
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    goto :goto_8

    :catch_1d
    move-exception v3

    if-eqz v4, :cond_b

    :try_start_20
    throw v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_21} :catch_2b
    .catchall {:try_start_20 .. :try_end_21} :catchall_26

    :catch_21
    move-exception v1

    :try_start_22
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->abortConnection()V

    throw v1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0

    :catch_2b
    move-exception v2

    :try_start_2c
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->abortConnection()V

    throw v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_26
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ResponseEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_9

    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_19
    .catchall {:try_start_2 .. :try_end_5} :catchall_14

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    return-void

    :cond_9
    :try_start_9
    iget-object v3, p0, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v3, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_e} :catch_19
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    goto :goto_2

    :catch_f
    move-exception v1

    :try_start_10
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->abortConnection()V

    throw v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0

    :catch_19
    move-exception v2

    :try_start_1a
    invoke-direct {p0}, Lorg/apache/http/impl/execchain/ResponseEntityProxy;->abortConnection()V

    throw v2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_14
.end method
