.class public Lcom/android/systemui/infinity/fractal/shape/RectangleShape;
.super Lcom/android/systemui/infinity/wbgl/object/WbglShape;
.source "RectangleShape.java"


# instance fields
.field protected INDICES:[S

.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->INDICES:[S

    iput p3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mColor:I

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->generateShapeData()V

    return-void

    nop

    :array_12
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method


# virtual methods
.method protected drawElementInner()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/16 v3, 0x1403

    invoke-static {v1, v2, v3, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 5

    new-instance v0, Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mContext:Landroid/content/Context;

    const v2, 0x7f11000c

    const v3, 0x7f11000b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public generateShapeData()V
    .registers 8

    const/high16 v6, 0x437f0000    # 255.0f

    const/16 v3, 0x1c

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    const/4 v4, 0x7

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/16 v4, 0x8

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/16 v4, 0xe

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/16 v4, 0xf

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    const/16 v4, 0x15

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mShapeSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/16 v4, 0x16

    aput v3, v2, v4

    const/4 v0, 0x0

    :goto_4c
    const/4 v3, 0x4

    if-ge v0, v3, :cond_9e

    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x3

    iget v4, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    mul-int/lit8 v5, v0, 0x32

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x3

    aget v4, v2, v3

    div-float/2addr v4, v6

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x4

    iget v4, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    mul-int/lit8 v5, v0, 0x32

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x4

    aget v4, v2, v3

    div-float/2addr v4, v6

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x5

    iget v4, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    mul-int/lit8 v5, v0, 0x32

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x5

    aget v4, v2, v3

    div-float/2addr v4, v6

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_9e
    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->INDICES:[S

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->generateIndexBuffer([S)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    invoke-virtual {p0, v2}, Lcom/android/systemui/infinity/fractal/shape/RectangleShape;->generateVertexBuffer([F)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    return-void
.end method
