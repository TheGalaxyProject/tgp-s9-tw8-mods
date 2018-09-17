.class public Lorg/apache/http/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_INVALID:I = 0x7fffffff

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:J

.field private closed:Z

.field private final constraints:Lorg/apache/http/config/MessageConstraints;

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private final in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:J

.field private state:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    new-array v0, v0, [Lorg/apache/http/Header;

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionInputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    if-nez p2, :cond_28

    sget-object p2, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    :cond_28
    iput-object p2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->constraints:Lorg/apache/http/config/MessageConstraints;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    return-void
.end method

.method private getChunkSize()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget v5, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    packed-switch v5, :pswitch_data_8e

    :pswitch_7
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Inconsistent codec state"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_10
    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v7, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v6, v7}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    if-eq v0, v9, :cond_50

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_59

    const/4 v6, 0x1

    iput v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    :pswitch_2a
    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v7, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v6, v7}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    if-eq v1, v9, :cond_62

    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_6b

    :goto_43
    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6, v8, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10

    :try_start_4b
    invoke-static {v3, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_4e} :catch_72

    move-result-wide v6

    return-wide v6

    :cond_50
    new-instance v6, Lorg/apache/http/MalformedChunkCodingException;

    const-string/jumbo v7, "CRLF expected at end of chunk"

    invoke-direct {v6, v7}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_59
    new-instance v6, Lorg/apache/http/MalformedChunkCodingException;

    const-string/jumbo v7, "Unexpected content at the end of chunk"

    invoke-direct {v6, v7}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_62
    new-instance v6, Lorg/apache/http/ConnectionClosedException;

    const-string/jumbo v7, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v6, v7}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6b
    iget-object v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    goto :goto_43

    :catch_72
    move-exception v2

    new-instance v6, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad chunk header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v6

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method

.method private nextChunk()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    if-eq v2, v6, :cond_25

    :try_start_a
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->getChunkSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2e

    :goto_16
    if-nez v1, :cond_30

    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    const-string/jumbo v2, "Negative chunk size"

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21
    .catch Lorg/apache/http/MalformedChunkCodingException; {:try_start_a .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    iput v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    throw v0

    :cond_25
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    const-string/jumbo v2, "Corrupt data stream"

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_16

    :cond_30
    const/4 v1, 0x2

    :try_start_31
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_43

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->parseTrailerHeaders()V
    :try_end_43
    .catch Lorg/apache/http/MalformedChunkCodingException; {:try_start_31 .. :try_end_43} :catch_21

    :cond_43
    return-void
.end method

.method private parseTrailerHeaders()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->constraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v3}, Lorg/apache/http/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v3

    iget-object v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->constraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v4}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;
    :try_end_15
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public available()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    instance-of v1, v1, Lorg/apache/http/io/BufferInfo;

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    check-cast v1, Lorg/apache/http/io/BufferInfo;

    invoke-interface {v1}, Lorg/apache/http/io/BufferInfo;->length()I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v2, :cond_6

    :goto_5
    return-void

    :cond_6
    :try_start_6
    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_21

    if-eqz v2, :cond_f

    :cond_a
    :goto_a
    iput-boolean v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    iput-boolean v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    goto :goto_5

    :cond_f
    :try_start_f
    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_a

    const/16 v2, 0x800

    new-array v1, v2, [B

    :cond_1a
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([B)I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    move-result v2

    if-gez v2, :cond_1a

    goto :goto_a

    :catchall_21
    move-exception v0

    iput-boolean v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    iput-boolean v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    throw v0
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v2, :cond_21

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    :cond_f
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    if-ne v0, v4, :cond_2a

    :cond_17
    :goto_17
    return v0

    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    return v4

    :cond_22
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    iget-boolean v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_f

    return v4

    :cond_2a
    iget-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    iget-wide v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3a

    const/4 v1, 0x1

    :cond_3a
    if-nez v1, :cond_17

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    goto :goto_17
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

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v10, -0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v3, :cond_55

    iget-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v3, :cond_5e

    iget v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5f

    :cond_10
    iget-object v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    int-to-long v4, p3

    iget-wide v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    iget-wide v8, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v3, p1, p2, v4}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    if-ne v0, v10, :cond_67

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    new-instance v1, Lorg/apache/http/TruncatedChunkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Truncated chunk ( expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_55
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5e
    return v10

    :cond_5f
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    iget-boolean v3, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v3, :cond_10

    return v10

    :cond_67
    iget-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    iget-wide v4, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:J

    iget-wide v6, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_7b

    :goto_75
    if-nez v1, :cond_7a

    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->state:I

    :cond_7a
    return v0

    :cond_7b
    move v1, v2

    goto :goto_75
.end method
