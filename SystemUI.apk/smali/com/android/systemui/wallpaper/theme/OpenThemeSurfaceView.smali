.class public abstract Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "OpenThemeSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsCreated:Z

.field private mIsScreenOn:Z

.field private mMinInterval:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private startDraw()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_2e

    new-instance v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    :cond_16
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    :cond_20
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->start()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    goto :goto_2d
.end method

.method private stopDraw()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->interrupt()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->stopDraw()V

    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    :cond_14
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    :cond_18
    return-void
.end method

.method public setMinInterval(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mMinInterval:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->startDraw()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mIsCreated:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mDrawThread:Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    :cond_1c
    return-void
.end method
