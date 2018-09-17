.class public Lorg/simpleframework/xml/strategy/CycleStrategy;
.super Ljava/lang/Object;
.source "CycleStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final contract:Lorg/simpleframework/xml/strategy/Contract;

.field private final read:Lorg/simpleframework/xml/strategy/ReadState;

.field private final write:Lorg/simpleframework/xml/strategy/WriteState;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "reference"

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/strategy/CycleStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "class"

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/strategy/CycleStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "length"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/strategy/CycleStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Contract;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->contract:Lorg/simpleframework/xml/strategy/Contract;

    new-instance v0, Lorg/simpleframework/xml/strategy/WriteState;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->contract:Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/strategy/WriteState;-><init>(Lorg/simpleframework/xml/strategy/Contract;)V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->write:Lorg/simpleframework/xml/strategy/WriteState;

    new-instance v0, Lorg/simpleframework/xml/strategy/ReadState;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->contract:Lorg/simpleframework/xml/strategy/Contract;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/strategy/ReadState;-><init>(Lorg/simpleframework/xml/strategy/Contract;)V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->read:Lorg/simpleframework/xml/strategy/ReadState;

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->read:Lorg/simpleframework/xml/strategy/ReadState;

    invoke-virtual {v1, p3}, Lorg/simpleframework/xml/strategy/ReadState;->find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/strategy/ReadGraph;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .registers 7

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/CycleStrategy;->write:Lorg/simpleframework/xml/strategy/WriteState;

    invoke-virtual {v1, p4}, Lorg/simpleframework/xml/strategy/WriteState;->find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/WriteGraph;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {v0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/WriteGraph;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v1

    return v1
.end method
