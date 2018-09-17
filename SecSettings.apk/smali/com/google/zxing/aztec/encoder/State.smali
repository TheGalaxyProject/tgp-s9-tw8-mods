.class final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field private final binaryShiftByteCount:I

.field private final bitCount:I

.field private final mode:I

.field private final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/Token;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    return-void
.end method


# virtual methods
.method addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .registers 11

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_38

    :cond_c
    sget-object v6, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    aget-object v6, v6, v3

    aget v2, v6, v8

    const v6, 0xffff

    and-int/2addr v6, v2

    shr-int/lit8 v7, v2, 0x10

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v5

    shr-int/lit8 v6, v2, 0x10

    add-int/2addr v0, v6

    const/4 v3, 0x0

    :goto_20
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v6, :cond_3e

    :cond_24
    const/16 v1, 0x12

    :goto_26
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    add-int/lit8 v6, v6, 0x1

    add-int v7, v0, v1

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    iget v6, v4, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v7, 0x81e

    if-eq v6, v7, :cond_50

    :goto_37
    return-object v4

    :cond_38
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_c

    goto :goto_20

    :cond_3e
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_24

    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_4d

    const/16 v1, 0x8

    goto :goto_26

    :cond_4d
    const/16 v1, 0x9

    goto :goto_26

    :cond_50
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v6}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    goto :goto_37
.end method

.method endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .registers 7

    const/4 v4, 0x0

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Token;->addBinaryShift(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/aztec/encoder/State;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v1

    :cond_1b
    return-object p0
.end method

.method getBinaryShiftByteCount()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    return v0
.end method

.method getBitCount()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    return v0
.end method

.method getMode()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    return v0
.end method

.method isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .registers 7

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v3, v3, v4

    iget v4, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x10

    add-int v0, v2, v3

    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-gtz v2, :cond_1a

    :goto_15
    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    if-le v0, v2, :cond_28

    :goto_19
    return v1

    :cond_1a
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v2, :cond_21

    :cond_1e
    add-int/lit8 v0, v0, 0xa

    goto :goto_15

    :cond_21
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iget v3, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-gt v2, v3, :cond_1e

    goto :goto_15

    :cond_28
    const/4 v1, 0x1

    goto :goto_19
.end method

.method latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .registers 10

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-ne p1, v4, :cond_19

    :goto_8
    const/4 v4, 0x2

    if-eq p1, v4, :cond_2f

    const/4 v2, 0x5

    :goto_c
    invoke-virtual {v3, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v3

    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    add-int v5, v0, v2

    const/4 v6, 0x0

    invoke-direct {v4, v3, p1, v6, v5}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v4

    :cond_19
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v5, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v4, v4, v5

    aget v1, v4, p1

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x10

    add-int/2addr v0, v4

    goto :goto_8

    :cond_2f
    const/4 v2, 0x4

    goto :goto_c
.end method

.method shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .registers 9

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    move v0, v2

    :goto_9
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v3, v3, v4

    aget v3, v3, p1

    invoke-virtual {v1, v3, v0}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    new-instance v2, Lcom/google/zxing/aztec/encoder/State;

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x5

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v2

    :cond_27
    const/4 v0, 0x4

    goto :goto_9
.end method

.method toBitArray([B)Lcom/google/zxing/common/BitArray;
    .registers 8

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    array-length v5, p1

    invoke-virtual {p0, v5}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    iget-object v4, v5, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    :goto_c
    if-nez v4, :cond_1e

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_26

    return-object v0

    :cond_1e
    invoke-interface {v3, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/zxing/aztec/encoder/Token;->getPrevious()Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v4

    goto :goto_c

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/Token;

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "%s bits=%d bytes=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
