.class public abstract Lcom/android/systemui/infinity/wbgl/object/WbglShape;
.super Ljava/lang/Object;
.source "WbglShape.java"

# interfaces
.implements Lcom/android/systemui/infinity/wbgl/object/IWbglObject;


# static fields
.field public static final HANDLE_GLOBAL_ALPHA:Ljava/lang/String; = "uGlobalAlpha"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mElementHandles:[I

.field protected mElementNameList:[Ljava/lang/String;

.field protected mElementSizeList:[I

.field protected mGlobalAlpha:F

.field private mGlobalAlphaHandle:I

.field protected mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

.field protected mShapeSize:Landroid/graphics/Rect;

.field protected mStrideSize:I

.field protected mTotalElementSize:I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mTotalElementSize:I

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mStrideSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlpha:F

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShapeSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->calculateSize()V

    return-void
.end method


# virtual methods
.method protected calculateSize()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mTotalElementSize:I

    iget-object v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mTotalElementSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mTotalElementSize:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mStrideSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->releaseShader()V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method protected abstract drawElementInner()V
.end method

.method public drawElements(Lcom/android/systemui/infinity/wbgl/WbglWorld;)V
    .registers 10

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    if-nez v1, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->useProgram()V

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    iget v1, v1, Lcom/android/systemui/infinity/wbgl/WbglShader;->worldMatrixHandle:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/infinity/wbgl/WbglWorld;->setupMatrices(I)V

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlphaHandle:I

    if-ltz v1, :cond_29

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlphaHandle:I

    iget v2, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlpha:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_29
    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_2b
    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    array-length v1, v1

    if-ge v6, v1, :cond_59

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementHandles:[I

    aget v0, v1, v6

    if-gez v0, :cond_39

    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_39
    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    aget v1, v1, v6

    iget v4, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mStrideSize:I

    iget-object v5, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    aget v1, v1, v6

    add-int/2addr v7, v1

    goto :goto_36

    :cond_59
    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->drawElementInner()V

    const/4 v6, 0x0

    :goto_5d
    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    array-length v1, v1

    if-ge v6, v1, :cond_6f

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementHandles:[I

    aget v0, v1, v6

    if-gez v0, :cond_6b

    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    :cond_6b
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto :goto_68

    :cond_6f
    return-void
.end method

.method protected generateElementNameList()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "aPosition"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "aColor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected generateElementSizeList()[I
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public generateIndexBuffer([S)Lcom/android/systemui/infinity/wbgl/object/WbglShape;
    .registers 3

    invoke-static {p1}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method protected abstract generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
.end method

.method public generateVertexBuffer([F)Lcom/android/systemui/infinity/wbgl/object/WbglShape;
    .registers 3

    invoke-static {p1}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getGlobalAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlpha:F

    return v0
.end method

.method public getShader()Lcom/android/systemui/infinity/wbgl/WbglShader;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    return-object v0
.end method

.method public getVertexBufferData(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method protected init()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->generateShader()Lcom/android/systemui/infinity/wbgl/WbglShader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->generateElementSizeList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementSizeList:[I

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->generateElementNameList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementHandles:[I

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->loadHandles()V

    return-void
.end method

.method protected loadHandles()V
    .registers 9

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v4

    move v2, v1

    :goto_6
    if-ge v3, v5, :cond_1a

    aget-object v0, v4, v3

    iget-object v6, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mElementHandles:[I

    add-int/lit8 v1, v2, 0x1

    iget-object v7, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    invoke-virtual {v7, v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_6

    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShader:Lcom/android/systemui/infinity/wbgl/WbglShader;

    const-string/jumbo v4, "uGlobalAlpha"

    invoke-virtual {v3, v4}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlphaHandle:I

    return-void
.end method

.method public setGlobalAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mGlobalAlpha:F

    return-void
.end method

.method public setShapeSize(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mShapeSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setVertexBufferData(IF)Lcom/android/systemui/infinity/wbgl/object/WbglShape;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public updateVertexBuffer([FII)Lcom/android/systemui/infinity/wbgl/object/WbglShape;
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method
