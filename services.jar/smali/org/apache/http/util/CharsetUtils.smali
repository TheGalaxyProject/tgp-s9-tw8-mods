.class public Lorg/apache/http/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    :try_start_3
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_6
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_6} :catch_9

    move-result-object v1

    return-object v1

    :cond_8
    return-object v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    :try_start_3
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_6
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_6} :catch_9

    move-result-object v1

    return-object v1

    :cond_8
    return-object v1

    :catch_9
    move-exception v0

    return-object v1
.end method
