.class public Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field isNegative:Z

.field pos:I

.field value:J


# direct methods
.method public constructor <init>(ZJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/caverock/androidsvg/IntegerParser;->isNegative:Z

    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iput p4, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return-void
.end method

.method public static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .registers 11

    move v1, p1

    const-wide/16 v2, 0x0

    if-ge p1, p2, :cond_10

    :goto_5
    if-lt v1, p2, :cond_12

    :cond_7
    if-eq v1, p1, :cond_61

    new-instance v4, Lcom/caverock/androidsvg/IntegerParser;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    return-object v4

    :cond_10
    const/4 v4, 0x0

    return-object v4

    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ge v0, v4, :cond_3f

    :cond_1a
    const/16 v4, 0x41

    if-ge v0, v4, :cond_4c

    :cond_1e
    const/16 v4, 0x61

    if-lt v0, v4, :cond_7

    const/16 v4, 0x66

    if-gt v0, v4, :cond_7

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x61

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    :goto_31
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5c

    const/4 v4, 0x1

    :goto_3b
    if-nez v4, :cond_5e

    const/4 v4, 0x0

    return-object v4

    :cond_3f
    const/16 v4, 0x39

    if-gt v0, v4, :cond_1a

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x30

    int-to-long v6, v6

    add-long v2, v4, v6

    goto :goto_31

    :cond_4c
    const/16 v4, 0x46

    if-gt v0, v4, :cond_1e

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x41

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    goto :goto_31

    :cond_5c
    const/4 v4, 0x0

    goto :goto_3b

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_61
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public getEndPos()I
    .registers 2

    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .registers 3

    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
