.class public Lorg/apache/http/message/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final CR:C = '\r'

.field public static final DQUOTE:C = '\"'

.field public static final ESCAPE:C = '\\'

.field public static final HT:C = '\t'

.field public static final INSTANCE:Lorg/apache/http/message/TokenParser;

.field public static final LF:C = '\n'

.field public static final SP:C = ' '


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/http/message/TokenParser;

    invoke-direct {v0}, Lorg/apache/http/message/TokenParser;-><init>()V

    sput-object v0, Lorg/apache/http/message/TokenParser;->INSTANCE:Lorg/apache/http/message/TokenParser;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs INIT_BITSET([I)Ljava/util/BitSet;
    .registers 6

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    move-object v1, p0

    array-length v4, p0

    const/4 v3, 0x0

    :goto_8
    if-lt v3, v4, :cond_b

    return-object v2

    :cond_b
    aget v0, p0, v3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static isWhitespace(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public copyContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .registers 11

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    move v1, v2

    :goto_d
    if-lt v1, v3, :cond_13

    :cond_f
    :goto_f
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    return-void

    :cond_13
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-nez p3, :cond_27

    :cond_19
    invoke-static {v0}, Lorg/apache/http/message/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_f

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_f
.end method

.method public copyQuotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/lang/StringBuilder;)V
    .registers 13

    const/16 v8, 0x5c

    const/16 v7, 0x22

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v6

    if-nez v6, :cond_28

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v4

    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_29

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    move v2, v3

    :goto_22
    if-lt v2, v4, :cond_2a

    :goto_24
    invoke-virtual {p2, v5}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    return-void

    :cond_28
    return-void

    :cond_29
    return-void

    :cond_2a
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-nez v1, :cond_3d

    if-eq v0, v7, :cond_4a

    if-eq v0, v8, :cond_4d

    const/16 v6, 0xd

    if-ne v0, v6, :cond_4f

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_3d
    if-ne v0, v7, :cond_44

    :cond_3f
    :goto_3f
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_38

    :cond_44
    if-eq v0, v8, :cond_3f

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_4d
    const/4 v1, 0x1

    goto :goto_38

    :cond_4f
    const/16 v6, 0xa

    if-eq v0, v6, :cond_38

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_38
.end method

.method public copyUnquotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V
    .registers 11

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    move v1, v2

    :goto_d
    if-lt v1, v3, :cond_13

    :cond_f
    :goto_f
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    return-void

    :cond_13
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-nez p3, :cond_2b

    :cond_19
    invoke-static {v0}, Lorg/apache/http/message/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_f

    const/16 v5, 0x22

    if-eq v0, v5, :cond_f

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2b
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_f
.end method

.method public parseToken(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_11
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-nez p3, :cond_28

    :goto_1b
    invoke-static {v0}, Lorg/apache/http/message/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2f

    if-nez v2, :cond_34

    :cond_23
    :goto_23
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/http/message/TokenParser;->copyContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_28
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1b

    :cond_2f
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    const/4 v2, 0x1

    goto :goto_6

    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_23

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23
.end method

.method public parseValue(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;
    .registers 9

    const/16 v4, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_13
    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    if-nez p3, :cond_2e

    :goto_1d
    invoke-static {v0}, Lorg/apache/http/message/TokenParser;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_35

    const/16 v3, 0x22

    if-eq v0, v3, :cond_3a

    if-nez v2, :cond_4b

    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/http/message/TokenParser;->copyUnquotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/util/BitSet;Ljava/lang/StringBuilder;)V

    const/4 v2, 0x0

    goto :goto_8

    :cond_2e
    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_1d

    :cond_35
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/message/TokenParser;->skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V

    const/4 v2, 0x1

    goto :goto_8

    :cond_3a
    if-nez v2, :cond_41

    :cond_3c
    :goto_3c
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/http/message/TokenParser;->copyQuotedContent(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;Ljava/lang/StringBuilder;)V

    const/4 v2, 0x0

    goto :goto_8

    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29
.end method

.method public skipWhiteSpace(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)V
    .registers 9

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getPos()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/http/message/ParserCursor;->getUpperBound()I

    move-result v3

    move v1, v2

    :goto_d
    if-lt v1, v3, :cond_13

    :cond_f
    invoke-virtual {p2, v4}, Lorg/apache/http/message/ParserCursor;->updatePos(I)V

    return-void

    :cond_13
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/http/message/TokenParser;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_f

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method
