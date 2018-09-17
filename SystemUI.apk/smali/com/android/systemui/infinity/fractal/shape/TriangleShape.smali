.class public Lcom/android/systemui/infinity/fractal/shape/TriangleShape;
.super Lcom/android/systemui/infinity/fractal/shape/Shape;
.source "TriangleShape.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/infinity/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .registers 5

    invoke-super {p0}, Lcom/android/systemui/infinity/fractal/shape/Shape;->drawElementInner()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v2, 0x4

    const/16 v3, 0x1403

    invoke-static {v2, v0, v3, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 5

    new-instance v0, Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->mContext:Landroid/content/Context;

    const v2, 0x7f110010

    const v3, 0x7f11000f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->generateIndexBuffer([S)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->generateVertexBuffer([F)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    return-void
.end method
