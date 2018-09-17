.class public Lcom/android/systemui/infinity/wbgl/object/WbglTexture;
.super Ljava/lang/Object;
.source "WbglTexture.java"


# static fields
.field public static final HANDLE_TEXTURE_ALPHA_PREFIX:Ljava/lang/String; = "uTextureAlpha"

.field public static final HANDLE_TEXTURE_CORD_PREFIX:Ljava/lang/String; = "aTextureCord"

.field public static final HANDLE_TEXTURE_PREFIX:Ljava/lang/String; = "uTexture"

.field public static final HANDLE_TEXTURE_RECT_PREFIX:Ljava/lang/String; = "uTextureRect"


# instance fields
.field private CORD:[F

.field public alpha:F

.field public alphaHandle:I

.field public cordBuffer:Ljava/nio/FloatBuffer;

.field public cordHandle:I

.field public glId:I

.field public glIndex:I

.field public handle:I

.field private mAlphaHandleName:Ljava/lang/String;

.field private mCordHandleName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNeedToClear:Z

.field private mObjectRect:Landroid/graphics/Rect;

.field private mRectHandleName:Ljava/lang/String;

.field private mTextureHandleName:Ljava/lang/String;

.field private mTextureRect:Landroid/graphics/Rect;

.field public rectHandle:I

.field public textureHandle:I

.field public textureRect:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;IZ)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->CORD:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glId:I

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->alpha:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->textureRect:[F

    iput p4, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->handle:I

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->init(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Z)V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_54
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->CORD:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glId:I

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->alpha:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_58

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->textureRect:[F

    invoke-static {p4}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->createTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->handle:I

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->init(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Z)V

    return-void

    nop

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_58
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Z)V
    .registers 6

    iput-boolean p4, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mNeedToClear:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->CORD:[F

    invoke-static {v0}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, p3}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aTextureCord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uTextureRect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uTextureAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    return-void
.end method

.method private updateTextureData()V
    .registers 10

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    const/4 v1, 0x0

    :goto_49
    const/4 v5, 0x4

    if-ge v1, v5, :cond_71

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->CORD:[F

    mul-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    sub-float/2addr v7, v3

    mul-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->CORD:[F

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    sub-float/2addr v7, v4

    mul-float/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_71
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mNeedToClear:Z

    if-eqz v0, :cond_14

    new-array v0, v3, [I

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->handle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_14
    return-void
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getX()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getY()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public loadHandles(Lcom/android/systemui/infinity/wbgl/WbglShader;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->textureHandle:I

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordHandle:I

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->rectHandle:I

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->alphaHandle:I

    return-void
.end method

.method public setPosition(II)V
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    add-int v3, p1, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    add-int v3, p2, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iput p1, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iput p2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public setSize(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public updateObjectBoundary(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public updateTextureBoundary(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method
