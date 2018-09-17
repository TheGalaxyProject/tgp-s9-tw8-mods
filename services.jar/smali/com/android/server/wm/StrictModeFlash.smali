.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .registers 13

    const/4 v9, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    const/4 v7, 0x0

    :try_start_10
    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v2, "StrictModeFlash"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_1d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_1d} :catch_3c

    :try_start_1d
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v1, 0xf6950

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_37
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1d .. :try_end_37} :catch_3f

    :goto_37
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v9, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    return-void

    :catch_3c
    move-exception v8

    move-object v0, v7

    goto :goto_37

    :catch_3f
    move-exception v8

    goto :goto_37
.end method

.method private drawIfNeeded()V
    .registers 12

    const/16 v10, 0x14

    const/high16 v9, -0x10000

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v6, :cond_a

    return-void

    :cond_a
    iput-boolean v8, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    :try_start_16
    iget-object v6, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1b} :catch_5d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_16 .. :try_end_1b} :catch_5f

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_1f

    return-void

    :cond_1f
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v3, -0x14

    invoke-direct {v6, v7, v8, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v1, -0x14

    invoke-direct {v6, v8, v7, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v6, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catch_5d
    move-exception v5

    goto :goto_1c

    :catch_5f
    move-exception v4

    goto :goto_1c
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_9

    return-void

    :cond_9
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    return-void
.end method

.method public setVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_f
.end method
