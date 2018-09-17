.class final Lorg/simpleframework/xml/stream/ProviderFactory;
.super Ljava/lang/Object;
.source "ProviderFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/simpleframework/xml/stream/Provider;
    .registers 2

    :try_start_0
    new-instance v1, Lorg/simpleframework/xml/stream/StreamProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/StreamProvider;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_d

    return-object v1

    :catch_6
    move-exception v0

    :try_start_7
    new-instance v1, Lorg/simpleframework/xml/stream/PullProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/PullProvider;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v0

    new-instance v1, Lorg/simpleframework/xml/stream/DocumentProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/DocumentProvider;-><init>()V

    return-object v1
.end method
