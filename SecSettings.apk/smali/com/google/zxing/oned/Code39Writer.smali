.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x9

    if-lt v0, v2, :cond_7

    return-void

    :cond_7
    shl-int v2, v3, v0

    and-int v1, p0, v2

    if-eqz v1, :cond_13

    const/4 v2, 0x2

    :goto_e
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    move v2, v3

    goto :goto_e
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only encode CODE_39, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v13, 0x50

    if-gt v7, v13, :cond_43

    const/16 v13, 0x9

    new-array v12, v13, [I

    add-int/lit8 v2, v7, 0x19

    const/4 v3, 0x0

    :goto_f
    if-lt v3, v7, :cond_5d

    new-array v10, v2, [Z

    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v14, 0x27

    aget v13, v13, v14

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v10, v14, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    const/4 v13, 0x1

    new-array v8, v13, [I

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v13, v8, v14

    const/4 v13, 0x0

    invoke-static {v10, v9, v8, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    add-int/lit8 v3, v7, -0x1

    :goto_31
    if-gez v3, :cond_9d

    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v14, 0x27

    aget v13, v13, v14

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x1

    invoke-static {v10, v9, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    return-object v10

    :cond_43
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_5d
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const-string/jumbo v14, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_7b

    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v13, v13, v5

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    move-object v1, v12

    array-length v6, v12

    const/4 v4, 0x0

    :goto_76
    if-lt v4, v6, :cond_97

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_7b
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Bad contents: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_97
    aget v11, v12, v4

    add-int/2addr v2, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    :cond_9d
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const-string/jumbo v14, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v13, v13, v5

    invoke-static {v13, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v13, 0x1

    invoke-static {v10, v9, v12, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    const/4 v13, 0x0

    invoke-static {v10, v9, v8, v13}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v13

    add-int/2addr v9, v13

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_31
.end method
