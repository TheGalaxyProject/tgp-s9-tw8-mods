.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x6

    const/16 v4, 0x8

    const/16 v3, 0xc

    const/16 v2, 0xa

    const/16 v0, 0x21

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    aput v5, v0, v1

    const/4 v1, 0x2

    aput v5, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    aput v4, v0, v6

    const/4 v1, 0x5

    aput v4, v0, v1

    aput v4, v0, v5

    const/4 v1, 0x7

    aput v4, v0, v1

    aput v4, v0, v4

    const/16 v1, 0x9

    aput v2, v0, v1

    aput v2, v0, v2

    const/16 v1, 0xb

    aput v2, v0, v1

    aput v2, v0, v3

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    aput v3, v0, v1

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .registers 11

    const/4 v6, 0x0

    new-array v2, p2, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    div-int v3, v5, p1

    :goto_a
    if-lt v0, v3, :cond_d

    return-object v2

    :cond_d
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_f
    if-lt v1, p1, :cond_16

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    mul-int v5, v0, p1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    move v5, v6

    :goto_20
    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    sub-int v5, p1, v1

    add-int/lit8 v5, v5, -0x1

    const/4 v7, 0x1

    shl-int v5, v7, v5

    goto :goto_20
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p2, :cond_36

    sub-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void

    :cond_36
    sub-int v1, p1, v0

    :goto_38
    add-int v2, p1, v0

    if-le v1, v2, :cond_3f

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3f
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .registers 9

    div-int/lit8 v0, p2, 0x2

    if-nez p1, :cond_a

    const/4 v1, 0x0

    :goto_5
    const/16 v3, 0xa

    if-lt v1, v3, :cond_4b

    :cond_9
    return-void

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/4 v3, 0x7

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, v0, -0x3

    add-int v2, v3, v1

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_33

    :goto_18
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_39

    :goto_20
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3f

    :goto_28
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_45

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_33
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_18

    :cond_39
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_20

    :cond_3f
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_28

    :cond_45
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_30

    :cond_4b
    add-int/lit8 v3, v0, -0x5

    add-int/2addr v3, v1

    div-int/lit8 v4, v1, 0x5

    add-int v2, v3, v4

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_73

    :goto_58
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_79

    :goto_60
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_7f

    :goto_68
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_85

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_73
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_58

    :cond_79
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_60

    :cond_7f
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_68

    :cond_85
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_70
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 36

    new-instance v29, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int v29, v29, p1

    div-int/lit8 v29, v29, 0x64

    add-int/lit8 v10, v29, 0xb

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v26, v29, v10

    if-nez p2, :cond_5d

    const/16 v28, 0x0

    const/16 v24, 0x0

    const/4 v11, 0x0

    :goto_24
    const/16 v29, 0x20

    move/from16 v0, v29

    if-gt v11, v0, :cond_148

    const/16 v29, 0x3

    move/from16 v0, v29

    if-le v11, v0, :cond_151

    const/4 v9, 0x0

    :goto_31
    if-nez v9, :cond_154

    move v14, v11

    :goto_34
    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-gt v0, v1, :cond_5a

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v29, v29, v14

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_158

    :goto_48
    rem-int v29, v25, v28

    sub-int v27, v25, v29

    if-nez v9, :cond_164

    :goto_4e
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-le v0, v1, :cond_8c

    :cond_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :cond_5d
    if-ltz p2, :cond_102

    const/4 v9, 0x0

    :goto_60
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-nez v9, :cond_105

    const/16 v29, 0x20

    :goto_68
    move/from16 v0, v29

    if-gt v14, v0, :cond_109

    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    rem-int v29, v25, v28

    sub-int v27, v25, v29

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-gt v0, v1, :cond_12a

    if-nez v9, :cond_133

    :cond_8c
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v17

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    div-int v18, v29, v28

    move/from16 v0, v18

    invoke-static {v9, v14, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v19

    if-nez v9, :cond_172

    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v5, v29, 0xe

    :goto_a8
    new-array v3, v5, [I

    if-nez v9, :cond_178

    add-int/lit8 v29, v5, 0x1

    div-int/lit8 v30, v5, 0x2

    add-int/lit8 v30, v30, -0x1

    div-int/lit8 v30, v30, 0xf

    mul-int/lit8 v30, v30, 0x2

    add-int v16, v29, v30

    div-int/lit8 v21, v5, 0x2

    div-int/lit8 v7, v16, 0x2

    const/4 v11, 0x0

    :goto_bd
    move/from16 v0, v21

    if-lt v11, v0, :cond_187

    :cond_c1
    new-instance v15, Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_c9
    if-lt v11, v14, :cond_1a1

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v15, v9, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-nez v9, :cond_270

    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_e1
    div-int/lit8 v29, v5, 0x2

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-lt v11, v0, :cond_27d

    :goto_e9
    new-instance v4, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v4}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    invoke-virtual {v4, v9}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    invoke-virtual {v4, v14}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    invoke-virtual {v4, v15}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v4

    :cond_102
    const/4 v9, 0x1

    goto/16 :goto_60

    :cond_105
    const/16 v29, 0x4

    goto/16 :goto_68

    :cond_109
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const-string/jumbo v31, "Illegal value %s for layers"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_12a
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_133
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int/lit8 v30, v28, 0x40

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_8c

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_148
    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v30, "Data too large for an Aztec code"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_151
    const/4 v9, 0x1

    goto/16 :goto_31

    :cond_154
    add-int/lit8 v14, v11, 0x1

    goto/16 :goto_34

    :cond_158
    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    goto/16 :goto_48

    :cond_164
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int/lit8 v30, v28, 0x40

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_5a

    goto/16 :goto_4e

    :cond_172
    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v5, v29, 0xb

    goto/16 :goto_a8

    :cond_178
    move/from16 v16, v5

    const/4 v11, 0x0

    :goto_17b
    array-length v0, v3

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v11, v0, :cond_c1

    aput v11, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_17b

    :cond_187
    div-int/lit8 v29, v11, 0xf

    add-int v20, v11, v29

    sub-int v29, v21, v11

    add-int/lit8 v29, v29, -0x1

    sub-int v30, v7, v20

    add-int/lit8 v30, v30, -0x1

    aput v30, v3, v29

    add-int v29, v21, v11

    add-int v30, v7, v20

    add-int/lit8 v30, v30, 0x1

    aput v30, v3, v29

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_bd

    :cond_1a1
    if-nez v9, :cond_1b6

    sub-int v29, v14, v11

    mul-int/lit8 v29, v29, 0x4

    add-int/lit8 v23, v29, 0xc

    :goto_1a9
    const/4 v12, 0x0

    :goto_1aa
    move/from16 v0, v23

    if-lt v12, v0, :cond_1bd

    mul-int/lit8 v29, v23, 0x8

    add-int v22, v22, v29

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c9

    :cond_1b6
    sub-int v29, v14, v11

    mul-int/lit8 v29, v29, 0x4

    add-int/lit8 v23, v29, 0x9

    goto :goto_1a9

    :cond_1bd
    mul-int/lit8 v8, v12, 0x2

    const/4 v13, 0x0

    :goto_1c0
    const/16 v29, 0x2

    move/from16 v0, v29

    if-lt v13, v0, :cond_1c9

    add-int/lit8 v12, v12, 0x1

    goto :goto_1aa

    :cond_1c9
    add-int v29, v22, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_210

    :goto_1d7
    mul-int/lit8 v29, v23, 0x2

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_224

    :goto_1e9
    mul-int/lit8 v29, v23, 0x4

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_23c

    :goto_1fb
    mul-int/lit8 v29, v23, 0x6

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-nez v29, :cond_258

    :goto_20d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c0

    :cond_210
    mul-int/lit8 v29, v11, 0x2

    add-int v29, v29, v13

    aget v29, v3, v29

    mul-int/lit8 v30, v11, 0x2

    add-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_1d7

    :cond_224
    mul-int/lit8 v29, v11, 0x2

    add-int v29, v29, v12

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    mul-int/lit8 v31, v11, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_1e9

    :cond_23c
    add-int/lit8 v29, v5, -0x1

    mul-int/lit8 v30, v11, 0x2

    sub-int v29, v29, v30

    sub-int v29, v29, v13

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    mul-int/lit8 v31, v11, 0x2

    sub-int v30, v30, v31

    sub-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_1fb

    :cond_258
    add-int/lit8 v29, v5, -0x1

    mul-int/lit8 v30, v11, 0x2

    sub-int v29, v29, v30

    sub-int v29, v29, v12

    aget v29, v3, v29

    mul-int/lit8 v30, v11, 0x2

    add-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_20d

    :cond_270
    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto/16 :goto_e9

    :cond_27d
    div-int/lit8 v29, v16, 0x2

    and-int/lit8 v13, v29, 0x1

    :goto_281
    move/from16 v0, v16

    if-lt v13, v0, :cond_28b

    add-int/lit8 v11, v11, 0xf

    add-int/lit8 v12, v12, 0x10

    goto/16 :goto_e1

    :cond_28b
    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_281
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .registers 14

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    div-int v4, v10, p2

    new-instance v7, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    div-int v9, p1, p2

    invoke-static {p0, p2, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v6

    sub-int v10, v9, v4

    invoke-virtual {v7, v6, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    rem-int v8, p1, p2

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move-object v0, v6

    array-length v2, v6

    const/4 v1, 0x0

    :goto_28
    if-lt v1, v2, :cond_2b

    return-object v3

    :cond_2b
    aget v5, v6, v1

    invoke-virtual {v3, v5, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .registers 7

    const/4 v3, 0x4

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-nez p0, :cond_1c

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x28

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x1c

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_1b
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .registers 2

    packed-switch p0, :pswitch_data_14

    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_b
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_e
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_11
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_11
    .end packed-switch
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .registers 10

    const/4 v7, 0x1

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    shl-int v6, v7, p1

    add-int/lit8 v2, v6, -0x2

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v3, :cond_12

    return-object v4

    :cond_12
    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_14
    if-lt v1, p1, :cond_23

    and-int v6, v5, v2

    if-eq v6, v2, :cond_39

    and-int v6, v5, v2

    if-eqz v6, :cond_41

    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_21
    add-int/2addr v0, p1

    goto :goto_f

    :cond_23
    add-int v6, v0, v1

    if-lt v6, v3, :cond_30

    :cond_27
    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_30
    add-int v6, v0, v1

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_2d

    :cond_39
    and-int v6, v5, v2

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    :cond_41
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_21
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 4

    if-nez p1, :cond_9

    const/16 v0, 0x70

    :goto_4
    mul-int/lit8 v1, p0, 0x10

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_9
    const/16 v0, 0x58

    goto :goto_4
.end method
