.class public Lcom/android/systemui/infinity/wbgl/WbglRenderer;
.super Ljava/lang/Object;
.source "WbglRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/wbgl/IWbglContainer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_14
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/infinity/wbgl/IWbglContainer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_d
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 6

    const/4 v2, 0x0

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method
