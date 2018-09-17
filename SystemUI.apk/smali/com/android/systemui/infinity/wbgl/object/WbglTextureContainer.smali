.class public Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
.super Ljava/lang/Object;
.source "WbglTextureContainer.java"

# interfaces
.implements Lcom/android/systemui/infinity/wbgl/object/IWbglObject;


# static fields
.field public static final HANDLE_GLOBAL_ALPHA:Ljava/lang/String; = "uGlobalAlpha"

.field public static final HANDLE_POSITION:Ljava/lang/String; = "aPosition"

.field public static final MAX_TEXTURE_CNT:I = 0xf


# instance fields
.field protected INDICES:[S

.field protected VERTICES:[F

.field protected mContext:Landroid/content/Context;

.field protected mCurTextureCnt:I

.field protected mGlobalAlpha:F

.field private mGlobalAlphaHandle:I

.field protected mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mObjectRect:Landroid/graphics/Rect;

.field private mPositionHandle:I

.field protected mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

.field protected mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;II)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_50

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_6c

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->INDICES:[S

    iput-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    iput-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/systemui/infinity/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v1, "aPosition"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v1, "uGlobalAlpha"

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mGlobalAlphaHandle:I

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->initVertices()V

    return-void

    nop

    :array_50
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    :array_6c
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method

.method private initVertices()V
    .registers 8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, v6

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/16 v2, 0x9

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/16 v2, 0xa

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->VERTICES:[F

    invoke-static {v0}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    :goto_5e
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->INDICES:[S

    invoke-static {v0}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    :cond_6a
    return-void

    :cond_6b
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_5e
.end method


# virtual methods
.method public addTexture(Lcom/android/systemui/infinity/wbgl/object/WbglTexture;)V
    .registers 5

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_e

    sget-object v1, Lcom/android/systemui/infinity/wbgl/WbglConstants;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "We support only 15 textures"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez p1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    iget v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    aput-object p1, v1, v2

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    invoke-static {v1}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->getGlTextureId(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    iput v1, p1, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glIndex:I

    iput v0, p1, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glId:I

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {p1, v1}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->loadHandles(Lcom/android/systemui/infinity/wbgl/WbglShader;)V

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    return-void
.end method

.method public clear()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->releaseShader()V

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->clear()V

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_23
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    return-void
.end method

.method public drawElements(Lcom/android/systemui/infinity/wbgl/WbglWorld;)V
    .registers 10

    const/16 v2, 0x1406

    const/16 v7, 0xde1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->useProgram()V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/WbglShader;->worldMatrixHandle:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->setupMatrices(I)V

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mGlobalAlphaHandle:I

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v6, 0x0

    :goto_1e
    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    if-ge v6, v0, :cond_86

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    if-nez v0, :cond_2b

    :goto_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->rectHandle:I

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->textureRect:[F

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->alphaHandle:I

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->alpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->handle:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->textureHandle:I

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->glIndex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordHandle:I

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v1, v1, v6

    iget-object v5, v1, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_28

    :cond_86
    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/16 v4, 0x1403

    invoke-static {v1, v2, v4, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v6, 0x0

    :goto_9c
    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    if-ge v6, v0, :cond_ac

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/android/systemui/infinity/wbgl/object/WbglTexture;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/systemui/infinity/wbgl/object/WbglTexture;->cordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :cond_ac
    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public getGlobalAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    return v0
.end method

.method public getShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    return-object v0
.end method

.method public setGlobalAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    return-void
.end method

.method public setPosition(FFF)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->setX(F)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    invoke-virtual {p0, p2}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->setY(F)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    invoke-virtual {p0, p3}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->setZ(F)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;

    return-object p0
.end method

.method public setSize(FF)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p2

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p2

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public setX(F)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public setY(F)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public setZ(F)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public updateBoundary(Landroid/graphics/Rect;)Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglTextureContainer;->initVertices()V

    return-object p0
.end method
