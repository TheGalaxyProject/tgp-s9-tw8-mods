.class public Lcom/android/systemui/infinity/fractal/shape/Shape;
.super Lcom/android/systemui/infinity/wbgl/object/WbglShape;
.source "Shape.java"


# static fields
.field protected static final HANDLE_GROUP_ALPHA:Ljava/lang/String; = "uGroupAlpha"

.field protected static final HANDLE_OVER_BRIGHTNESS:Ljava/lang/String; = "uOverBrightness"


# instance fields
.field protected mGroupAlphaHandle:I

.field protected mOverBrightness:F

.field protected mOverBrightnessHandle:I

.field protected mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

.field protected mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/infinity/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;I)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mOverBrightness:F

    iput p4, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mType:I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v1, "uGroupAlpha"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mGroupAlphaHandle:I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v1, "uOverBrightness"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mOverBrightnessHandle:I

    invoke-virtual {p0, p3}, Lcom/android/systemui/infinity/fractal/shape/Shape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .registers 5

    iget v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mGroupAlphaHandle:I

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mOverBrightnessHandle:I

    iget v1, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mOverBrightness:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method protected generateElementNameList()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "aPosition"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "aColor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "aGroup"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "aStartTime"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "aEndTime"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected generateElementSizeList()[I
    .registers 4

    const/4 v2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x4

    filled-new-array {v0, v1, v2, v2, v2}, [I

    move-result-object v0

    return-object v0
.end method

.method protected generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public setOverBrightness(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mOverBrightness:F

    return-void
.end method

.method public updateGroup([F)V
    .registers 6

    if-eqz p1, :cond_9

    array-length v2, p1

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v3, v3, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    if-eq v2, v3, :cond_a

    :cond_9
    return-void

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v2, v2, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    if-ge v1, v2, :cond_1f

    mul-int/lit8 v2, v1, 0xa

    add-int/lit8 v0, v2, 0x7

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    aget v3, p1, v1

    invoke-virtual {v2, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/shape/Shape;->generateIndexBuffer([S)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/Shape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/shape/Shape;->generateVertexBuffer([F)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    return-void
.end method
