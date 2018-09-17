.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/http/annotation/Obsolete;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->datepatterns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .registers 6

    iget-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_7

    :goto_4
    iget-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v2

    :cond_7
    move-object v0, p0

    monitor-enter p0

    :try_start_9
    iget-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

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
    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    iget-object v3, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->datepatterns:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_f

    goto :goto_d
.end method
