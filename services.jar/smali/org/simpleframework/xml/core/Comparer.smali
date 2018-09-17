.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;
.source "Comparer.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final ignore:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    return-void
.end method

.method private isIgnore(Ljava/lang/reflect/Method;)Z
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    if-nez v5, :cond_a

    :cond_9
    return v6

    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_9

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    return v10

    :cond_14
    move-object v0, v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_17
    if-lt v2, v3, :cond_1b

    const/4 v9, 0x1

    return v9

    :cond_1b
    aget-object v5, v4, v2

    invoke-direct {p0, v5}, Lorg/simpleframework/xml/core/Comparer;->isIgnore(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_26

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v5, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    return v10
.end method
