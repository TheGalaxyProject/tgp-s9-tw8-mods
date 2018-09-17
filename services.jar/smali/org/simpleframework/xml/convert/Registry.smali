.class public Lorg/simpleframework/xml/convert/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# instance fields
.field private final binder:Lorg/simpleframework/xml/convert/RegistryBinder;

.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/convert/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/RegistryBinder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/convert/RegistryBinder;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryBinder;->bind(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_2
.end method

.method public bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/Registry;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method
