.class public Lcom/caverock/androidsvg/SVG$PathDefinition;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PathDefinition"
.end annotation


# instance fields
.field private commands:[B

.field private commandsLength:I

.field private coords:[F

.field private coordsLength:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iput v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iput v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    return-void
.end method

.method private addCommand(B)V
    .registers 6

    const/4 v3, 0x0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v2, v2

    if-eq v1, v2, :cond_14

    :goto_8
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    return-void

    :cond_14
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    goto :goto_8
.end method

.method private coordsEnsure(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v1, v1

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/2addr v2, p1

    if-lt v1, v2, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    goto :goto_9
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .registers 12

    const/4 v1, 0x0

    if-nez p4, :cond_45

    move v2, v1

    :goto_4
    or-int/lit8 v2, v2, 0x4

    if-nez p5, :cond_47

    :goto_8
    or-int v0, v2, v1

    int-to-byte v1, v0

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v1, v2

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p7, v1, v2

    return-void

    :cond_45
    const/4 v2, 0x2

    goto :goto_4

    :cond_47
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public close()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .registers 10

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p5, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v0, v1

    return-void
.end method

.method public enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V
    .registers 16

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_4
    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-lt v9, v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    aget-byte v8, v0, v9

    packed-switch v8, :pswitch_data_b0

    :pswitch_10
    and-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_a9

    move v4, v12

    :goto_15
    and-int/lit8 v0, v8, 0x1

    if-nez v0, :cond_ac

    move v5, v12

    :goto_1a
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v1, v0, v10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v2, v0, v11

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v3, v0, v10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v6, v0, v11

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v7, v0, v10

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/caverock/androidsvg/SVG$PathInterface;->arcTo(FFFZZFF)V

    move v10, v11

    :goto_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :pswitch_40
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v0, v0, v10

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v1, v1, v11

    invoke-interface {p1, v0, v1}, Lcom/caverock/androidsvg/SVG$PathInterface;->moveTo(FF)V

    goto :goto_3d

    :pswitch_50
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v0, v0, v10

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v1, v1, v11

    invoke-interface {p1, v0, v1}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    goto :goto_3d

    :pswitch_60
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v1, v0, v10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v2, v0, v11

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v3, v0, v10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v4, v0, v11

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v5, v0, v10

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v6, v0, v11

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    goto :goto_3d

    :pswitch_89
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v0, v0, v10

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v1, v1, v11

    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v11, v10, 0x1

    aget v2, v2, v10

    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v10, v11, 0x1

    aget v3, v3, v11

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVG$PathInterface;->quadTo(FFFF)V

    goto :goto_3d

    :pswitch_a5
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$PathInterface;->close()V

    goto :goto_3d

    :cond_a9
    move v4, v13

    goto/16 :goto_15

    :cond_ac
    move v5, v13

    goto/16 :goto_1a

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_50
        :pswitch_60
        :pswitch_89
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_a5
    .end packed-switch
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public lineTo(FF)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    return-void
.end method

.method public moveTo(FF)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    return-void
.end method

.method public quadTo(FFFF)V
    .registers 8

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v1

    return-void
.end method
