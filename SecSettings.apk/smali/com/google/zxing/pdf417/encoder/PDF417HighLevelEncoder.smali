.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final MIXED:[B

.field private static final PUNCTUATION:[B

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, -0x1

    const/16 v8, 0xa

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x0

    const/16 v2, 0x1e

    new-array v2, v2, [B

    const/16 v3, 0x30

    aput-byte v3, v2, v5

    const/16 v3, 0x31

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/16 v3, 0x32

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/16 v3, 0x33

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/16 v3, 0x34

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    const/16 v3, 0x35

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    const/16 v3, 0x36

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    const/16 v3, 0x37

    const/4 v4, 0x7

    aput-byte v3, v2, v4

    const/16 v3, 0x38

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    const/16 v3, 0x39

    aput-byte v3, v2, v6

    const/16 v3, 0x26

    aput-byte v3, v2, v8

    const/16 v3, 0xb

    aput-byte v7, v2, v3

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    const/16 v3, 0x2c

    aput-byte v3, v2, v7

    const/16 v3, 0x3a

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    const/16 v3, 0x23

    const/16 v4, 0xf

    aput-byte v3, v2, v4

    const/16 v3, 0x2d

    const/16 v4, 0x10

    aput-byte v3, v2, v4

    const/16 v3, 0x2e

    const/16 v4, 0x11

    aput-byte v3, v2, v4

    const/16 v3, 0x24

    const/16 v4, 0x12

    aput-byte v3, v2, v4

    const/16 v3, 0x2f

    const/16 v4, 0x13

    aput-byte v3, v2, v4

    const/16 v3, 0x2b

    const/16 v4, 0x14

    aput-byte v3, v2, v4

    const/16 v3, 0x25

    const/16 v4, 0x15

    aput-byte v3, v2, v4

    const/16 v3, 0x2a

    const/16 v4, 0x16

    aput-byte v3, v2, v4

    const/16 v3, 0x3d

    const/16 v4, 0x17

    aput-byte v3, v2, v4

    const/16 v3, 0x5e

    const/16 v4, 0x18

    aput-byte v3, v2, v4

    const/16 v3, 0x19

    aput-byte v5, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x1a

    aput-byte v3, v2, v4

    const/16 v3, 0x1b

    aput-byte v5, v2, v3

    const/16 v3, 0x1c

    aput-byte v5, v2, v3

    const/16 v3, 0x1d

    aput-byte v5, v2, v3

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    const/16 v2, 0x1e

    new-array v2, v2, [B

    const/16 v3, 0x3b

    aput-byte v3, v2, v5

    const/16 v3, 0x3c

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/16 v3, 0x3e

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/16 v3, 0x40

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/16 v3, 0x5b

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    const/16 v3, 0x5c

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    const/16 v3, 0x5d

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    const/16 v3, 0x5f

    const/4 v4, 0x7

    aput-byte v3, v2, v4

    const/16 v3, 0x60

    const/16 v4, 0x8

    aput-byte v3, v2, v4

    const/16 v3, 0x7e

    aput-byte v3, v2, v6

    const/16 v3, 0x21

    aput-byte v3, v2, v8

    const/16 v3, 0xb

    aput-byte v7, v2, v3

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    const/16 v3, 0x2c

    aput-byte v3, v2, v7

    const/16 v3, 0x3a

    const/16 v4, 0xe

    aput-byte v3, v2, v4

    const/16 v3, 0xf

    aput-byte v8, v2, v3

    const/16 v3, 0x2d

    const/16 v4, 0x10

    aput-byte v3, v2, v4

    const/16 v3, 0x2e

    const/16 v4, 0x11

    aput-byte v3, v2, v4

    const/16 v3, 0x24

    const/16 v4, 0x12

    aput-byte v3, v2, v4

    const/16 v3, 0x2f

    const/16 v4, 0x13

    aput-byte v3, v2, v4

    const/16 v3, 0x22

    const/16 v4, 0x14

    aput-byte v3, v2, v4

    const/16 v3, 0x7c

    const/16 v4, 0x15

    aput-byte v3, v2, v4

    const/16 v3, 0x2a

    const/16 v4, 0x16

    aput-byte v3, v2, v4

    const/16 v3, 0x28

    const/16 v4, 0x17

    aput-byte v3, v2, v4

    const/16 v3, 0x29

    const/16 v4, 0x18

    aput-byte v3, v2, v4

    const/16 v3, 0x3f

    const/16 v4, 0x19

    aput-byte v3, v2, v4

    const/16 v3, 0x7b

    const/16 v4, 0x1a

    aput-byte v3, v2, v4

    const/16 v3, 0x7d

    const/16 v4, 0x1b

    aput-byte v3, v2, v4

    const/16 v3, 0x27

    const/16 v4, 0x1c

    aput-byte v3, v2, v4

    const/16 v3, 0x1d

    aput-byte v5, v2, v3

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_15c
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v2, v2

    if-lt v1, v2, :cond_16d

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_167
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v2, v2

    if-lt v1, v2, :cond_17d

    return-void

    :cond_16d
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v0, v2, v1

    if-gtz v0, :cond_177

    :goto_173
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_15c

    :cond_177
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    goto :goto_173

    :cond_17d
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v0, v2, v1

    if-gtz v0, :cond_187

    :goto_183
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_167

    :cond_187
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    goto :goto_183
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v9, 0x3f

    const/16 v8, 0xd

    const/4 v7, 0x5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p2

    :goto_a
    if-lt v2, v3, :cond_f

    sub-int v6, v2, p2

    return v6

    :cond_f
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_14
    if-lt v4, v8, :cond_28

    :cond_16
    if-ge v4, v8, :cond_39

    const/4 v5, 0x0

    :goto_19
    if-lt v5, v7, :cond_3c

    :cond_1b
    if-ge v5, v7, :cond_4d

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    aget-byte v6, p1, v2

    if-eq v6, v9, :cond_50

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_16

    add-int/lit8 v4, v4, 0x1

    add-int v1, v2, v4

    if-ge v1, v3, :cond_16

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_14

    :cond_39
    sub-int v6, v2, p2

    return v6

    :cond_3c
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v6

    if-eqz v6, :cond_1b

    add-int/lit8 v5, v5, 0x1

    add-int v1, v2, v5

    if-ge v1, v3, :cond_1b

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_19

    :cond_4d
    sub-int v6, v2, p2

    return v6

    :cond_50
    if-eq v0, v9, :cond_25

    new-instance v6, Lcom/google/zxing/WriterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Non-encodable character detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (Unicode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
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
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

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

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .registers 8

    const/16 v5, 0xd

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, p1

    :cond_7
    :goto_7
    if-lt v1, v2, :cond_c

    :cond_9
    sub-int v4, v1, p1

    return v4

    :cond_c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v3, 0x0

    :cond_11
    :goto_11
    if-lt v3, v5, :cond_24

    :cond_13
    if-ge v3, v5, :cond_37

    if-gtz v3, :cond_7

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_13

    if-ge v1, v2, :cond_13

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_11

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_11

    :cond_37
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    return v4
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .registers 15

    const/4 v5, 0x1

    if-eq p2, v5, :cond_19

    :cond_3
    rem-int/lit8 v5, p2, 0x6

    if-eqz v5, :cond_21

    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_23

    const/16 v5, 0x385

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f
    move v3, p1

    const/4 v5, 0x6

    if-ge p2, v5, :cond_29

    :cond_13
    move v2, v3

    :goto_14
    add-int v5, p1, p2

    if-lt v2, v5, :cond_69

    return-void

    :cond_19
    if-nez p3, :cond_3

    const/16 v5, 0x391

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_21
    const/4 v4, 0x1

    goto :goto_8

    :cond_23
    const/16 v5, 0x39c

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_29
    const/4 v5, 0x5

    new-array v1, v5, [C

    :goto_2c
    add-int v5, p1, p2

    sub-int/2addr v5, v3

    const/4 v8, 0x6

    if-lt v5, v8, :cond_13

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_35
    const/4 v5, 0x6

    if-lt v2, v5, :cond_44

    const/4 v2, 0x0

    :goto_39
    const/4 v5, 0x5

    if-lt v2, v5, :cond_52

    array-length v5, v1

    add-int/lit8 v2, v5, -0x1

    :goto_3f
    if-gez v2, :cond_61

    add-int/lit8 v3, v3, 0x6

    goto :goto_2c

    :cond_44
    const/16 v5, 0x8

    shl-long/2addr v6, v5

    add-int v5, v3, v2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_52
    const-wide/16 v8, 0x384

    rem-long v8, v6, v8

    long-to-int v5, v8

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, v1, v2

    const-wide/16 v8, 0x384

    div-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_61
    aget-char v5, v1, v2

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3f

    :cond_69
    aget-byte v5, p0, v2

    and-int/lit16 v0, v5, 0xff

    int-to-char v5, v0

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v12, 0x386

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-eq p1, v9, :cond_28

    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-eq p1, v9, :cond_2c

    sget-object v9, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-eq p1, v9, :cond_35

    const/4 v2, 0x0

    :goto_21
    if-lt v5, v3, :cond_3c

    :goto_23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_28
    invoke-static {p0, v10, v3, v6, v10}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    goto :goto_23

    :cond_2c
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v1

    array-length v9, v1

    invoke-static {v1, v10, v9, v11, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_23

    :cond_35
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v10, v3, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_23

    :cond_3c
    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v9, 0xd

    if-ge v4, v9, :cond_53

    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v7

    const/4 v9, 0x5

    if-lt v7, v9, :cond_5d

    :cond_4b
    if-nez v2, :cond_70

    :goto_4d
    invoke-static {p0, v5, v7, v6, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v8

    add-int/2addr v5, v7

    goto :goto_21

    :cond_53
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v8, 0x0

    invoke-static {p0, v5, v4, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/2addr v5, v4

    goto :goto_21

    :cond_5d
    if-eq v4, v3, :cond_4b

    if-eqz v1, :cond_78

    :goto_61
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v0

    if-eqz v0, :cond_7d

    :goto_67
    if-eq v0, v11, :cond_7f

    :cond_69
    invoke-static {v1, v5, v0, v2, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    const/4 v2, 0x1

    const/4 v8, 0x0

    :goto_6e
    add-int/2addr v5, v0

    goto :goto_21

    :cond_70
    const/16 v9, 0x384

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_4d

    :cond_78
    invoke-static {p0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_61

    :cond_7d
    const/4 v0, 0x1

    goto :goto_67

    :cond_7f
    if-nez v2, :cond_69

    invoke-static {v1, v5, v11, v10, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_6e
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 16

    const/4 v11, 0x0

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    div-int/lit8 v8, p2, 0x3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-wide/16 v8, 0x384

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_17
    add-int/lit8 v8, p2, -0x1

    if-lt v2, v8, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int v8, p2, v2

    const/16 v9, 0x2c

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x31

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, p1, v2

    add-int v10, p1, v2

    add-int/2addr v10, v3

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_64
    if-gez v1, :cond_68

    add-int/2addr v2, v3

    goto :goto_17

    :cond_68
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_64
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .registers 16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v7, p4

    const/4 v3, 0x0

    :cond_7
    :goto_7
    add-int v9, p1, v3

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    packed-switch v7, :pswitch_data_13a

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-nez v9, :cond_108

    const/4 v7, 0x0

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_1d
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-nez v9, :cond_4d

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-nez v9, :cond_5e

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-nez v9, :cond_65

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    if-lt v3, p2, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_46
    if-lt v2, v4, :cond_112

    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_12f

    :goto_4c
    return v7

    :cond_4d
    const/16 v9, 0x20

    if-eq v0, v9, :cond_58

    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_58
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_5e
    const/4 v7, 0x1

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_65
    const/4 v7, 0x2

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_6c
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-nez v9, :cond_8c

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-nez v9, :cond_9d

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-nez v9, :cond_a9

    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_8c
    const/16 v9, 0x20

    if-eq v0, v9, :cond_97

    add-int/lit8 v9, v0, -0x61

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_97
    const/16 v9, 0x1a

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_9d
    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, -0x41

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_a9
    const/4 v7, 0x2

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_b1
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-nez v9, :cond_d8

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-nez v9, :cond_e2

    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-nez v9, :cond_ea

    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    if-lt v9, p2, :cond_f2

    :cond_c9
    const/16 v9, 0x1d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3c

    :cond_d8
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3c

    :cond_e2
    const/4 v7, 0x0

    const/16 v9, 0x1c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_ea
    const/4 v7, 0x1

    const/16 v9, 0x1b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_f2
    add-int v9, p1, v3

    add-int/lit8 v9, v9, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_c9

    const/4 v7, 0x3

    const/16 v9, 0x19

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_108
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v0

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3c

    :cond_112
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_121

    const/4 v6, 0x0

    :goto_117
    if-nez v6, :cond_123

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    :goto_11d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_46

    :cond_121
    const/4 v6, 0x1

    goto :goto_117

    :cond_123
    mul-int/lit8 v9, v1, 0x1e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    int-to-char v1, v9

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11d

    :cond_12f
    mul-int/lit8 v9, v1, 0x1e

    add-int/lit8 v9, v9, 0x1d

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4c

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_6c
        :pswitch_b1
    .end packed-switch
.end method

.method private static getBytesForMessage(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static isAlphaLower(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x61

    if-ge p0, v0, :cond_c

    :goto_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    goto :goto_a
.end method

.method private static isAlphaUpper(C)Z
    .registers 2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0x41

    if-ge p0, v0, :cond_c

    :goto_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    goto :goto_a
.end method

.method private static isDigit(C)Z
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

.method private static isMixed(C)Z
    .registers 3

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private static isPunctuation(C)Z
    .registers 3

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private static isText(C)Z
    .registers 2

    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    if-ge p0, v0, :cond_14

    :goto_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_14
    const/16 v0, 0x7e

    if-le p0, v0, :cond_4

    goto :goto_12
.end method
