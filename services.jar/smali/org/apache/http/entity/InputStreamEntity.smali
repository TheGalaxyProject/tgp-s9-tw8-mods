.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V
    .registers 7

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-string/jumbo v0, "Source input stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    iput-wide p2, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    if-nez p4, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-virtual {p4}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;)V
    .registers 5

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v6, "Output stream"

    invoke-static {p1, v6}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    const/16 v6, 0x1000

    :try_start_a
    new-array v1, v6, [B

    iget-wide v6, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_22

    const/4 v6, 0x1

    :goto_15
    if-nez v6, :cond_2e

    :goto_17
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_29

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_24

    :cond_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :cond_22
    const/4 v6, 0x0

    goto :goto_15

    :cond_24
    const/4 v6, 0x0

    :try_start_25
    invoke-virtual {p1, v1, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_17

    :catchall_29
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_2e
    :try_start_2e
    iget-wide v4, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    :goto_30
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4f

    const/4 v6, 0x1

    :goto_37
    if-nez v6, :cond_1e

    const-wide/16 v6, 0x1000

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1e

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_29

    int-to-long v6, v3

    sub-long/2addr v4, v6

    goto :goto_30

    :cond_4f
    const/4 v6, 0x0

    goto :goto_37
.end method
