.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 7

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p1

    if-lt p1, v3, :cond_9

    :cond_8
    return v1

    :cond_9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_d
    :goto_d
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ge v2, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_d
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .registers 15

    const/16 v10, 0x81

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x6

    new-array v3, v6, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    aput-object v6, v3, v7

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v7, 0x1

    aput-object v6, v3, v7

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    aput-object v6, v3, v8

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v7, 0x3

    aput-object v6, v3, v7

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v7, 0x4

    aput-object v6, v3, v7

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v6}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    aput-object v6, v3, v9

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v2, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    invoke-virtual {v2, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string/jumbo v6, "[)>\u001e05\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_83

    :cond_49
    const-string/jumbo v6, "[)>\u001e06\u001d"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a1

    :cond_52
    :goto_52
    const/4 v4, 0x0

    :cond_53
    :goto_53
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-nez v6, :cond_bf

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-lt v5, v0, :cond_d2

    :cond_6a
    :goto_6a
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v0, :cond_dc

    :goto_74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, v0, :cond_e0

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_83
    const-string/jumbo v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    const/16 v6, 0xec

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string/jumbo v7, "[)>\u001e05\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_52

    :cond_a1
    const-string/jumbo v6, "\u001e\u0004"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    const/16 v6, 0xed

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    invoke-virtual {v2, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    iget v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const-string/jumbo v7, "[)>\u001e06\u001d"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_52

    :cond_bf
    aget-object v6, v3, v4

    invoke-interface {v6, v2}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v6

    if-ltz v6, :cond_53

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_53

    :cond_d2
    if-eqz v4, :cond_6a

    if-eq v4, v9, :cond_6a

    const/16 v6, 0xfe

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_6a

    :cond_dc
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_e0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(CI)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74
.end method

.method private static findMinimums([F[II[B)I
    .registers 9

    const/4 v4, 0x0

    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-lt v1, v2, :cond_9

    return p2

    :cond_9
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    aget v0, p1, v1

    if-gt p2, v0, :cond_1c

    :goto_17
    if-eq p2, v0, :cond_21

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    move p2, v0

    invoke-static {p3, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_17

    :cond_21
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    goto :goto_19
.end method

.method private static getMinimumCount([B)I
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x6

    if-lt v0, v2, :cond_6

    return v1

    :cond_6
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static illegalCharacter(C)V
    .registers 6

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string/jumbo v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-ge p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x39

    if-gt p0, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5
.end method

.method static isExtendedASCII(C)Z
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xff

    if-gt p0, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static isNativeC40(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x30

    if-ge p0, v0, :cond_10

    :cond_a
    const/16 v0, 0x41

    if-ge p0, v0, :cond_15

    :goto_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_10
    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    goto :goto_4

    :cond_15
    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    goto :goto_e
.end method

.method private static isNativeEDIFACT(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ge p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x5e

    if-gt p0, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static isNativeText(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    :cond_4
    :goto_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x30

    if-ge p0, v0, :cond_10

    :cond_a
    const/16 v0, 0x61

    if-ge p0, v0, :cond_15

    :goto_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_10
    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    goto :goto_4

    :cond_15
    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    goto :goto_e
.end method

.method private static isNativeX12(C)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    :goto_7
    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/16 v1, 0x20

    if-eq p0, v1, :cond_7

    const/16 v1, 0x30

    if-ge p0, v1, :cond_1a

    :cond_11
    const/16 v1, 0x41

    if-lt p0, v1, :cond_8

    const/16 v1, 0x5a

    if-le p0, v1, :cond_7

    goto :goto_8

    :cond_1a
    const/16 v1, 0x39

    if-gt p0, v1, :cond_11

    goto :goto_7
.end method

.method private static isSpecialB256(C)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private static isX12TermSep(C)Z
    .registers 2

    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .registers 17

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge p1, v9, :cond_ea

    if-eqz p2, :cond_eb

    const/4 v9, 0x6

    new-array v1, v9, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v1, v10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    aput v9, v1, v10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x2

    aput v9, v1, v10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x3

    aput v9, v1, v10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x4

    aput v9, v1, v10

    const/high16 v9, 0x40100000    # 2.25f

    const/4 v10, 0x5

    aput v9, v1, v10

    const/4 v9, 0x0

    aput v9, v1, p2

    :goto_2c
    const/4 v2, 0x0

    :cond_2d
    add-int v9, p1, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v9, v10, :cond_10d

    add-int v9, p1, v2

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_152

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_15f

    const/4 v9, 0x0

    aget v9, v1, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v1, v10

    const/4 v9, 0x0

    aget v9, v1, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    const/4 v10, 0x0

    aput v9, v1, v10

    :goto_5f
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    if-nez v9, :cond_177

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_183

    const/4 v9, 0x1

    aget v9, v1, v9

    const v10, 0x3faaaaab

    add-float/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v1, v10

    :goto_75
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-nez v9, :cond_18f

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_19b

    const/4 v9, 0x2

    aget v9, v1, v9

    const v10, 0x3faaaaab

    add-float/2addr v9, v10

    const/4 v10, 0x2

    aput v9, v1, v10

    :goto_8b
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-nez v9, :cond_1a7

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_1b3

    const/4 v9, 0x3

    aget v9, v1, v9

    const v10, 0x40555555

    add-float/2addr v9, v10

    const/4 v10, 0x3

    aput v9, v1, v10

    :goto_a1
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-nez v9, :cond_1bf

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-nez v9, :cond_1ca

    const/4 v9, 0x4

    aget v9, v1, v9

    const/high16 v10, 0x40500000    # 3.25f

    add-float/2addr v9, v10

    const/4 v10, 0x4

    aput v9, v1, v10

    :goto_b6
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v9

    if-nez v9, :cond_1d5

    const/4 v9, 0x5

    aget v9, v1, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    const/4 v10, 0x5

    aput v9, v1, v10

    :goto_c5
    const/4 v9, 0x4

    if-lt v2, v9, :cond_2d

    const/4 v9, 0x6

    new-array v3, v9, [I

    const/4 v9, 0x6

    new-array v6, v9, [B

    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    if-lt v9, v10, :cond_1e0

    :cond_e0
    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_202

    :cond_e8
    const/4 v9, 0x5

    return v9

    :cond_ea
    return p2

    :cond_eb
    const/4 v9, 0x6

    new-array v1, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v1, v10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    aput v9, v1, v10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    aput v9, v1, v10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x3

    aput v9, v1, v10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x4

    aput v9, v1, v10

    const/high16 v9, 0x3fa00000    # 1.25f

    const/4 v10, 0x5

    aput v9, v1, v10

    goto/16 :goto_2c

    :cond_10d
    const v4, 0x7fffffff

    const/4 v9, 0x6

    new-array v6, v9, [B

    const/4 v9, 0x6

    new-array v3, v9, [I

    const v9, 0x7fffffff

    invoke-static {v1, v3, v9, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v4

    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v5

    const/4 v9, 0x0

    aget v9, v3, v9

    if-eq v9, v4, :cond_134

    const/4 v9, 0x1

    if-eq v5, v9, :cond_136

    :cond_129
    const/4 v9, 0x1

    if-eq v5, v9, :cond_13d

    :cond_12c
    const/4 v9, 0x1

    if-eq v5, v9, :cond_144

    :cond_12f
    const/4 v9, 0x1

    if-eq v5, v9, :cond_14b

    :cond_132
    const/4 v9, 0x1

    return v9

    :cond_134
    const/4 v9, 0x0

    return v9

    :cond_136
    const/4 v9, 0x5

    aget-byte v9, v6, v9

    if-lez v9, :cond_129

    const/4 v9, 0x5

    return v9

    :cond_13d
    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_12c

    const/4 v9, 0x4

    return v9

    :cond_144
    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_12f

    const/4 v9, 0x2

    return v9

    :cond_14b
    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_132

    const/4 v9, 0x3

    return v9

    :cond_152
    const/4 v9, 0x0

    aget v9, v1, v9

    float-to-double v10, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-float v9, v10

    const/4 v10, 0x0

    aput v9, v1, v10

    goto/16 :goto_5f

    :cond_15f
    const/4 v9, 0x0

    aget v9, v1, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v1, v10

    const/4 v9, 0x0

    aget v9, v1, v9

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    const/4 v10, 0x0

    aput v9, v1, v10

    goto/16 :goto_5f

    :cond_177
    const/4 v9, 0x1

    aget v9, v1, v9

    const v10, 0x3f2aaaab

    add-float/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v1, v10

    goto/16 :goto_75

    :cond_183
    const/4 v9, 0x1

    aget v9, v1, v9

    const v10, 0x402aaaab

    add-float/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v1, v10

    goto/16 :goto_75

    :cond_18f
    const/4 v9, 0x2

    aget v9, v1, v9

    const v10, 0x3f2aaaab

    add-float/2addr v9, v10

    const/4 v10, 0x2

    aput v9, v1, v10

    goto/16 :goto_8b

    :cond_19b
    const/4 v9, 0x2

    aget v9, v1, v9

    const v10, 0x402aaaab

    add-float/2addr v9, v10

    const/4 v10, 0x2

    aput v9, v1, v10

    goto/16 :goto_8b

    :cond_1a7
    const/4 v9, 0x3

    aget v9, v1, v9

    const v10, 0x3f2aaaab

    add-float/2addr v9, v10

    const/4 v10, 0x3

    aput v9, v1, v10

    goto/16 :goto_a1

    :cond_1b3
    const/4 v9, 0x3

    aget v9, v1, v9

    const v10, 0x408aaaab

    add-float/2addr v9, v10

    const/4 v10, 0x3

    aput v9, v1, v10

    goto/16 :goto_a1

    :cond_1bf
    const/4 v9, 0x4

    aget v9, v1, v9

    const/high16 v10, 0x3f400000    # 0.75f

    add-float/2addr v9, v10

    const/4 v10, 0x4

    aput v9, v1, v10

    goto/16 :goto_b6

    :cond_1ca
    const/4 v9, 0x4

    aget v9, v1, v9

    const/high16 v10, 0x40880000    # 4.25f

    add-float/2addr v9, v10

    const/4 v10, 0x4

    aput v9, v1, v10

    goto/16 :goto_b6

    :cond_1d5
    const/4 v9, 0x5

    aget v9, v1, v9

    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v9, v10

    const/4 v10, 0x5

    aput v9, v1, v10

    goto/16 :goto_c5

    :cond_1e0
    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    if-ge v9, v10, :cond_e0

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_e0

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ge v9, v10, :cond_e0

    const/4 v9, 0x0

    aget v9, v3, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_e0

    const/4 v9, 0x0

    return v9

    :cond_202
    const/4 v9, 0x1

    aget-byte v9, v6, v9

    const/4 v10, 0x2

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    const/4 v10, 0x4

    aget-byte v10, v6, v10

    add-int/2addr v9, v10

    if-eqz v9, :cond_e8

    const/4 v9, 0x1

    if-eq v5, v9, :cond_260

    :cond_216
    const/4 v9, 0x1

    if-eq v5, v9, :cond_267

    :cond_219
    const/4 v9, 0x1

    if-eq v5, v9, :cond_26e

    :cond_21c
    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aget v10, v3, v10

    if-ge v9, v10, :cond_2d

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x5

    aget v10, v3, v10

    if-ge v9, v10, :cond_2d

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    aget v10, v3, v10

    if-ge v9, v10, :cond_2d

    const/4 v9, 0x1

    aget v9, v3, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    aget v10, v3, v10

    if-ge v9, v10, :cond_2d

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-lt v9, v10, :cond_275

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    if-ne v9, v10, :cond_2d

    add-int v9, p1, v2

    add-int/lit8 v7, v9, 0x1

    :goto_258
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lt v7, v9, :cond_277

    :cond_25e
    const/4 v9, 0x1

    return v9

    :cond_260
    const/4 v9, 0x4

    aget-byte v9, v6, v9

    if-lez v9, :cond_216

    const/4 v9, 0x4

    return v9

    :cond_267
    const/4 v9, 0x2

    aget-byte v9, v6, v9

    if-lez v9, :cond_219

    const/4 v9, 0x2

    return v9

    :cond_26e
    const/4 v9, 0x3

    aget-byte v9, v6, v9

    if-lez v9, :cond_21c

    const/4 v9, 0x3

    return v9

    :cond_275
    const/4 v9, 0x1

    return v9

    :cond_277
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v9

    if-nez v9, :cond_28a

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_25e

    add-int/lit8 v7, v7, 0x1

    goto :goto_258

    :cond_28a
    const/4 v9, 0x3

    return v9
.end method

.method private static randomize253State(CI)C
    .registers 5

    mul-int/lit16 v2, p1, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit8 v0, v2, 0x1

    add-int v1, p0, v0

    const/16 v2, 0xfe

    if-le v1, v2, :cond_10

    add-int/lit16 v2, v1, -0xfe

    int-to-char v2, v2

    :goto_f
    return v2

    :cond_10
    int-to-char v2, v1

    goto :goto_f
.end method
