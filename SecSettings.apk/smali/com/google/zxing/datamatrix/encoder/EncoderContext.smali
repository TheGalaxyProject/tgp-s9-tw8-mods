.class final Lcom/google/zxing/datamatrix/encoder/EncoderContext;
.super Ljava/lang/Object;
.source "EncoderContext.java"


# instance fields
.field private final codewords:Ljava/lang/StringBuilder;

.field private maxSize:Lcom/google/zxing/Dimension;

.field private minSize:Lcom/google/zxing/Dimension;

.field private final msg:Ljava/lang/String;

.field private newEncoding:I

.field pos:I

.field private shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private skipAtEnd:I

.field private symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/16 v6, 0x3f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v5, "ISO-8859-1"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    array-length v0, v3

    :goto_18
    if-lt v2, v0, :cond_33

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput-object v5, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v5, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    const/4 v5, -0x1

    iput v5, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void

    :cond_33
    aget-byte v5, v3, v2

    and-int/lit16 v5, v5, 0xff

    int-to-char v1, v5

    if-eq v1, v6, :cond_40

    :cond_3a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_40
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getTotalMessageCharCount()I
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getCodewordCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public getCodewords()Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getCurrentChar()C
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNewEncoding()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return v0
.end method

.method public getRemainingCharacters()I
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-object v0
.end method

.method public hasMoreCharacters()Z
    .registers 3

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    move-result v1

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public resetEncoderSignal()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method public resetSymbolInfo()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V
    .registers 3

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    return-void
.end method

.method public setSkipAtEnd(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    return-void
.end method

.method public setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method public signalEncoderChange(I)V
    .registers 2

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method public updateSymbolInfo()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    return-void
.end method

.method public updateSymbolInfo(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    if-nez v0, :cond_12

    :cond_4
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-gt p1, v0, :cond_4

    goto :goto_11
.end method

.method public writeCodeword(C)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeCodewords(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
