.class public Lcom/android/server/am/VirtualScreen;
.super Ljava/lang/Object;
.source "VirtualScreen.java"


# static fields
.field private static final DEBUG_OFFSET:Z = true

.field private static final TAG:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private final VIRTUALSCREEN_APP_TRANSITION_DURATION:I

.field private final VIRTUALSCREEN_POSITION_BOTTOM:I

.field private final VIRTUALSCREEN_POSITION_LEFT:I

.field private final VIRTUALSCREEN_POSITION_RIGHT:I

.field private final VIRTUALSCREEN_POSITION_TOP:I

.field private final VIRTUALSCREEN_POSITION_UNKNOWN:I

.field private mAllowAppTransition:Z

.field private mBindDisplayId:I

.field private final mDefaultDisplayRect:Landroid/graphics/Rect;

.field private mDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mDisplayId:I

.field private mFlags:I

.field private mIsVisible:Z

.field private mLayer:I

.field private mOffsetUid:I

.field private mPosition:I

.field private mScreen:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/am/MultiScreenManagerService;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/hardware/display/VirtualDisplay;Landroid/graphics/Rect;I)V
    .registers 10

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    iput-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDisplay:Landroid/hardware/display/VirtualDisplay;

    iput v2, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_UNKNOWN:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_LEFT:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_TOP:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_RIGHT:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_POSITION_BOTTOM:I

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/server/am/VirtualScreen;->VIRTUALSCREEN_APP_TRANSITION_DURATION:I

    iput-object p1, p0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    iput-object p3, p0, Lcom/android/server/am/VirtualScreen;->mDisplay:Landroid/hardware/display/VirtualDisplay;

    iput p2, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiScreenManagerService;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iput p5, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    if-eqz p4, :cond_48

    iput-object p4, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    invoke-direct {p0}, Lcom/android/server/am/VirtualScreen;->initPosition()V

    :cond_48
    return-void
.end method

.method private initPosition()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_10

    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_10

    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    goto :goto_10
.end method


# virtual methods
.method public allowAppTransition()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    return v0
.end method

.method public computeScreenConfiguration()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/am/MultiScreenManagerService;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mService:Lcom/android/server/am/MultiScreenManagerService;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/MultiScreenManagerService;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v4, v5, :cond_49

    if-eq v2, v3, :cond_6f

    :cond_49
    const-string/jumbo v14, "VirtualScreen"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "computeScreenConfiguration - DisplaySize is mismatch : defaultDisplayRect="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " virtualDisplayRect="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7a

    return-void

    :cond_7a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    if-nez v14, :cond_a6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float v6, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float v7, v14, v15

    :cond_a6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-eqz v14, :cond_153

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    div-int v11, v14, v15

    :goto_cc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-eqz v14, :cond_156

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    div-int v12, v14, v15

    :goto_e6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    mul-int v8, v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    mul-int v9, v12, v14

    int-to-float v14, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v6

    add-float/2addr v14, v15

    int-to-float v15, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v10, v14}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const-string/jumbo v14, "VirtualScreen"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "computeScreenConfiguration - change rect to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " mDefaultDisplayRect is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    return-void

    :cond_153
    const/4 v11, 0x0

    goto/16 :goto_cc

    :cond_156
    const/4 v12, 0x0

    goto :goto_e6
.end method

.method public createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v1, :pswitch_data_86

    :goto_7
    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_11
    return-object v0

    :pswitch_12
    if-eqz p1, :cond_21

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :cond_21
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :pswitch_2f
    if-eqz p1, :cond_3e

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :cond_3e
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :pswitch_4c
    if-eqz p1, :cond_5c

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :cond_5c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :pswitch_69
    if-eqz p1, :cond_79

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :cond_79
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_7

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_12
        :pswitch_2f
        :pswitch_4c
        :pswitch_69
    .end packed-switch
.end method

.method public getBindDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    return v0
.end method

.method public getDisplay()Landroid/hardware/display/VirtualDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    return v0
.end method

.method public getLayer()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    return v0
.end method

.method public getOffsetByPosition(F)Landroid/graphics/PointF;
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v1, :pswitch_data_5a

    :goto_b
    return-object v0

    :pswitch_c
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_b

    :pswitch_1f
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_b

    :pswitch_32
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_b

    :pswitch_46
    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_b

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1f
        :pswitch_32
        :pswitch_46
    .end packed-switch
.end method

.method public getOffsetUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    return v0
.end method

.method public getOffsetX()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    return v0
.end method

.method public getOffsetY()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    return v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    return v0
.end method

.method public getX()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getY()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFocusPolicy()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public hasLayoutPolicy()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public hasReuseTaskPolicy()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public hasZeroPagePolicy()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method intersectsDefaultDisplay()Z
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    return v1

    :cond_18
    const/4 v1, 0x0

    return v1
.end method

.method public isDefaultDisplay(II)Z
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isValid(IZ)Z
    .registers 7

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    if-ltz v0, :cond_7

    if-eqz p2, :cond_3d

    :cond_7
    const-string/jumbo v0, "VirtualScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOffset() set offset from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " force : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    :cond_3b
    const/4 v0, 0x1

    return v0

    :cond_3d
    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    if-eq v0, p1, :cond_3b

    const-string/jumbo v0, "VirtualScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOffset() failed set offset current uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wrong uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public prepareTransition()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    packed-switch v0, :pswitch_data_2c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    goto :goto_5

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    goto :goto_5

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    goto :goto_5

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_f
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/VirtualScreen;->mDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_9
    return-void
.end method

.method public setAllowAppTransition(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    return-void
.end method

.method public setBindDisplayId(I)Z
    .registers 5

    iget v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_23

    const-string/jumbo v0, "VirtualScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already binded display with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_23
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    const/4 v0, 0x1

    return v0
.end method

.method public setLayer(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    return-void
.end method

.method public setOffset(II)V
    .registers 9

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    :cond_7
    iput p1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iput p2, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    const-string/jumbo v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() mXOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mYOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    iget v4, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    if-eq v3, v1, :cond_6b

    iput-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    const-string/jumbo v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() mIsVisible changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/VirtualScreen;->mIsVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    return-void
.end method

.method public setScreenSize(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/server/am/VirtualScreen;->initPosition()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/am/VirtualScreen;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", Rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", Offset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mBindDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mDefaultDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreen;->mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mOffsetUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mOffsetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mAllowAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/VirtualScreen;->mAllowAppTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/am/VirtualScreen;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreen;->mLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unbind()V
    .registers 2

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/am/VirtualScreen;->mBindDisplayId:I

    return-void
.end method
