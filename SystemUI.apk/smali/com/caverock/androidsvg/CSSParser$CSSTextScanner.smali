.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "(?s)/\\*.*?\\*/"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    return-object v2

    :cond_13
    return-object v0
.end method

.method private scanForIdentifier()I
    .registers 11

    const/16 v9, 0x61

    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x2d

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_27

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_2a

    :goto_1e
    if-ge v0, v6, :cond_2f

    :cond_20
    if-ge v0, v9, :cond_44

    :cond_22
    if-eq v0, v8, :cond_31

    :goto_24
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v1

    :cond_27
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v3

    :cond_2a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_1e

    :cond_2f
    if-gt v0, v7, :cond_20

    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    :goto_35
    if-ge v0, v6, :cond_49

    :cond_37
    if-ge v0, v9, :cond_4c

    :cond_39
    const/16 v3, 0x30

    if-ge v0, v3, :cond_51

    :cond_3d
    if-ne v0, v5, :cond_56

    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_35

    :cond_44
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_22

    goto :goto_31

    :cond_49
    if-gt v0, v7, :cond_37

    goto :goto_3f

    :cond_4c
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_39

    goto :goto_3f

    :cond_51
    const/16 v3, 0x39

    if-gt v0, v3, :cond_3d

    goto :goto_3f

    :cond_56
    if-eq v0, v8, :cond_3f

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_24
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-eq v0, v2, :cond_13

    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1

    :cond_13
    const/4 v2, 0x0

    return-object v2
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_1d

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_13
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    :cond_16
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-gt v3, v2, :cond_40

    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v5

    :cond_1d
    return-object v5

    :cond_1e
    const/16 v3, 0x3b

    if-eq v0, v3, :cond_16

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_16

    const/16 v3, 0x21

    if-eq v0, v3, :cond_16

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    :goto_36
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_13

    :cond_3b
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    goto :goto_36

    :cond_40
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v9

    if-nez v9, :cond_2b

    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2c

    :cond_12
    :goto_12
    const/16 v9, 0x2a

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_48

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4e

    :goto_20
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v9

    if-eqz v9, :cond_57

    :cond_26
    :goto_26
    if-nez v5, :cond_169

    iput v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v11

    :cond_2b
    return v11

    :cond_2c
    const/16 v9, 0x3e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_42

    const/16 v9, 0x2b

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_12

    :cond_42
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_12

    :cond_48
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_20

    :cond_4e
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v7}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    goto :goto_20

    :cond_57
    const/16 v9, 0x2e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_98

    const/16 v9, 0x23

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_bc

    :goto_67
    if-eqz v5, :cond_26

    const/16 v9, 0x5b

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_df

    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_26

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_26

    const/16 v9, 0x28

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_14f

    :cond_89
    iget-object v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_26

    :cond_98
    if-eqz v5, :cond_ad

    :goto_9a
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b3

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v10, "class"

    invoke-virtual {v5, v10, v9, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_20

    :cond_ad
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_9a

    :cond_b3
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid \".class\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_bc
    if-eqz v5, :cond_d0

    :goto_be
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d6

    sget-object v9, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    const-string/jumbo v10, "id"

    invoke-virtual {v5, v10, v9, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    goto :goto_67

    :cond_d0
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    goto :goto_be

    :cond_d6
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_df
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11b

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/4 v3, 0x0

    const/16 v9, 0x3d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_124

    const-string/jumbo v9, "~="

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_127

    const-string/jumbo v9, "|="

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12a

    :goto_107
    if-nez v3, :cond_12d

    :goto_109
    const/16 v9, 0x5d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_143

    if-eqz v3, :cond_14c

    :goto_113
    invoke-virtual {v5, v0, v3, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_20

    :cond_11b
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_124
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_107

    :cond_127
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_107

    :cond_12a
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_107

    :cond_12d
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13a

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_109

    :cond_13a
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_143
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_14c
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_113

    :cond_14f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_89

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v9, 0x29

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_89

    add-int/lit8 v9, v4, -0x1

    iput v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto/16 :goto_26

    :cond_169
    invoke-virtual {p1, v5}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    const/4 v9, 0x1

    return v9
.end method
