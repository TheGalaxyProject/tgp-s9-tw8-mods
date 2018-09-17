.class Lcom/android/server/wm/CircularDisplayMask;
.super Ljava/lang/Object;
.source "CircularDisplayMask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDimensionsUnequal:Z

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mMaskThickness:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mScreenOffset:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;III)V
    .registers 16

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    iput-boolean v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p4

    if-eq v1, v2, :cond_4d

    sget-object v1, Lcom/android/server/wm/CircularDisplayMask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen dimensions of displayId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "are not equal, circularMask will not be drawn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    :cond_4d
    const/4 v7, 0x0

    :try_start_4e
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_9d

    new-instance v0, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;

    const-string/jumbo v2, "CircularDisplayMask"

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_65
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4e .. :try_end_65} :catch_b1

    :goto_65
    :try_start_65
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_7c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_65 .. :try_end_7c} :catch_b4

    :goto_7c
    iput-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v9, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput p4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    iput p5, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    return-void

    :cond_9d
    :try_start_9d
    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v2, "CircularDisplayMask"

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_b0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_9d .. :try_end_b0} :catch_b1

    goto :goto_65

    :catch_b1
    move-exception v8

    move-object v0, v7

    goto :goto_7c

    :catch_b4
    move-exception v8

    goto :goto_7c
.end method

.method private drawIfNeeded()V
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    if-eqz v5, :cond_10

    iget-boolean v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_10

    iget-boolean v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    if-eqz v5, :cond_11

    :cond_10
    return-void

    :cond_11
    iput-boolean v8, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    new-instance v2, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    :try_start_21
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_66
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_21 .. :try_end_26} :catch_68

    move-result-object v0

    :goto_27
    if-nez v0, :cond_2a

    return-void

    :cond_2a
    iget v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    packed-switch v5, :pswitch_data_6a

    :goto_2f
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v5, 0x2

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v5, v1

    int-to-float v6, v1

    iget v7, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    sub-int v7, v1, v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_4c
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v7, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2f

    :pswitch_52
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2f

    :pswitch_5c
    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2f

    :catch_66
    move-exception v4

    goto :goto_27

    :catch_68
    move-exception v3

    goto :goto_27

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4c
        :pswitch_52
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method positionSurface(III)V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    if-ne v0, p2, :cond_d

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    if-ne v0, p3, :cond_d

    return-void

    :cond_d
    iput p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    return-void
.end method

.method public setVisibility(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_11
.end method
