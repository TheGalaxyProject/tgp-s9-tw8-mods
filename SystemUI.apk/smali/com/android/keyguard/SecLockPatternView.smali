.class public Lcom/android/keyguard/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# instance fields
.field private mBitmapError:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapRegular:Landroid/graphics/Bitmap;

.field private mBitmapSuccess:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mDecoPatternEnabled:Z

.field private mDiameterFactor:F

.field private mIsWhiteWp:Z

.field private final offsetForCircleLineInvalidateRect:I

.field private sx:F

.field private sy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/keyguard/SecLockPatternView;->mDiameterFactor:F

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/keyguard/SecLockPatternView;->offsetForCircleLineInvalidateRect:I

    iput v1, p0, Lcom/android/keyguard/SecLockPatternView;->sx:F

    iput v1, p0, Lcom/android/keyguard/SecLockPatternView;->sy:F

    iput-boolean v2, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    const-string/jumbo v0, "SecLockPatternView"

    const-string/jumbo v1, "SecLockPatternView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .registers 18

    if-eqz p4, :cond_6

    iget-boolean v7, p0, Lcom/android/keyguard/SecLockPatternView;->mInStealthMode:Z

    if-eqz v7, :cond_7c

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    :goto_8
    iget v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    iget v5, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v4, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    int-to-float v7, v6

    sub-float v7, v5, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v1, v7

    int-to-float v7, v0

    sub-float v7, v4, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v2, v7

    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SecLockPatternView;->sx:F

    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SecLockPatternView;->sy:F

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v8, p2, v1

    int-to-float v8, v8

    add-int v9, p3, v2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->sx:F

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->sy:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    neg-int v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v3, :cond_7b

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/keyguard/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_7b
    return-void

    :cond_7c
    iget-boolean v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_83

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_83
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_8d

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    :cond_8d
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v7, v8, :cond_99

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_9d

    :cond_99
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto/16 :goto_8

    :cond_9d
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown display mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getLineRadius()F
    .registers 3

    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDiameterFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070643

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private hasDecoPatternResources()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private loadDecoPatternResources()Z
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/SecLockPatternView;->hasDecoPatternResources()Z

    move-result v2

    const-string/jumbo v3, "SecLockPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadDecoPatternResources() hasResource="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_22

    return v4

    :cond_22
    const v3, 0x7f08036b

    invoke-direct {p0, v3}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    const v3, 0x7f08036d

    invoke-direct {p0, v3}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    const v3, 0x7f08036c

    invoke-direct {p0, v3}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    new-array v1, v3, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    array-length v6, v1

    move v5, v4

    :goto_50
    if-ge v5, v6, :cond_78

    aget-object v0, v1, v5

    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    if-nez v0, :cond_6e

    move v3, v4

    :goto_59
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    if-nez v0, :cond_73

    move v3, v4

    :goto_64
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_50

    :cond_6e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_59

    :cond_73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_64

    :cond_78
    return v2
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .registers 32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v12, 0x0

    const/4 v11, 0x0

    :goto_1f
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_164

    if-ge v11, v7, :cond_158

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    :goto_2d
    if-ge v11, v7, :cond_15e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/SecLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v8, :cond_5e

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_5e

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->notifyPatternStarted()V

    :cond_5e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_82

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_83

    :cond_82
    const/4 v12, 0x1

    :cond_83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_154

    if-lez v18, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v15

    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v16, v25, v26

    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v20, v25, v26

    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v21, v25, v26

    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v3, v25, v26

    if-eqz v8, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v10

    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    :cond_154
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1f

    :cond_158
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_2d

    :cond_15e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_35

    :cond_164
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_b
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 42

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v4, :cond_a

    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_c0

    add-int/lit8 v4, v16, 0x1

    mul-int/lit16 v0, v4, 0x2bc

    move/from16 v29, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/keyguard/SecLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    rem-int v35, v4, v29

    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->clearPatternDrawLookup()V

    const/4 v9, 0x0

    :goto_3e
    move/from16 v0, v28

    if-ge v9, v0, :cond_5a

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v19, v4

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_5a
    if-lez v28, :cond_1a2

    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_19e

    const/16 v26, 0x1

    :goto_64
    if-eqz v26, :cond_bd

    move/from16 v0, v35

    rem-int/lit16 v4, v0, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float v33, v4, v5

    add-int/lit8 v4, v28, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v14

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v4

    sub-float/2addr v4, v13

    mul-float v21, v33, v4

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v4

    sub-float/2addr v4, v14

    mul-float v22, v33, v4

    add-float v4, v13, v21

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    add-float v4, v14, v22

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->invalidate()V

    :cond_c0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    move/from16 v36, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v15, 0x80

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInStealthMode:Z

    xor-int/lit8 v20, v4, 0x1

    if-eqz v20, :cond_103

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    if-eqz v4, :cond_1a6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const v5, -0xbbbbbc

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_103
    :goto_103
    if-eqz v20, :cond_166

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v9, 0x0

    :goto_10b
    move/from16 v0, v16

    if-ge v9, v0, :cond_125

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v19, v4

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1bb

    :cond_125
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-nez v4, :cond_133

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_166

    :cond_133
    if-eqz v11, :cond_166

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPaddingTop:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPaddingLeft:I

    move/from16 v30, v0

    const/4 v9, 0x0

    :goto_173
    const/4 v4, 0x3

    if-ge v9, v4, :cond_9

    move/from16 v0, v31

    int-to-float v4, v0

    int-to-float v5, v9

    mul-float v5, v5, v36

    add-float v39, v4, v5

    const/4 v10, 0x0

    :goto_17f
    const/4 v4, 0x3

    if-ge v10, v4, :cond_22a

    move/from16 v0, v30

    int-to-float v4, v0

    int-to-float v5, v10

    mul-float v5, v5, v37

    add-float v25, v4, v5

    move/from16 v0, v25

    float-to-int v6, v0

    move/from16 v0, v39

    float-to-int v7, v0

    aget-object v4, v19, v9

    aget-boolean v8, v4, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_17f

    :cond_19e
    const/16 v26, 0x0

    goto/16 :goto_64

    :cond_1a2
    const/16 v26, 0x0

    goto/16 :goto_64

    :cond_1a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601e5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_103

    :cond_1bb
    const/4 v11, 0x1

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v14

    if-eqz v9, :cond_21c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    aget-object v38, v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_224

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_224

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_21c
    move/from16 v23, v13

    move/from16 v24, v14

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_10b

    :cond_224
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_211

    :cond_22a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_173
.end method

.method public updateViewStyle(I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/android/keyguard/SecLockPatternView;->loadDecoPatternResources()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    :goto_11
    iget-boolean v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-eqz v1, :cond_1e

    iput-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->invalidate()V

    :goto_1a
    return-void

    :cond_1b
    iput-boolean v2, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    goto :goto_11

    :cond_1e
    invoke-super {p0, v0}, Lcom/android/internal/widget/LockPatternView;->updateViewStyle(Z)V

    goto :goto_1a
.end method
