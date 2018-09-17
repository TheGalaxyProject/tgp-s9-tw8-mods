.class Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
.super Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V
    .registers 4

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/wbgl/IWbglContainer;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$InfinityWallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/infinity/wbgl/WbglSurfaceView;->onDetachedFromWindow()V

    return-void
.end method
