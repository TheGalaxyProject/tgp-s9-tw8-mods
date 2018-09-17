.class Lorg/simpleframework/xml/core/SignatureBuilder;
.super Ljava/lang/Object;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;,
        Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
    }
.end annotation


# instance fields
.field private final factory:Ljava/lang/reflect/Constructor;

.field private final table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;I)V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder;->create(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder;->create()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;I)V
    .registers 4

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V
    .registers 11

    iget-object v6, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v6, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v2

    iget-object v6, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I
    invoke-static {v6}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-gt v6, p3, :cond_18

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/SignatureBuilder;->populate(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    :cond_17
    return-void

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_17

    new-instance v1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v1, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;)V

    if-nez p2, :cond_25

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_25
    invoke-virtual {v0, v3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v1, v4}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, p1, v1, v6}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V

    goto :goto_22
.end method

.method private create()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/simpleframework/xml/core/Signature;

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v1, v2}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder;->isValid()Z

    move-result v2

    if-nez v2, :cond_13

    :goto_12
    return-object v0

    :cond_13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private create(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I
    invoke-static {p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v0

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I
    invoke-static {p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v8

    const/4 v1, 0x0

    :goto_f
    if-lt v1, v0, :cond_12

    return-object v4

    :cond_12
    new-instance v7, Lorg/simpleframework/xml/core/Signature;

    iget-object v9, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-direct {v7, v9}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v2, 0x0

    :goto_1a
    if-lt v2, v8, :cond_22

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    invoke-virtual {p1, v2, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(II)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v5

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/simpleframework/xml/core/Signature;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    invoke-virtual {v7, v5}, Lorg/simpleframework/xml/core/Signature;->add(Lorg/simpleframework/xml/core/Parameter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3a
    new-instance v9, Lorg/simpleframework/xml/core/ConstructorException;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v11

    iget-object v11, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "Parameter \'%s\' is a duplicate in %s"

    invoke-direct {v9, v11, v10}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9
.end method

.method private populate(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;I)V
    .registers 12

    iget-object v7, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v7, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v6

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-lt v2, v1, :cond_12

    return-void

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-lt v3, v6, :cond_25

    invoke-virtual {p1, p3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v4

    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v4, v5}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_25
    invoke-virtual {p1, v3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v4

    invoke-virtual {p2, v3}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/simpleframework/xml/core/Parameter;

    invoke-virtual {v4, v5}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13
.end method


# virtual methods
.method public build()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/SignatureBuilder;->build(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->insert(Lorg/simpleframework/xml/core/Parameter;I)V

    return-void
.end method

.method public isValid()Z
    .registers 4

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureBuilder;->table:Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;

    # invokes: Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I
    invoke-static {v2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I

    move-result v1

    array-length v2, v0

    if-eq v2, v1, :cond_11

    const/4 v2, 0x0

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x1

    goto :goto_10
.end method
