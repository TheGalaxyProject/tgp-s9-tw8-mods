.class public Lorg/simpleframework/xml/util/LimitedCache;
.super Ljava/util/LinkedHashMap;
.source "LimitedCache.java"

# interfaces
.implements Lorg/simpleframework/xml/util/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lorg/simpleframework/xml/util/Cache",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final capacity:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0xc350

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/util/LimitedCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput p1, p0, Lorg/simpleframework/xml/util/LimitedCache;->capacity:I

    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/LimitedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/util/LimitedCache;->size()I

    move-result v0

    iget v1, p0, Lorg/simpleframework/xml/util/LimitedCache;->capacity:I

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public take(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
