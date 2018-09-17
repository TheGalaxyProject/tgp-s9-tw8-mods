.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_f

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-lt p2, v0, :cond_6

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/google/zxing/common/BitMatrix;

    if-eqz v2, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-eq v2, v3, :cond_10

    :cond_e
    return v4

    :cond_f
    return v4

    :cond_10
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_e

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    iget-object v3, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    if-ne v2, v3, :cond_e

    const/4 v0, 0x0

    :goto_25
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2c

    const/4 v2, 0x1

    return v2

    :cond_2c
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v0

    iget-object v3, v1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_39

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_39
    return v4
.end method

.method public get(II)Z
    .registers 7

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v2, p2

    shr-int/lit8 v3, p1, 0x5

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v0

    and-int/lit8 v3, p1, 0x1f

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int v2, v5, v6

    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int v2, v5, v6

    mul-int/lit8 v5, v2, 0x1f

    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int v2, v5, v6

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_18
    if-lt v3, v4, :cond_1b

    return v2

    :cond_1b
    aget v1, v0, v3

    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method public set(II)V
    .registers 8

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v1, p2

    shr-int/lit8 v2, p1, 0x5

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public setRegion(IIII)V
    .registers 15

    const/4 v9, 0x1

    if-gez p2, :cond_c

    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Left and top must be nonnegative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    if-ltz p1, :cond_3

    if-ge p4, v9, :cond_19

    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Height and width must be at least 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_19
    if-lt p3, v9, :cond_10

    add-int v2, p1, p3

    add-int v0, p2, p4

    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-le v0, v5, :cond_2c

    :cond_23
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The region must fit inside the matrix"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2c
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-gt v2, v5, :cond_23

    move v4, p2

    :goto_31
    if-lt v4, v0, :cond_34

    return-void

    :cond_34
    iget v5, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v1, v4, v5

    move v3, p1

    :goto_39
    if-lt v3, v2, :cond_3e

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_3e
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    shr-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v1

    aget v7, v5, v6

    and-int/lit8 v8, v3, 0x1f

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_39
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-lt v2, v3, :cond_16

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-lt v1, v3, :cond_23

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_32

    const-string/jumbo v3, "  "

    :goto_2c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_32
    const-string/jumbo v3, "X "

    goto :goto_2c
.end method
