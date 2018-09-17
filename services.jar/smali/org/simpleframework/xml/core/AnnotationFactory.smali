.class Lorg/simpleframework/xml/core/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final required:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Support;->getFormat()Lorg/simpleframework/xml/stream/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->format:Lorg/simpleframework/xml/stream/Format;

    return-void
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2f

    :cond_14
    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2

    :cond_1b
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_28

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2

    :cond_28
    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2

    :cond_2f
    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isAttribute()Z

    move-result v2

    if-eqz v2, :cond_14

    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    return-object v2
.end method

.method private getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method private getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/AnnotationHandler;

    iget-boolean v2, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    invoke-direct {v0, p2, v2, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;ZZ)V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    return-object v2
.end method

.method private isAttribute()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/Format;->getVerbosity()Lorg/simpleframework/xml/stream/Verbosity;

    move-result-object v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    sget-object v2, Lorg/simpleframework/xml/stream/Verbosity;->LOW:Lorg/simpleframework/xml/stream/Verbosity;

    if-eq v0, v2, :cond_f

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private isPrimitive(Ljava/lang/Class;)Z
    .registers 4

    const/4 v1, 0x1

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_16

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_17

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0

    :cond_16
    return v1

    :cond_17
    return v1

    :cond_18
    return v1
.end method

.method private isPrimitiveKey([Ljava/lang/Class;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :cond_4
    return v3

    :cond_5
    array-length v2, p1

    if-lez v2, :cond_4

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    aget-object v1, p1, v3

    if-nez v0, :cond_17

    :cond_12
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    return v2

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_12

    return v4

    :cond_24
    return v4
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_19

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    return-object v1

    :cond_19
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitiveKey([Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_26

    :cond_1f
    const-class v1, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    return-object v1

    :cond_26
    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-class v1, Lorg/simpleframework/xml/ElementMap;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v1

    return-object v1

    :cond_34
    const-class v1, Lorg/simpleframework/xml/ElementList;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    return-object v1
.end method
