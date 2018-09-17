.class Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfinityWallpaperEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
    }
.end annotation


# instance fields
.field private mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

.field private mGLSurfaceView:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

.field protected mRendererHasBeenSet:Z

.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 11

    if-nez p1, :cond_7

    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "Infinity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCommand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string/jumbo v0, "SLEEP_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap1(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    :cond_43
    :goto_43
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_48
    const-string/jumbo v0, "AOD_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get3(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const-wide/16 v2, 0x834

    invoke-static {v0, v2, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap1(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get1()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap0(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V

    goto :goto_43

    :cond_74
    const-string/jumbo v0, "WAKE_AOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->wakeAod()V

    goto :goto_43

    :cond_83
    const-string/jumbo v0, "WAKE_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    goto :goto_43

    :cond_93
    const-string/jumbo v0, "ACTION_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->changeMode(I)V

    goto :goto_43
.end method

.method public onConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 10

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    new-instance v0, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getResIdInner(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getGroupDataInner()[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v4, v7}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getResIdInner(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getResIdInner(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[III)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    new-instance v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;-><init>(Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    iput-boolean v7, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mRendererHasBeenSet:Z

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->clear()V

    :cond_11
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    const-string/jumbo v0, "wbest.park"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wbest.park"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service onSurfaceChanged height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mRendererHasBeenSet:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->onResume()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->onPause()V

    goto :goto_e
.end method

.method public setAodBgOff()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/android/systemui/infinity/fractal/InfinityMainContainer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/fractal/InfinityMainContainer;->setAodBgOff()V

    :cond_9
    return-void
.end method
