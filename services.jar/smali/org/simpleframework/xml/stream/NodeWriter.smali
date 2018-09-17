.class Lorg/simpleframework/xml/stream/NodeWriter;
.super Ljava/lang/Object;
.source "NodeWriter.java"


# instance fields
.field private final active:Ljava/util/Set;

.field private final stack:Lorg/simpleframework/xml/stream/OutputStack;

.field private final verbose:Z

.field private final writer:Lorg/simpleframework/xml/stream/Formatter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/NodeWriter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/stream/NodeWriter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/stream/Formatter;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/stream/Formatter;-><init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    new-instance v0, Lorg/simpleframework/xml/stream/OutputStack;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/OutputStack;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    iput-boolean p3, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    return-void
.end method

.method private writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/simpleframework/xml/stream/NodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    invoke-interface {v0, v6}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v6, v3, v5, v4}, Lorg/simpleframework/xml/stream/Formatter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private writeComment(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/Formatter;->writeComment(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    :goto_10
    if-nez v0, :cond_17

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeValue(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_10

    :cond_17
    iget-object v3, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/stream/Formatter;->writeEnd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v3}, Lorg/simpleframework/xml/stream/Formatter;->flush()V

    goto :goto_12
.end method

.method private writeName(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/simpleframework/xml/stream/NodeWriter;->verbose:Z

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v2, v0, v1}, Lorg/simpleframework/xml/stream/Formatter;->writeStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v4, v2, v3}, Lorg/simpleframework/xml/stream/Formatter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private writeStart(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/stream/OutputElement;

    invoke-direct {v0, p1, p0, p2}, Lorg/simpleframework/xml/stream/OutputElement;-><init>(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/stream/NodeWriter;Ljava/lang/String;)V

    if-eqz p2, :cond_e

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/OutputStack;->push(Lorg/simpleframework/xml/stream/OutputNode;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    return-object v1

    :cond_e
    new-instance v1, Lorg/simpleframework/xml/stream/NodeException;

    const-string/jumbo v2, "Can not have a null name"

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeComment(Lorg/simpleframework/xml/stream/OutputNode;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeName(Lorg/simpleframework/xml/stream/OutputNode;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method private writeValue(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    :goto_b
    invoke-interface {p1, v5}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v4, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v4}, Lorg/simpleframework/xml/stream/OutputStack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_1b
    iget-object v4, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v4, v3, v1}, Lorg/simpleframework/xml/stream/Formatter;->writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V

    goto :goto_b

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/stream/OutputNode;

    sget-object v4, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    if-ne v1, v4, :cond_1b

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v1

    goto :goto_15
.end method


# virtual methods
.method public commit(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/OutputStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    if-eqz v1, :cond_26

    :goto_15
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    if-ne v1, p1, :cond_2a

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    goto :goto_8

    :cond_26
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_15

    :cond_2a
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_15
.end method

.method public isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->active:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isRoot(Lorg/simpleframework/xml/stream/OutputNode;)Z
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->bottom()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-eq v0, p1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public remove(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    return-void

    :cond_e
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string/jumbo v1, "Cannot remove node"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/OutputStack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    return-object v1

    :cond_12
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    return-object v1

    :cond_17
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->isCommitted(Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v1

    if-eqz v1, :cond_38

    :goto_23
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->top()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    if-ne v1, p1, :cond_3c

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    :goto_33
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    return-object v1

    :cond_38
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeWriter;->writeStart(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_23

    :cond_3c
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->pop()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeEnd(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_23

    :cond_46
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeValue(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_33
.end method

.method public writeRoot()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/stream/OutputDocument;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/stream/OutputDocument;-><init>(Lorg/simpleframework/xml/stream/NodeWriter;Lorg/simpleframework/xml/stream/OutputStack;)V

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeWriter;->writer:Lorg/simpleframework/xml/stream/Formatter;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/Formatter;->writeProlog()V

    goto :goto_f
.end method
