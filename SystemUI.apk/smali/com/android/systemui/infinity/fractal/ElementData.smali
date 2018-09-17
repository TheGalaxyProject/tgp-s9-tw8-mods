.class public Lcom/android/systemui/infinity/fractal/ElementData;
.super Ljava/lang/Object;
.source "ElementData.java"


# static fields
.field public static final DEFAULT_ROTATION_X:F = 0.0f

.field public static final DEFAULT_ROTATION_Y:F = 35.0f

.field private static final GROUP_ALPHA_CYCLE:F = 15.707964f

.field private static final GROUP_ALPHA_SIN_SHIFT:F = 1.5707964f

.field public static final MAX_RANDOM_ROTATION:F = 5.0f

.field public static final OVER_BRIGHTNESS_DOT:[F

.field public static final OVER_BRIGHTNESS_LINE:[F

.field public static final SCALE:[F


# instance fields
.field public alphaAodBgObjects:F

.field public alphaAodFgObjects:F

.field public alphaGroup1:F

.field public alphaGroup2:F

.field public alphaGroup3:F

.field public alphaGroup4:F

.field public alphaGroup5:F

.field public alphaHomeBg:F

.field public alphaHomeDot:F

.field public alphaHomeLine:F

.field public alphaLockBg:F

.field public alphaLockDot:F

.field public alphaLockFaces:F

.field public alphaLockLine:F

.field public animateStep:F

.field private mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

.field private mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

.field private mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

.field private mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

.field private mContext:Landroid/content/Context;

.field private mGroupData:[[I

.field private mHeight:I

.field private mHomeBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

.field private mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

.field private mHomeBgResId:I

.field private mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

.field private mHomeLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

.field private mLockBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

.field private mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

.field private mLockBgResId:I

.field private mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

.field private mLockFaces:Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

.field private mLockLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

.field private mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

.field private mShapeDataResId:I

.field private mWidth:I

.field private mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

.field public overBrightnessDot:F

.field public overBrightnessLine:F

.field public rotateX:F

.field public rotateY:F

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-array v0, v1, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    return-void

    nop

    :array_18
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3fc00000    # 1.5f
    .end array-data

    :array_24
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;III[[I)V
    .registers 14

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/infinity/fractal/ElementData;-><init>(Landroid/content/Context;III[[III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III[[III)V
    .registers 13

    const/4 v2, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgResId:I

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgResId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    const/high16 v2, 0x420c0000    # 35.0f

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeBg:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeDot:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeLine:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup1:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup2:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup3:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup4:F

    iput v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup5:F

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    iput p3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHeight:I

    iput p4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeDataResId:I

    iput-object p5, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mGroupData:[[I

    iput p6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgResId:I

    iput p7, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgResId:I

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    int-to-float v2, v2

    mul-float v1, v4, v2

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHeight:I

    int-to-float v2, v2

    mul-float v0, v4, v2

    new-instance v2, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;

    iget v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    iget v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHeight:I

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;-><init>(II)V

    iput-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->createShapeData()V

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/infinity/fractal/ElementData;->initElements(FF)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetGroup()V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetProperties()V

    return-void
.end method

.method private drawBackgroundObject(Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;F)V
    .registers 4

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->setGlobalAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->drawElements(Lcom/android/systemui/infinity/wbgl/WbglWorld;)V

    return-void
.end method

.method private drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    return-void
.end method

.method private drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V
    .registers 5

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p1, p2}, Lcom/android/systemui/infinity/fractal/shape/Shape;->setGlobalAlpha(F)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/infinity/fractal/shape/Shape;->setOverBrightness(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/fractal/shape/Shape;->drawElements(Lcom/android/systemui/infinity/wbgl/WbglWorld;)V

    return-void
.end method

.method private getShapeSizeRatio()F
    .registers 5

    const v3, 0x3f23d70a    # 0.64f

    const v0, 0x3f23d70a    # 0.64f

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x44870000    # 1080.0f

    div-float v1, v2, v1

    div-float v0, v3, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_15

    return v0

    :cond_15
    return v3
.end method

.method private initElements(FF)V
    .registers 14

    const v10, 0x7f11000e

    const v9, 0x7f11000d

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "init elements start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    neg-float v0, p1

    float-to-int v0, v0

    float-to-int v1, p2

    float-to-int v4, p1

    neg-float v5, p2

    float-to-int v5, v5

    invoke-direct {v2, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHeight:I

    invoke-direct {v6, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->getCoordinates()[F

    move-result-object v0

    const/4 v1, 0x4

    aget v3, v0, v1

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/infinity/fractal/shape/LineShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getDotRatio()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/android/systemui/infinity/fractal/shape/ShapeData;F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getDotRatio()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/android/systemui/infinity/fractal/shape/ShapeData;F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockFaces:Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getDotRatio()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/android/systemui/infinity/fractal/shape/ShapeData;F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/android/systemui/infinity/fractal/shape/LineShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;I)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgResId:I

    if-ltz v0, :cond_a2

    new-instance v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    const-string/jumbo v1, "Orig"

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgResId:I

    invoke-static {v4, v5}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v6, v6, v1, v4}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    new-instance v0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v10, v9}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;-><init>(Landroid/content/Context;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->addTexture(Lcom/android/systemui/infinity/wbgl/object/WbglTexture;)V

    :cond_a2
    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getDotRatio()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/android/systemui/infinity/fractal/shape/ShapeData;F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    new-instance v0, Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/android/systemui/infinity/fractal/shape/LineShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/systemui/infinity/fractal/shape/ShapeData;I)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgResId:I

    if-ltz v0, :cond_e2

    new-instance v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    const-string/jumbo v1, "Orig"

    iget-object v4, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgResId:I

    invoke-static {v4, v5}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v6, v6, v1, v4}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    new-instance v0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v10, v9}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;-><init>(Landroid/content/Context;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->addTexture(Lcom/android/systemui/infinity/wbgl/object/WbglTexture;)V

    :cond_e2
    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "init elements end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "Clear all data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->clear()V

    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockFaces:Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->clear()V

    :cond_34
    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->clear()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->clear()V

    return-void
.end method

.method public createShapeData()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeDataResId:I

    iget-object v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mGroupData:[[I

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getShapeSizeRatio()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/infinity/fractal/shape/ShapeDataGenerator;->parseData(Landroid/content/Context;I[[IF)Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->getCoordinates()[F

    move-result-object v3

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/16 v4, 0x64

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/systemui/infinity/fractal/shape/ShapeDataGenerator;->generateVertexData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;IFFF)Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    return-void
.end method

.method public drawElements()V
    .registers 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->setIdentity()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/fractal/ElementData;->drawBackgroundObject(Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeBg:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/fractal/ElementData;->drawBackgroundObject(Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->setIdentity()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    iget v3, p0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->scale(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    invoke-virtual {v0, v1, v5, v4, v4}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->rotate(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    invoke-virtual {v0, v1, v4, v5, v4}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->rotate(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockFaces:Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeDot:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeLine:F

    iget v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->drawShape(Lcom/android/systemui/infinity/fractal/shape/Shape;FF)V

    return-void
.end method

.method public getDotRatio()F
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getShapeSizeRatio()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public resetGroup()V
    .registers 1

    return-void
.end method

.method public resetProperties()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "InfinityWallpaper"

    const-string/jumbo v1, "resetProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->SCALE:[F

    aget v0, v0, v3

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetRotation()V

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_DOT:[F

    aget v0, v0, v3

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    sget-object v0, Lcom/android/systemui/infinity/fractal/ElementData;->OVER_BRIGHTNESS_LINE:[F

    aget v0, v0, v3

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeBg:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeDot:F

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeLine:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/infinity/fractal/ElementData;->setGroupAlpha(F)V

    return-void
.end method

.method public resetRotation()V
    .registers 7

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v4, -0x40800000    # -1.0f

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v0, v2, v5

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_1a

    mul-float/2addr v0, v4

    :cond_1a
    const/4 v2, 0x0

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v0, v2, v5

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_2b

    mul-float/2addr v0, v4

    :cond_2b
    const/high16 v2, 0x420c0000    # 35.0f

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    return-void
.end method

.method public resetShapeData()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->createShapeData()V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockFaces:Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->updateShapeData(Lcom/android/systemui/infinity/fractal/shape/ShapeData;)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetGroup()V

    return-void
.end method

.method public setAlphaAodBgObjects(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodBgObjects:F

    return-void
.end method

.method public setAlphaAodFgObjects(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaAodFgObjects:F

    return-void
.end method

.method public setAlphaGroup1(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v2

    aput p1, v0, v2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup1:F

    return-void
.end method

.method public setAlphaGroup2(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v2

    aput p1, v0, v2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup2:F

    return-void
.end method

.method public setAlphaGroup3(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v2

    aput p1, v0, v2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup3:F

    return-void
.end method

.method public setAlphaGroup4(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v2

    aput p1, v0, v2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup4:F

    return-void
.end method

.method public setAlphaGroup5(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBgParticleShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v0, v0, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v2

    aput p1, v0, v2

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup5:F

    return-void
.end method

.method public setAlphaHomeBg(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeBg:F

    return-void
.end method

.method public setAlphaHomeDot(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeDot:F

    return-void
.end method

.method public setAlphaHomeLine(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaHomeLine:F

    return-void
.end method

.method public setAlphaLockBg(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockBg:F

    return-void
.end method

.method public setAlphaLockDot(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockDot:F

    return-void
.end method

.method public setAlphaLockFaces(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockFaces:F

    return-void
.end method

.method public setAlphaLockLine(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaLockLine:F

    return-void
.end method

.method public setAnimateStep(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->animateStep:F

    return-void
.end method

.method public setGroupAlpha(F)V
    .registers 3

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup1:F

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup2:F

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup3:F

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup4:F

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->alphaGroup5:F

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mShapeData:Lcom/android/systemui/infinity/fractal/shape/ShapeData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/fractal/shape/ShapeData;->setGroupAlpha(F)V

    return-void
.end method

.method public setOverBrightnessDot(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessDot:F

    return-void
.end method

.method public setOverBrightnessLine(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->overBrightnessLine:F

    return-void
.end method

.method public setRotateX(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateX:F

    return-void
.end method

.method public setRotateY(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->rotateY:F

    return-void
.end method

.method public setScale(F)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->scale:F

    return-void
.end method

.method public updateScreenSize(II)V
    .registers 14

    const/4 v10, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWidth:I

    iput p2, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHeight:I

    int-to-float v6, p1

    mul-float v2, v7, v6

    int-to-float v6, p2

    mul-float v1, v7, v6

    new-instance v6, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;

    invoke-direct {v6, p1, p2}, Lcom/android/systemui/infinity/wbgl/WbglWorldPerspective;-><init>(II)V

    iput-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetShapeData()V

    new-instance v5, Landroid/graphics/Rect;

    neg-float v6, v2

    float-to-int v6, v6

    float-to-int v7, v1

    float-to-int v8, v2

    neg-float v9, v1

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10, v10, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mWorld:Lcom/android/systemui/infinity/wbgl/WbglWorld;

    invoke-virtual {v6}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->getCoordinates()[F

    move-result-object v6

    const/4 v7, 0x4

    aget v3, v6, v7

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->getDotRatio()F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v3}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setNear(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodForegroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setDotSizeRatio(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v3}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setNear(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mAodBackgroundDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setDotSizeRatio(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockFaces:Lcom/android/systemui/infinity/fractal/shape/TriangleShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/TriangleShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v3}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setNear(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setDotSizeRatio(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    if-eqz v6, :cond_79

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->updateBoundary(Landroid/graphics/Rect;)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    :cond_79
    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    if-eqz v6, :cond_82

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mLockBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    invoke-virtual {v6, v4, v4}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_82
    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeLine:Lcom/android/systemui/infinity/fractal/shape/LineShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/LineShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setShapeSize(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v3}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setNear(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeDot:Lcom/android/systemui/infinity/fractal/shape/DotShape;

    invoke-virtual {v6, v0}, Lcom/android/systemui/infinity/fractal/shape/DotShape;->setDotSizeRatio(F)V

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    if-eqz v6, :cond_9f

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBgContainer:Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->updateBoundary(Landroid/graphics/Rect;)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    :cond_9f
    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    if-eqz v6, :cond_a8

    iget-object v6, p0, Lcom/android/systemui/infinity/fractal/ElementData;->mHomeBg:Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    invoke-virtual {v6, v4, v4}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_a8
    return-void
.end method

.method public wakeAod()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/fractal/ElementData;->resetRotation()V

    return-void
.end method
