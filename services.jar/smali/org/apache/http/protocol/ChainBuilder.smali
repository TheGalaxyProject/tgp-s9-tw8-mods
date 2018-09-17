.class final Lorg/apache/http/protocol/ChainBuilder;
.super Ljava/lang/Object;
.source "ChainBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final uniqueClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    return-void
.end method

.method private ensureUnique(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    :goto_c
    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->uniqueClasses:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_16
    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_c
.end method


# virtual methods
.method public addAllFirst(Ljava/util/Collection;)Lorg/apache/http/protocol/ChainBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    return-object p0

    :cond_d
    return-object p0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    goto :goto_6
.end method

.method public varargs addAllFirst([Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_8

    move-object v0, p1

    array-length v3, p1

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v3, :cond_9

    return-object p0

    :cond_8
    return-object p0

    :cond_9
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public addAllLast(Ljava/util/Collection;)Lorg/apache/http/protocol/ChainBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    return-object p0

    :cond_d
    return-object p0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    goto :goto_6
.end method

.method public varargs addAllLast([Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_8

    move-object v0, p1

    array-length v3, p1

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v3, :cond_9

    return-object p0

    :cond_8
    return-object p0

    :cond_9
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/apache/http/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public addFirst(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lorg/apache/http/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0

    :cond_b
    return-object p0
.end method

.method public addLast(Ljava/lang/Object;)Lorg/apache/http/protocol/ChainBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/http/protocol/ChainBuilder",
            "<TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Lorg/apache/http/protocol/ChainBuilder;->ensureUnique(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0

    :cond_b
    return-object p0
.end method

.method public build()Ljava/util/LinkedList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/apache/http/protocol/ChainBuilder;->list:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
