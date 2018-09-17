.class public final Lcom/google/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/google/gson/stream/JsonReader;


# virtual methods
.method public hasNext()Z
    .registers 7

    iget-object v0, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v4, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_b
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_3 .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_1c
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    if-ne v4, v5, :cond_10

    const/4 v4, 0x0

    :goto_e
    :try_start_e
    monitor-exit v0

    return v4

    :cond_10
    const/4 v4, 0x1

    goto :goto_e

    :catch_12
    move-exception v2

    new-instance v4, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v4, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v1

    :catch_1c
    move-exception v3

    :try_start_1d
    new-instance v4, Lcom/google/gson/JsonIOException;

    invoke-direct {v4, v3}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_19
.end method

.method public next()Lcom/google/gson/JsonElement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    :try_start_6
    iget-object v3, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    invoke-static {v3}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    :try_end_b
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_b} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_b} :catch_1d
    .catch Lcom/google/gson/JsonParseException; {:try_start_6 .. :try_end_b} :catch_27

    move-result-object v3

    return-object v3

    :cond_d
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :catch_13
    move-exception v2

    new-instance v3, Lcom/google/gson/JsonParseException;

    const-string/jumbo v4, "Failed parsing JSON source to Json"

    invoke-direct {v3, v4, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1d
    move-exception v1

    new-instance v3, Lcom/google/gson/JsonParseException;

    const-string/jumbo v4, "Failed parsing JSON source to Json"

    invoke-direct {v3, v4, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/EOFException;

    if-nez v3, :cond_31

    :goto_30
    throw v0

    :cond_31
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_30
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->next()Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
