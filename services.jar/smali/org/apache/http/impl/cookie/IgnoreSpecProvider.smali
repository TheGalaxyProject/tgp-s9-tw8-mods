.class public Lorg/apache/http/impl/cookie/IgnoreSpecProvider;
.super Ljava/lang/Object;
.source "IgnoreSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .registers 5

    iget-object v2, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_7

    :goto_4
    iget-object v2, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v2

    :cond_7
    move-object v0, p0

    monitor-enter p0

    :try_start_9
    iget-object v2, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_12

    :goto_d
    monitor-exit p0

    goto :goto_4

    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1

    :cond_12
    :try_start_12
    new-instance v2, Lorg/apache/http/impl/cookie/IgnoreSpec;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/IgnoreSpec;-><init>()V

    iput-object v2, p0, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    goto :goto_d
.end method
