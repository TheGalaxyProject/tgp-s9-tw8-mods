.class Lorg/simpleframework/xml/stream/OutputAttribute;
.super Ljava/lang/Object;
.source "OutputAttribute.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field private name:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private scope:Lorg/simpleframework/xml/stream/NamespaceMap;

.field private source:Lorg/simpleframework/xml/stream/OutputNode;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->source:Lorg/simpleframework/xml/stream/OutputNode;

    iput-object p3, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    iput-object p2, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit()V
    .registers 1

    return-void
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode()Lorg/simpleframework/xml/stream/Mode;
    .registers 2

    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputAttribute;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isCommitted()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isRoot()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setData(Z)V
    .registers 2

    return-void
.end method

.method public setMode(Lorg/simpleframework/xml/stream/Mode;)V
    .registers 2

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "attribute %s=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
