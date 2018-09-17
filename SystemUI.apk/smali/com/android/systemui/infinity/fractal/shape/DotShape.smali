.class public Lcom/android/systemui/infinity/fractal/shape/DotShape;
.super Lcom/android/systemui/infinity/fractal/shape/Shape;
.source "DotShape.java"


# static fields
.field private static final HANDLE_DOT_SIZE_RATIO:Ljava/lang/String; = "uPointSizeRatio"

.field private static final HANDLE_NEAR:Ljava/lang/String; = "uNear"


# instance fields
.field private mDotSizeRatio:F

.field private mDotSizeRatioHandle:I

.field private mNear:F

.field private mNearHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/android/systemui/infinity/fractal/shape/ShapeData;F)V
    .registers 8

    invoke-direct {p0, p1, p2, p4}, Lcom/android/systemui/infinity/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v1, "uNear"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mNearHandle:I

    iput p3, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mNear:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v1, "uPointSizeRatio"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mDotSizeRatioHandle:I

    iput p5, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mDotSizeRatio:F

    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/infinity/fractal/shape/Shape;->drawElementInner()V

    iget v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mDotSizeRatioHandle:I

    iget v1, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mDotSizeRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mNearHandle:I

    iget v1, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mNear:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    invoke-static {v2, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method protected generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 5

    new-instance v0, Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mContext:Landroid/content/Context;

    const v2, 0x7f110002

    const v3, 0x7f110001

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public setDotSizeRatio(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mDotSizeRatio:F

    return-void
.end method

.method public setNear(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/shape/DotShape;->mNear:F

    return-void
.end method
