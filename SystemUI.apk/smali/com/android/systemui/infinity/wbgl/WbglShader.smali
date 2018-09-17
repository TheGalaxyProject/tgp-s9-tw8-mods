.class public Lcom/android/systemui/infinity/wbgl/WbglShader;
.super Ljava/lang/Object;
.source "WbglShader.java"


# static fields
.field public static final HANDLE_WORLD_MATRIX:Ljava/lang/String; = "uWorldMatrix"

.field private static final TAG:Ljava/lang/String; = "WbglShader"


# instance fields
.field private mFragmentShaderId:I

.field private mHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProgramId:I

.field private mResources:Landroid/content/res/Resources;

.field private mVertexShaderId:I

.field public worldMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mVertexShaderId:I

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mFragmentShaderId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    if-nez p1, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/infinity/wbgl/WbglShader;->setShader(II)I

    const-string/jumbo v0, "uWorldMatrix"

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->worldMatrixHandle:I

    return-void
.end method

.method protected static loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_20

    move-result-object v5

    return-object v5

    :catch_20
    move-exception v1

    :try_start_21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_2c

    :goto_27
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v5, 0x0

    return-object v5

    :catch_2c
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27
.end method

.method protected static loadShader(ILjava/lang/String;)I
    .registers 7

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_49

    const-string/jumbo v2, "WbglShader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "WbglShader"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    :cond_49
    return v1
.end method


# virtual methods
.method protected createProgram(II)I
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b31

    invoke-static {v2, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadShader(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mVertexShaderId:I

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p2}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadProgramFromRawResource(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b30

    invoke-static {v2, v1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadShader(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mFragmentShaderId:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    if-eqz v1, :cond_67

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    iget v2, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mVertexShaderId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    iget v2, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mFragmentShaderId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v4, [I

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v0, v3

    if-eq v1, v4, :cond_67

    const-string/jumbo v1, "WbglShader"

    const-string/jumbo v2, "Could not link program: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "WbglShader"

    iget v2, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v3, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    :cond_67
    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    return v1
.end method

.method public getAttributeHandle(Ljava/lang/String;)I
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_18

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadAttributeHandle(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1c

    const/4 v1, -0x1

    return v1

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getHandle(Ljava/lang/String;)I
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_18

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1c

    const/4 v1, -0x1

    return v1

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getShaderProgram()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    return v0
.end method

.method public getUniformHandle(Ljava/lang/String;)I
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_18

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadUniformHandle(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1c

    const/4 v1, -0x1

    return v1

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public isValidHandle(I)Z
    .registers 3

    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public loadAttributeHandle(Ljava/lang/String;)I
    .registers 5

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public loadHandle(Ljava/lang/String;)I
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadUniformHandle(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_e
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/wbgl/WbglShader;->loadAttributeHandle(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public loadUniformHandle(Ljava/lang/String;)I
    .registers 5

    iget v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mHandleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public releaseShader()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mVertexShaderId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mFragmentShaderId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method

.method public setShader(II)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/infinity/wbgl/WbglShader;->createProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    return v0
.end method

.method public useProgram()V
    .registers 2

    iget v0, p0, Lcom/android/systemui/infinity/wbgl/WbglShader;->mProgramId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
