.class public Lorg/apache/http/impl/io/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private closed:Z

.field private final contentLength:J

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;J)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionInputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const-string/jumbo v0, "Content length"

    invoke-static {p2, p3, v0}, Lorg/apache/http/util/Args;->notNegative(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v1, v1, Lorg/apache/http/io/BufferInfo;

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    check-cast v1, Lorg/apache/http/io/BufferInfo;

    invoke-interface {v1}, Lorg/apache/http/io/BufferInfo;->length()I

    move-result v0

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-eqz v4, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_10

    move v2, v3

    :cond_10
    if-nez v2, :cond_1c

    const/16 v2, 0x800

    new-array v1, v2, [B

    :cond_16
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([B)I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1f

    move-result v2

    if-gez v2, :cond_16

    :cond_1c
    iput-boolean v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    goto :goto_6

    :catchall_1f
    move-exception v0

    iput-boolean v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v3, :cond_13

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1c

    move v3, v1

    :goto_10
    if-nez v3, :cond_1e

    return v8

    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    move v3, v2

    goto :goto_10

    :cond_1e
    iget-object v3, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v3}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    if-eq v0, v8, :cond_2e

    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    :cond_2d
    return v0

    :cond_2e
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_61

    :goto_36
    if-nez v1, :cond_2d

    new-instance v1, Lorg/apache/http/ConnectionClosedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    move v1, v2

    goto :goto_36
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->closed:Z

    if-nez v4, :cond_13

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1c

    move v4, v2

    :goto_10
    if-nez v4, :cond_1e

    return v8

    :cond_13
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Attempted read from closed stream."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    move v4, v3

    goto :goto_10

    :cond_1e
    move v0, p3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3d

    move v4, v2

    :goto_2a
    if-nez v4, :cond_32

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    :cond_32
    iget-object v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v4, p1, p2, v0}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v1

    if-eq v1, v8, :cond_3f

    :cond_3a
    if-gtz v1, :cond_74

    :goto_3c
    return v1

    :cond_3d
    move v4, v3

    goto :goto_2a

    :cond_3f
    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_72

    :goto_47
    if-nez v2, :cond_3a

    new-instance v2, Lorg/apache/http/ConnectionClosedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_72
    move v2, v3

    goto :goto_47

    :cond_74
    iget-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    goto :goto_3c
.end method

.method public skip(J)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_c

    const/4 v6, 0x1

    :goto_7
    if-nez v6, :cond_e

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_c
    const/4 v6, 0x0

    goto :goto_7

    :cond_e
    const/16 v6, 0x800

    new-array v0, v6, [B

    iget-wide v6, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->contentLength:J

    iget-wide v8, p0, Lorg/apache/http/impl/io/ContentLengthInputStream;->pos:J

    sub-long/2addr v6, v8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    :goto_1d
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3a

    const/4 v6, 0x1

    :goto_24
    if-nez v6, :cond_3c

    const-wide/16 v6, 0x800

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v6}, Lorg/apache/http/impl/io/ContentLengthInputStream;->read([BII)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_3c

    int-to-long v6, v1

    add-long/2addr v2, v6

    int-to-long v6, v1

    sub-long/2addr v4, v6

    goto :goto_1d

    :cond_3a
    const/4 v6, 0x0

    goto :goto_24

    :cond_3c
    return-wide v2
.end method
