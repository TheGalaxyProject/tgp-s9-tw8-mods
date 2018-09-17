.class public Lcom/android/systemui/infinity/wbgl/WbglUtils;
.super Ljava/lang/Object;
.source "WbglUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 4

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public static createShortBuffer([S)Ljava/nio/ShortBuffer;
    .registers 4

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method public static createTexture(Landroid/content/Context;I)I
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v2

    invoke-static {p0, p1, v1}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->loadTexture(Landroid/content/Context;II)V

    aget v1, v0, v2

    return v1
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v2

    invoke-static {p0, v1}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->loadTexture(Landroid/graphics/Bitmap;I)V

    aget v1, v0, v2

    return v1
.end method

.method public static getGlTextureId(I)I
    .registers 4

    const v2, 0x84df

    const v1, 0x84c0

    add-int v0, v1, p0

    if-le v0, v2, :cond_b

    return v2

    :cond_b
    add-int v0, v1, p0

    return v0
.end method

.method public static loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    if-gez p1, :cond_6

    :cond_5
    return-object v3

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    :try_start_f
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1d

    move-result-object v0

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_18

    const/4 v2, 0x0

    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    const/4 v2, 0x0

    :goto_22
    throw v3

    :catch_23
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22
.end method

.method public static loadTexture(Landroid/content/Context;II)V
    .registers 4

    if-eqz p0, :cond_4

    if-gez p1, :cond_5

    :cond_4
    return-void

    :cond_5
    if-ltz p2, :cond_4

    invoke-static {p0, p1}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/infinity/wbgl/WbglUtils;->loadTexture(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)V
    .registers 6

    const v3, 0x46180400    # 9729.0f

    const/4 v2, 0x0

    const/16 v1, 0xde1

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_10

    if-gez p1, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
