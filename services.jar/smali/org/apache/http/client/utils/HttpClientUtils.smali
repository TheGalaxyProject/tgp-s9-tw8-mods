.class public Lorg/apache/http/client/utils/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Lorg/apache/http/HttpResponse;)V
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_9
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_2

    :catch_d
    move-exception v1

    goto :goto_2
.end method

.method public static closeQuietly(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_2

    :try_start_7
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_2
.end method

.method public static closeQuietly(Lorg/apache/http/client/methods/CloseableHttpResponse;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    :try_start_a
    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    goto :goto_2

    :catch_e
    move-exception v1

    goto :goto_2

    :catchall_10
    move-exception v0

    invoke-interface {p0}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_e
.end method
