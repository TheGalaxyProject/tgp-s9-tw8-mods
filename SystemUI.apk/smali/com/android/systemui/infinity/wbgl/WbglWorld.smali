.class public abstract Lcom/android/systemui/infinity/wbgl/WbglWorld;
.super Ljava/lang/Object;
.source "WbglWorld.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final FAR:I = 0x5

.field public static final LEFT:I = 0x0

.field public static final NEAR:I = 0x4

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x3


# instance fields
.field protected mCoordinates:[F

.field protected mModelMatrix:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorld;->mModelMatrix:[F

    return-void
.end method


# virtual methods
.method public getCoordinates()[F
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorld;->mCoordinates:[F

    return-object v0
.end method

.method public rotate(FFFF)V
    .registers 11

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public scale(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setIdentity()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public abstract setupMatrices(I)V
.end method

.method public translate(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglWorld;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
