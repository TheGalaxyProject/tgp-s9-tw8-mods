.class Lorg/simpleframework/xml/core/Qualifier;
.super Ljava/lang/Object;
.source "Qualifier.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Decorator;


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->scan(Lorg/simpleframework/xml/core/Contact;)V

    return-void
.end method

.method private namespace(Lorg/simpleframework/xml/core/Contact;)V
    .registers 4

    const-class v1, Lorg/simpleframework/xml/Namespace;

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Namespace;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->set(Lorg/simpleframework/xml/Namespace;)V

    iget-object v1, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    goto :goto_a
.end method

.method private scan(Lorg/simpleframework/xml/core/Contact;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->namespace(Lorg/simpleframework/xml/core/Contact;)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Qualifier;->scope(Lorg/simpleframework/xml/core/Contact;)V

    return-void
.end method

.method private scope(Lorg/simpleframework/xml/core/Contact;)V
    .registers 8

    const-class v5, Lorg/simpleframework/xml/NamespaceList;

    invoke-interface {p1, v5}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/NamespaceList;

    if-nez v4, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-interface {v4}, Lorg/simpleframework/xml/NamespaceList;->value()[Lorg/simpleframework/xml/Namespace;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_a

    aget-object v3, v0, v1

    iget-object v5, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v5, v3}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method


# virtual methods
.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/Qualifier;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    return-void
.end method
