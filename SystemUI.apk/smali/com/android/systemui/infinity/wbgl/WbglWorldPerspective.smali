.class public Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;
.super Lcom/android/systemui/infinity/wbgl/WbglWorld;
.source "WbglWorldPerspective.java"


# instance fields
.field private mMVPMatrix:[F

.field private mProjectionMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/16 v1, 0x10

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/WbglWorld;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mViewMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mProjectionMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->init(II)V

    return-void
.end method

.method private init(II)V
    .registers 31

    move/from16 v27, p1

    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_a

    move/from16 v27, p2

    :cond_a
    move/from16 v0, v27

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v27, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    mul-int/lit8 v2, v27, 0x2

    int-to-float v6, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, -0x40800000    # -1.0f

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mViewMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v3, -0x41000000    # -0.5f

    mul-float v18, v3, v2

    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v22, v3, v2

    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, -0x41000000    # -0.5f

    mul-float v15, v3, v2

    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v23, v3, v2

    move/from16 v0, v27

    int-to-float v13, v0

    mul-int/lit8 v2, v27, 0x3

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mProjectionMatrix:[F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v9, v18, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v10, v22, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v11, v15, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v12, v23, v2

    const/4 v8, 0x0

    invoke-static/range {v7 .. v14}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    const/4 v2, 0x6

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v18, v2, v3

    const/4 v3, 0x1

    aput v22, v2, v3

    const/4 v3, 0x2

    aput v15, v2, v3

    const/4 v3, 0x3

    aput v23, v2, v3

    move/from16 v0, v27

    neg-int v3, v0

    int-to-float v3, v3

    const/4 v4, 0x4

    aput v3, v2, v4

    move/from16 v0, v27

    int-to-float v3, v0

    const/4 v4, 0x5

    aput v3, v2, v4

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mCoordinates:[F

    return-void
.end method


# virtual methods
.method public setupMatrices(I)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mViewMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    if-ltz p1, :cond_24

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;->mMVPMatrix:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_24
    return-void
.end method
