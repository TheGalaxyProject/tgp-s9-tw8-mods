.class Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenFreezeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7


# instance fields
.field mBGSurface:Landroid/view/SurfaceControl;

.field final mCreatedTime:J

.field final mRect:Landroid/graphics/Rect;

.field final mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZIIIZ)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mCreatedTime:J

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    const/4 v10, 0x4

    if-eqz p12, :cond_4d

    const/16 v10, 0x84

    :cond_4d
    new-instance v4, Landroid/view/SurfaceControl;

    const-string/jumbo v6, "ScreenFreezeSurface"

    const/4 v9, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz p8, :cond_6d

    new-instance v4, Landroid/view/SurfaceControl;

    const-string/jumbo v6, "ScreenFreezeBGSurface"

    const/4 v9, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_98

    new-instance v12, Landroid/view/Surface;

    invoke-direct {v12}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-static/range {p11 .. p11}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-static/range {v11 .. v17}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    invoke-virtual {v12}, Landroid/view/Surface;->destroy()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_194

    :cond_98
    :goto_98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_d6

    new-instance v14, Landroid/view/Surface;

    invoke-direct {v14}, Landroid/view/Surface;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-static/range {p11 .. p11}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move/from16 v17, p9

    move/from16 v18, p10

    invoke-static/range {v13 .. v19}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    invoke-virtual {v14}, Landroid/view/Surface;->destroy()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v5, 0x2af7

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_1a0

    :cond_d6
    :goto_d6
    return-void

    :pswitch_d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_98

    :pswitch_ee
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_98

    :pswitch_105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_98

    :pswitch_11d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_98

    :pswitch_135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_d6

    :pswitch_14c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_d6

    :pswitch_164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_d6

    :pswitch_17c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_d6

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_ee
        :pswitch_105
        :pswitch_11d
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_135
        :pswitch_14c
        :pswitch_164
        :pswitch_17c
    .end packed-switch
.end method


# virtual methods
.method kill()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    :cond_17
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .registers 12

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    iget v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_94

    :goto_26
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void

    :pswitch_5f
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_65
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_74
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_85
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_26

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_65
        :pswitch_74
        :pswitch_85
    .end packed-switch
.end method

.method setLayerForSurface(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :cond_9
    return-void
.end method

.method setLayerStackForSurface(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    :cond_9
    return-void
.end method

.method show()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mCreatedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
