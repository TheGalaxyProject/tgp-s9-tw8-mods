.class public Lcom/android/systemui/infinity/fractal/shape/LineShape;
.super Lcom/android/systemui/infinity/fractal/shape/Shape;
.source "LineShape.java"


# static fields
.field public static final LINE_TYPE_LONG:I = 0x1

.field public static final LINE_TYPE_SHORT:I = 0x0

.field private static final SHORT_LINE_LENGTH:F = 50.0f

.field private static final SHORT_LINE_MIN_DISTANCE:F = 100.0f


# instance fields
.field private mCurLineLength:F

.field private mIndexData:[S

.field private mLineMinDistance:F

.field private mVertexData:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/infinity/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mCurLineLength:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mLineMinDistance:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/infinity/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;I)V

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mCurLineLength:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mLineMinDistance:F

    return-void
.end method

.method private generateLongLineData()V
    .registers 9

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v4, v4, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    iput-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mVertexData:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v4, v4, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [S

    iput-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v4, v4, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    div-int/lit8 v3, v4, 0x3

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_6e

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v2, v0, 0x6

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    iget-object v5, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v5, v5, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    aget-short v5, v5, v1

    aput-short v5, v4, v2

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v6, v6, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    add-int/lit8 v7, v1, 0x1

    aget-short v6, v6, v7

    aput-short v6, v4, v5

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    add-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v6, v6, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    add-int/lit8 v7, v1, 0x1

    aget-short v6, v6, v7

    aput-short v6, v4, v5

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    add-int/lit8 v5, v2, 0x3

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v6, v6, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    add-int/lit8 v7, v1, 0x2

    aget-short v6, v6, v7

    aput-short v6, v4, v5

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    add-int/lit8 v5, v2, 0x4

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v6, v6, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    add-int/lit8 v7, v1, 0x2

    aget-short v6, v6, v7

    aput-short v6, v4, v5

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    add-int/lit8 v5, v2, 0x5

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v6, v6, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    aget-short v6, v6, v1

    aput-short v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_6e
    return-void
.end method

.method private generateShortLineData()V
    .registers 25

    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_284

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v17

    rem-int/lit8 v17, v17, 0x5

    if-eqz v17, :cond_2d

    :cond_2a
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    :cond_2d
    mul-int/lit8 v13, v15, 0xa

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v13, 0x0

    aget v17, v17, v18

    const/16 v18, 0x0

    aput v17, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v13, 0x1

    aget v17, v17, v18

    const/16 v18, 0x1

    aput v17, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v13, 0x2

    aget v17, v17, v18

    const/16 v18, 0x2

    aput v17, v16, v18

    const/4 v11, 0x0

    :goto_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v17, v0

    aget-object v17, v17, v15

    aget-short v17, v17, v11

    if-nez v17, :cond_99

    :cond_96
    :goto_96
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    :cond_99
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v17

    rem-int/lit8 v17, v17, 0x4

    if-nez v17, :cond_96

    mul-int/lit8 v10, v11, 0xa

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x0

    aget v17, v17, v18

    const/16 v18, 0x0

    aput v17, v12, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x1

    aget v17, v17, v18

    const/16 v18, 0x1

    aput v17, v12, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x2

    aget v17, v17, v18

    const/16 v18, 0x2

    aput v17, v12, v18

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [F

    const/16 v17, 0x0

    aget v17, v12, v17

    const/16 v18, 0x0

    aget v18, v16, v18

    sub-float v17, v17, v18

    const/16 v18, 0x0

    aput v17, v14, v18

    const/16 v17, 0x1

    aget v17, v12, v17

    const/16 v18, 0x1

    aget v18, v16, v18

    sub-float v17, v17, v18

    const/16 v18, 0x1

    aput v17, v14, v18

    const/16 v17, 0x2

    aget v17, v12, v17

    const/16 v18, 0x2

    aget v18, v16, v18

    sub-float v17, v17, v18

    const/16 v18, 0x2

    aput v17, v14, v18

    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    const/16 v17, 0x2

    aget v17, v14, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mLineMinDistance:F

    move/from16 v17, v0

    cmpg-float v17, v3, v17

    if-ltz v17, :cond_96

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mCurLineLength:F

    move/from16 v17, v0

    div-float v2, v17, v3

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v5, v0, [F

    const/16 v17, 0x0

    aget v17, v16, v17

    const/16 v18, 0x0

    aget v18, v14, v18

    mul-float v18, v18, v2

    add-float v17, v17, v18

    const/16 v18, 0x0

    aput v17, v5, v18

    const/16 v17, 0x1

    aget v17, v16, v17

    const/16 v18, 0x1

    aget v18, v14, v18

    mul-float v18, v18, v2

    add-float v17, v17, v18

    const/16 v18, 0x1

    aput v17, v5, v18

    const/16 v17, 0x2

    aget v17, v16, v17

    const/16 v18, 0x2

    aget v18, v14, v18

    mul-float v18, v18, v2

    add-float v17, v17, v18

    const/16 v18, 0x2

    aput v17, v5, v18

    const/4 v4, 0x0

    :goto_196
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v4, v0, :cond_1b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int v18, v13, v4

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_196

    :cond_1b8
    const/16 v17, 0x0

    aget v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    aget v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x2

    aget v17, v5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x3

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x4

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x5

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x7

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x8

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v10, 0x9

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_96

    :cond_284
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mVertexData:[F

    const/4 v6, 0x0

    :goto_295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mVertexData:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_2b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mVertexData:[F

    move-object/from16 v18, v0

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    aput v17, v18, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_295

    :cond_2b9
    new-array v0, v8, [S

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    const/4 v6, 0x0

    :goto_2c4
    if-ge v6, v8, :cond_2d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    move-object/from16 v17, v0

    int-to-short v0, v6

    move/from16 v18, v0

    aput-short v18, v17, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c4

    :cond_2d4
    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .registers 5

    invoke-super {p0}, Lcom/android/systemui/infinity/fractal/shape/Shape;->drawElementInner()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    array-length v0, v0

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v2, 0x1

    const/16 v3, 0x1403

    invoke-static {v2, v0, v3, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 5

    new-instance v0, Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mContext:Landroid/content/Context;

    const v2, 0x7f110008

    const v3, 0x7f110007

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public setShapeSize(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/fractal/shape/Shape;->setShapeSize(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mShapeSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44870000    # 1080.0f

    div-float v0, v1, v2

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mCurLineLength:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mLineMinDistance:F

    iget v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->generateLongLineData()V

    :goto_1f
    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mIndexData:[S

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->generateIndexBuffer([S)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/shape/LineShape;->mVertexData:[F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->generateVertexBuffer([F)Lcom/android/systemui/infinity/wbgl/object/WbglShape;

    return-void

    :cond_2a
    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->generateShortLineData()V

    goto :goto_1f
.end method
