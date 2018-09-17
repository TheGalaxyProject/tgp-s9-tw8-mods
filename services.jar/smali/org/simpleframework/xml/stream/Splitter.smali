.class abstract Lorg/simpleframework/xml/stream/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field protected builder:Ljava/lang/StringBuilder;

.field protected count:I

.field protected off:I

.field protected text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    array-length v0, v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    return-void
.end method

.method private acronym()Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    const/4 v2, 0x0

    :goto_5
    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v1, v5, :cond_e

    :cond_9
    if-gt v2, v4, :cond_1d

    :goto_b
    if-gt v2, v4, :cond_3e

    :goto_d
    return v3

    :cond_e
    iget-object v5, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v0, v5, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v1, v5, :cond_2f

    :cond_21
    :goto_21
    iget-object v5, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v6, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v7, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v5, v6, v7}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    goto :goto_b

    :cond_2f
    iget-object v5, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    add-int/lit8 v6, v1, -0x1

    aget-char v0, v5, v6

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v5

    if-eqz v5, :cond_21

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_3e
    move v3, v4

    goto :goto_d
.end method

.method private isDigit(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isLetter(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isUpper(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private number()Z
    .registers 8

    const/4 v3, 0x0

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    const/4 v2, 0x0

    :goto_4
    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v1, v4, :cond_f

    :cond_8
    if-gtz v2, :cond_1e

    :goto_a
    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-gtz v2, :cond_2a

    :goto_e
    return v3

    :cond_f
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v0, v4, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v6, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v6, v1, v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    goto :goto_a

    :cond_2a
    const/4 v3, 0x1

    goto :goto_e
.end method

.method private token()V
    .registers 6

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    :goto_2
    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v1, v2, :cond_d

    :cond_6
    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-gt v1, v2, :cond_25

    :goto_a
    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    return-void

    :cond_d
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v0, v2, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-gt v1, v2, :cond_1e

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1b

    :cond_25
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/simpleframework/xml/stream/Splitter;->parse([CII)V

    iget-object v2, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    goto :goto_a
.end method


# virtual methods
.method protected abstract commit([CII)V
.end method

.method protected abstract parse([CII)V
.end method

.method public process()Ljava/lang/String;
    .registers 4

    :cond_0
    :goto_0
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v1, v2, :cond_1f

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    aget-char v0, v1, v2

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isSpecial(C)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    :cond_1f
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v1, v2, :cond_d

    :cond_25
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->acronym()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->token()V

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->number()Z

    goto :goto_0
.end method

.method protected toLower(C)C
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method protected toUpper(C)C
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0
.end method
