.class public Lcom/android/systemui/infinity/fractal/shape/ShapeDataGenerator;
.super Ljava/lang/Object;
.source "ShapeDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateVertexData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;IFFF)Lcom/android/systemui/infinity/fractal/shape/ShapeData;
    .registers 18

    new-instance v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-direct {v8}, Lcom/android/systemui/infinity/fractal/shape/ShapeData;-><init>()V

    if-nez p0, :cond_8

    return-object v8

    :cond_8
    iput p1, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    iput p1, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    iget v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    mul-int/lit8 v9, v9, 0xa

    new-array v9, v9, [F

    iput-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    iget v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    new-array v9, v9, [S

    iput-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, p2, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v1, p3, v9

    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Random;-><init>(J)V

    const/high16 v9, 0x40000000    # 2.0f

    div-float v6, p4, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float v4, p4, v9

    const/4 v3, 0x0

    :goto_34
    if-ge v3, p1, :cond_c8

    iget v9, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    mul-int/lit8 v0, v9, 0xa

    mul-int/lit8 v5, v3, 0xa

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x0

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v11

    mul-float/2addr v11, p2

    sub-float/2addr v11, v2

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v11

    mul-float v11, v11, p3

    sub-float/2addr v11, v1

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v11

    mul-float/2addr v11, v6

    add-float/2addr v11, v4

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x3

    iget-object v11, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v0, 0x3

    aget v11, v11, v12

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x4

    iget-object v11, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v0, 0x4

    aget v11, v11, v12

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x5

    iget-object v11, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v0, 0x5

    aget v11, v11, v12

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x6

    iget-object v11, p0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v0, 0x6

    aget v11, v11, v12

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x7

    const/4 v11, 0x5

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x8

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v11

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v12

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v10, v5, 0x9

    iget-object v11, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    add-int/lit8 v12, v5, 0x8

    aget v11, v11, v12

    const v12, 0x3f19999a    # 0.6f

    add-float/2addr v11, v12

    aput v11, v9, v10

    iget-object v9, v8, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    int-to-short v10, v3

    aput-short v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_34

    :cond_c8
    return-object v8
.end method

.method public static parseData(Landroid/content/Context;I[[IF)Lcom/android/systemui/infinity/fractal/shape/ShapeData;
    .registers 47

    const-string/jumbo v39, "InfinityWallpaper"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "parse data start shapeSizeRatio = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v24

    new-instance v23, Ljava/io/InputStreamReader;

    invoke-direct/range {v23 .. v24}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/io/BufferedReader;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-direct/range {v28 .. v28}, Lcom/android/systemui/infinity/fractal/shape/ShapeData;-><init>()V

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1b0

    const-string/jumbo v39, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x4

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_6e

    const-string/jumbo v39, "v"

    const/16 v40, 0x0

    aget-object v40, v29, v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_eb

    const/16 v39, 0x1

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    mul-float v39, v39, p3

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v39, 0x2

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    mul-float v39, v39, p3

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v39, 0x3

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    mul-float v39, v39, p3

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    goto :goto_6e

    :catch_e7
    move-exception v13

    const/16 v39, 0x0

    return-object v39

    :cond_eb
    const-string/jumbo v39, "f"

    const/16 v40, 0x0

    aget-object v40, v29, v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_124

    const/16 v17, 0x1

    :goto_fa
    const/16 v39, 0x4

    move/from16 v0, v17

    move/from16 v1, v39

    if-ge v0, v1, :cond_6e

    aget-object v39, v29, v17

    invoke-static/range {v39 .. v39}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v39

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    add-int/lit8 v17, v17, 0x1

    goto :goto_fa

    :cond_124
    const-string/jumbo v39, "c"

    const/16 v40, 0x0

    aget-object v40, v29, v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_187

    const/16 v39, 0x1

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    const/high16 v40, 0x437f0000    # 255.0f

    div-float v39, v39, v40

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v39, 0x2

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    const/high16 v40, 0x437f0000    # 255.0f

    div-float v39, v39, v40

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v39, 0x3

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    const/high16 v40, 0x437f0000    # 255.0f

    div-float v39, v39, v40

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v39, 0x4

    aget-object v39, v29, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v39

    const/high16 v40, 0x437f0000    # 255.0f

    div-float v39, v39, v40

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6e

    :cond_187
    const-string/jumbo v39, "g"

    const/16 v40, 0x0

    aget-object v40, v29, v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6e

    const/16 v17, 0x1

    :goto_196
    const/16 v39, 0x4

    move/from16 v0, v17

    move/from16 v1, v39

    if-ge v0, v1, :cond_6e

    aget-object v39, v29, v17

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_196

    :cond_1b0
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_1b3} :catch_e7

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0xa

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    move/from16 v39, v0

    mul-int/lit8 v39, v39, 0xa

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    move/from16 v39, v0

    move/from16 v0, v39

    new-array v0, v0, [S

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    new-instance v27, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v40

    move-object/from16 v0, v27

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v17, 0x0

    :goto_1fc
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v39, v0

    move/from16 v0, v17

    move/from16 v1, v39

    if-ge v0, v1, :cond_284

    mul-int/lit8 v38, v17, 0x3

    mul-int/lit8 v31, v17, 0xa

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v40, v0

    add-int/lit8 v41, v31, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    aput v39, v40, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v40, v0

    add-int/lit8 v41, v31, 0x1

    add-int/lit8 v39, v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    aput v39, v40, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v40, v0

    add-int/lit8 v41, v31, 0x2

    add-int/lit8 v39, v38, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    aput v39, v40, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x8

    invoke-virtual/range {v27 .. v27}, Ljava/util/Random;->nextFloat()F

    move-result v41

    const v42, 0x3ecccccd    # 0.4f

    mul-float v41, v41, v42

    aput v41, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x9

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v41, v0

    add-int/lit8 v42, v31, 0x8

    aget v41, v41, v42

    const v42, 0x3f19999a    # 0.6f

    add-float v41, v41, v42

    aput v41, v39, v40

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1fc

    :cond_284
    if-eqz p2, :cond_2d2

    const/16 v16, 0x0

    :goto_288
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_2d2

    aget-object v21, p2, v16

    const/16 v20, 0x0

    :goto_297
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v20

    move/from16 v1, v39

    if-ge v0, v1, :cond_2cf

    const/16 v32, 0x0

    :goto_2a4
    const/16 v39, 0x3

    move/from16 v0, v32

    move/from16 v1, v39

    if-ge v0, v1, :cond_2cc

    mul-int/lit8 v39, v20, 0x3

    add-int v22, v39, v32

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    move-object/from16 v39, v0

    aget-short v39, v39, v22

    mul-int/lit8 v36, v39, 0xa

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v36, 0x7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v41, v0

    aput v41, v39, v40

    add-int/lit8 v32, v32, 0x1

    goto :goto_2a4

    :cond_2cc
    add-int/lit8 v20, v20, 0x1

    goto :goto_297

    :cond_2cf
    add-int/lit8 v16, v16, 0x1

    goto :goto_288

    :cond_2d2
    const/16 v17, 0x0

    :goto_2d4
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    move/from16 v39, v0

    move/from16 v0, v17

    move/from16 v1, v39

    if-ge v0, v1, :cond_3f2

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Short;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Short;->shortValue()S

    move-result v39

    add-int/lit8 v32, v39, -0x1

    mul-int/lit8 v38, v32, 0x3

    mul-int/lit8 v31, v32, 0xa

    mul-int/lit8 v14, v17, 0xa

    const/4 v10, -0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v39

    move/from16 v0, v17

    move/from16 v1, v39

    if-ge v0, v1, :cond_30f

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v39

    add-int/lit8 v10, v39, -0x1

    :cond_30f
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceIndexData:[S

    move-object/from16 v39, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v40, v0

    aput-short v40, v39, v17

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v40, v0

    add-int/lit8 v41, v14, 0x0

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    aput v39, v40, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v40, v0

    add-int/lit8 v41, v14, 0x1

    add-int/lit8 v39, v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    aput v39, v40, v41

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v40, v0

    add-int/lit8 v41, v14, 0x2

    add-int/lit8 v39, v38, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v39

    aput v39, v40, v41

    if-ltz v10, :cond_3ee

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v26

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Float;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x6

    aget v39, v39, v40

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_3c6

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x3

    aput v26, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x4

    aput v15, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x5

    aput v5, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v31, 0x6

    aput v4, v39, v40

    :cond_3c6
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v14, 0x3

    aput v26, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v14, 0x4

    aput v15, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v14, 0x5

    aput v5, v39, v40

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->faceVertexData:[F

    move-object/from16 v39, v0

    add-int/lit8 v40, v14, 0x6

    aput v4, v39, v40

    :cond_3ee
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2d4

    :cond_3f2
    sget-object v39, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v41, v0

    const/16 v42, 0x0

    aput v41, v40, v42

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalVertexCnt:I

    move/from16 v41, v0

    const/16 v42, 0x1

    aput v41, v40, v42

    invoke-static/range {v39 .. v40}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [[S

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    move/from16 v39, v0

    div-int/lit8 v30, v39, 0x3

    const/16 v17, 0x0

    :goto_426
    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_4aa

    mul-int/lit8 v19, v17, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Short;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Short;->shortValue()S

    move-result v39

    add-int/lit8 v33, v39, -0x1

    add-int/lit8 v39, v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Short;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Short;->shortValue()S

    move-result v39

    add-int/lit8 v34, v39, -0x1

    add-int/lit8 v39, v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Short;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Short;->shortValue()S

    move-result v39

    add-int/lit8 v35, v39, -0x1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v39, v0

    aget-object v39, v39, v33

    const/16 v40, 0x1

    aput-short v40, v39, v34

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v39, v0

    aget-object v39, v39, v33

    const/16 v40, 0x1

    aput-short v40, v39, v35

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v39, v0

    aget-object v39, v39, v34

    const/16 v40, 0x1

    aput-short v40, v39, v33

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v39, v0

    aget-object v39, v39, v34

    const/16 v40, 0x1

    aput-short v40, v39, v35

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v39, v0

    aget-object v39, v39, v35

    const/16 v40, 0x1

    aput-short v40, v39, v33

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->vertexIndexMap:[[S

    move-object/from16 v39, v0

    aget-object v39, v39, v35

    const/16 v40, 0x1

    aput-short v40, v39, v34

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_426

    :cond_4aa
    const-string/jumbo v39, "InfinityWallpaper"

    const-string/jumbo v40, "parse data end"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v28
.end method
