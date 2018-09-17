.class public Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "WbglSurfaceView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

.field private mRenderer:Lcom/android/systemui/infinity/wbgl/WbglRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mRenderer:Lcom/android/systemui/infinity/wbgl/WbglRenderer;

    iput-object p1, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    invoke-direct {p0}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->setEGLConfigChooser(IIIIII)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->setPreserveEGLContextOnPause(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    invoke-interface {v0, p0}, Lcom/android/systemui/infinity/wbgl/IWbglContainer;->setSurfaceView(Landroid/opengl/GLSurfaceView;)V

    :cond_31
    new-instance v0, Lcom/android/systemui/infinity/wbgl/WbglRenderer;

    iget-object v1, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/infinity/wbgl/WbglRenderer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mRenderer:Lcom/android/systemui/infinity/wbgl/WbglRenderer;

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mRenderer:Lcom/android/systemui/infinity/wbgl/WbglRenderer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_49
    return-void

    :cond_4a
    sget-object v0, Lcom/android/systemui/infinity/wbgl/WbglConstants;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private detectOpenGLES20()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    return v2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/wbgl/IWbglContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->mMainContainer:Lcom/android/systemui/infinity/wbgl/IWbglContainer;

    invoke-interface {v0, p2}, Lcom/android/systemui/infinity/wbgl/IWbglContainer;->onVisibilityChanged(I)V

    :cond_c
    return-void
.end method
