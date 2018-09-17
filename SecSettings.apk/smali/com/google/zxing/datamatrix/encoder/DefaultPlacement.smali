.class public Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
.super Ljava/lang/Object;
.source "DefaultPlacement.java"


# instance fields
.field private final bits:[B

.field private final codewords:Ljava/lang/CharSequence;

.field private final numcols:I

.field private final numrows:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    mul-int v0, p2, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method private corner1(I)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v4, p1, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x8

    invoke-direct {p0, v5, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private corner2(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x8

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private corner3(I)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2, p1, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x8

    invoke-direct {p0, v5, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private corner4(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x3

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x4

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x5

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x6

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x8

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method

.method private module(IIII)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_17

    :goto_4
    if-ltz p2, :cond_24

    :goto_6
    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;

    invoke-interface {v3, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    rsub-int/lit8 v3, p4, 0x8

    shl-int v3, v2, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_31

    :goto_13
    invoke-virtual {p0, p2, p1, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V

    return-void

    :cond_17
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/2addr p1, v3

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr p2, v3

    goto :goto_4

    :cond_24
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/2addr p2, v3

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v3, v3, 0x4

    rem-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr p1, v3

    goto :goto_6

    :cond_31
    move v1, v2

    goto :goto_13
.end method

.method private utah(III)V
    .registers 7

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p2, -0x2

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method


# virtual methods
.method public final getBit(II)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    aget-byte v1, v1, v2

    if-eq v1, v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    return v0
.end method

.method final hasBit(II)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    aget-byte v1, v1, v2

    if-gez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public final place()V
    .registers 8

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v0, 0x0

    :cond_4
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-eq v3, v4, :cond_4f

    :cond_8
    :goto_8
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v4, v4, -0x2

    if-eq v3, v4, :cond_58

    :cond_e
    :goto_e
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v4, v4, -0x2

    if-eq v3, v4, :cond_67

    :cond_14
    :goto_14
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v4, v4, 0x4

    if-eq v3, v4, :cond_77

    :cond_1a
    :goto_1a
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-lt v3, v4, :cond_87

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v0, v0, 0x2

    if-gez v3, :cond_96

    :cond_24
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x3

    move v2, v1

    :goto_29
    if-gez v3, :cond_9b

    :cond_2b
    move v1, v2

    :goto_2c
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, -0x2

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-lt v3, v4, :cond_ab

    :cond_34
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-lt v3, v4, :cond_4

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-lt v0, v4, :cond_4

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z

    move-result v4

    if-eqz v4, :cond_b0

    :goto_4e
    return-void

    :cond_4f
    if-nez v0, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner1(I)V

    move v1, v2

    goto :goto_8

    :cond_58
    if-nez v0, :cond_e

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    rem-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_e

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner2(I)V

    move v1, v2

    goto :goto_e

    :cond_67
    if-nez v0, :cond_14

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    rem-int/lit8 v4, v4, 0x8

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner3(I)V

    move v1, v2

    goto :goto_14

    :cond_77
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1a

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1a

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->corner4(I)V

    move v1, v2

    goto :goto_1a

    :cond_87
    if-ltz v0, :cond_1e

    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z

    move-result v4

    if-nez v4, :cond_1e

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v3, v0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move v1, v2

    goto :goto_1e

    :cond_96
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-ge v0, v4, :cond_24

    goto :goto_1a

    :cond_9b
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-ge v0, v4, :cond_2b

    invoke-virtual {p0, v0, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->hasBit(II)Z

    move-result v4

    if-nez v4, :cond_2b

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v3, v0, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    goto :goto_2c

    :cond_ab
    if-ltz v0, :cond_34

    move v2, v1

    goto/16 :goto_29

    :cond_b0
    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    add-int/lit8 v4, v4, -0x2

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->setBit(IIZ)V

    goto :goto_4e
.end method

.method final setBit(IIZ)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int/2addr v2, p2

    add-int/2addr v2, p1

    if-nez p3, :cond_d

    :goto_9
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-void

    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method
