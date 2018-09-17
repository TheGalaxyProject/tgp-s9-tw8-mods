.class public final Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;
.super Ljava/lang/Object;
.source "PublicSuffixMatcherLoader.java"


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static volatile DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .registers 9

    sget-object v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-eqz v5, :cond_7

    :goto_4
    sget-object v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-object v5

    :cond_7
    const-class v0, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    const-class v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    monitor-enter v5

    :try_start_c
    sget-object v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-eqz v5, :cond_15

    :cond_10
    :goto_10
    monitor-exit v0

    goto :goto_4

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    const-class v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    const-string/jumbo v6, "/mozilla/public-suffix-list.txt"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_36

    new-instance v5, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "com"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    sput-object v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_12

    goto :goto_10

    :cond_36
    :try_start_36
    invoke-static {v4}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->load(Ljava/net/URL;)Lorg/apache/http/conn/util/PublicSuffixMatcher;

    move-result-object v5

    sput-object v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_3d
    .catchall {:try_start_36 .. :try_end_3c} :catchall_12

    goto :goto_10

    :catch_3d
    move-exception v2

    :try_start_3e
    const-class v5, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "Failure loading public suffix list from default resource"

    invoke-interface {v3, v5, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_12

    goto :goto_10
.end method

.method public static load(Ljava/io/File;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v3, "File"

    invoke-static {p0, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_b
    invoke-static {v2}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_13
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static load(Ljava/io/InputStream;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lorg/apache/http/conn/util/PublicSuffixListParser;

    invoke-direct {v1}, Lorg/apache/http/conn/util/PublicSuffixListParser;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/util/PublicSuffixListParser;->parseByType(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-direct {v1, v0}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static load(Ljava/net/URL;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v3, "URL"

    invoke-static {p0, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    :try_start_a
    invoke-static {v2}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lorg/apache/http/conn/util/PublicSuffixMatcher;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_12
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
.end method
