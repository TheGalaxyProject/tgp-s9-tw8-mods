.class public Lorg/apache/http/impl/client/NullBackoffStrategy;
.super Ljava/lang/Object;
.source "NullBackoffStrategy.java"

# interfaces
.implements Lorg/apache/http/client/ConnectionBackoffStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBackoff(Ljava/lang/Throwable;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public shouldBackoff(Lorg/apache/http/HttpResponse;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
