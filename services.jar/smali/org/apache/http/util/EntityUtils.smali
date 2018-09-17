.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(Lorg/apache/http/HttpEntity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    :goto_8
    return-void

    :cond_9
    return-void

    :cond_a
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_8
.end method

.method public static consumeQuietly(Lorg/apache/http/HttpEntity;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v3, "Entity"

    invoke-static {p0, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-nez v3, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_e

    aget-object v3, v2, v4

    const-string/jumbo v4, "charset"

    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static getContentMimeType(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v2, "Entity"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_e

    aget-object v2, v1, v3

    invoke-interface {v2}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static toByteArray(Lorg/apache/http/HttpEntity;)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "Entity"

    invoke-static {p0, v9}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_42

    :try_start_f
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v9, v10, v12

    if-lez v9, :cond_43

    move v9, v7

    :goto_1b
    if-nez v9, :cond_45

    :goto_1d
    const-string/jumbo v8, "HTTP entity too large to be buffered in memory"

    invoke-static {v7, v8}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v3, v8

    if-ltz v3, :cond_47

    :goto_2a
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/16 v7, 0x1000

    new-array v6, v7, [B

    :goto_33
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_4a

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_4f

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_42
    return-object v10

    :cond_43
    move v9, v8

    goto :goto_1b

    :cond_45
    move v7, v8

    goto :goto_1d

    :cond_47
    const/16 v3, 0x1000

    goto :goto_2a

    :cond_4a
    const/4 v7, 0x0

    :try_start_4b
    invoke-virtual {v2, v6, v7, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_33

    :catchall_4f
    move-exception v1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "Entity"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Lorg/apache/http/entity/ContentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_8

    :goto_3
    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_3
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    const-string/jumbo v2, "Entity"

    invoke-static {p0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_7
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    :try_end_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_7 .. :try_end_a} :catch_18

    move-result-object v0

    :cond_b
    if-nez v0, :cond_25

    sget-object v2, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    invoke-virtual {v2, p1}, Lorg/apache/http/entity/ContentType;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Lorg/apache/http/entity/ContentType;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_18
    move-exception v1

    if-nez p1, :cond_b

    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v1}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_13

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/ContentType;->withCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    goto :goto_13
.end method

.method private static toString(Lorg/apache/http/HttpEntity;Lorg/apache/http/entity/ContentType;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_44

    :try_start_6
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-lez v10, :cond_46

    const/4 v10, 0x1

    :goto_12
    if-nez v10, :cond_48

    const/4 v10, 0x1

    :goto_15
    const-string/jumbo v11, "HTTP entity too large to be buffered in memory"

    invoke-static {v10, v11}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v5, v10

    if-ltz v5, :cond_4a

    :goto_22
    const/4 v3, 0x0

    if-nez p1, :cond_4d

    :cond_25
    :goto_25
    if-eqz v3, :cond_64

    :goto_27
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const/16 v10, 0x400

    new-array v9, v10, [C

    :goto_35
    invoke-virtual {v8, v9}, Ljava/io/Reader;->read([C)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_67

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_6c

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    return-object v1

    :cond_44
    const/4 v10, 0x0

    return-object v10

    :cond_46
    const/4 v10, 0x0

    goto :goto_12

    :cond_48
    const/4 v10, 0x0

    goto :goto_15

    :cond_4a
    const/16 v5, 0x1000

    goto :goto_22

    :cond_4d
    :try_start_4d
    invoke-virtual {p1}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    if-nez v3, :cond_25

    invoke-virtual {p1}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/entity/ContentType;->getByMimeType(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object v4

    if-nez v4, :cond_5f

    const/4 v3, 0x0

    :goto_5e
    goto :goto_25

    :cond_5f
    invoke-virtual {v4}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_5e

    :cond_64
    sget-object v3, Lorg/apache/http/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_27

    :cond_67
    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10, v7}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_6b
    .catchall {:try_start_4d .. :try_end_6b} :catchall_6c

    goto :goto_35

    :catchall_6c
    move-exception v0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static updateEntity(Lorg/apache/http/HttpResponse;Lorg/apache/http/HttpEntity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "Response"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void
.end method
