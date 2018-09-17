.class public Lcom/android/systemui/infinity/fractal/shape/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# static fields
.field public static final GROUP_TOTAL_CNT:I = 0x5

.field public static final IDX_A:I = 0x6

.field public static final IDX_B:I = 0x5

.field public static final IDX_END_TIME:I = 0x9

.field public static final IDX_G:I = 0x4

.field public static final IDX_GROUP:I = 0x7

.field public static final IDX_R:I = 0x3

.field public static final IDX_START_TIME:I = 0x8

.field public static final IDX_X:I = 0x0

.field public static final IDX_Y:I = 0x1

.field public static final IDX_Z:I = 0x2

.field public static final TOTAL_ELEMENT_SIZE:I = 0xa


# instance fields
.field public faceIndexData:[S

.field public faceVertexData:[F

.field public groupAlpha:[F

.field public totalFaceIndexCnt:I

.field public totalVertexCnt:I

.field public vertexData:[F

.field public vertexIndexMap:[[S


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xc8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->setGroupAlpha(F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 3

    const/16 v0, 0xc8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->copyFrom(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    iget v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    iget-object v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    iget-object v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    iget-object v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    iget-object v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v0, p1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    return-void
.end method

.method public setGroupAlpha(F)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method
