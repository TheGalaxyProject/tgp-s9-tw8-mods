.class public Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;
.super Lcom/android/systemui/infinity/wbgl/WbglWorld;
.source "WbglWorldOrthographic.java"


# instance fields
.field private mOrghoMatrix:[F

.field private mWorldMatrix:[F


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/WbglWorld;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->init(II)V

    return-void
.end method

.method private init(II)V
    .registers 12

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v6, -0x41000000    # -0.5f

    move v7, p1

    if-le p2, p1, :cond_8

    move v7, p2

    :cond_8
    int-to-float v5, p1

    mul-float v1, v6, v5

    int-to-float v5, p1

    mul-float v2, v8, v5

    int-to-float v5, p2

    mul-float v3, v6, v5

    int-to-float v5, p2

    mul-float v4, v8, v5

    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    int-to-float v5, v7

    neg-int v6, v7

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mOrghoMatrix:[F

    const/4 v5, 0x6

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    const/4 v6, 0x2

    aput v3, v5, v6

    const/4 v6, 0x3

    aput v4, v5, v6

    int-to-float v6, v7

    const/4 v8, 0x4

    aput v6, v5, v8

    neg-int v6, v7

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v5, v8

    iput-object v5, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mCoordinates:[F

    return-void
.end method


# virtual methods
.method public getCoordinates()[F
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mCoordinates:[F

    return-object v0
.end method

.method public setupMatrices(I)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mModelMatrix:[F

    iget-object v4, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mOrghoMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorldOrthographic;->mWorldMatrix:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_19
    return-void
.end method
