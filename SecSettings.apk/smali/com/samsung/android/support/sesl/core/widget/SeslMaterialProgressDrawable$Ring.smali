.class Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "SeslMaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartTrim:F

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mEndTrim:F

    iput v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRotation:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeInset:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .registers 13

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mShowArrow:Z

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    :goto_e
    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v0, v3, v4

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v1, v4

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    float-to-double v6, v3

    add-double/2addr v4, v6

    double-to-float v2, v4

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float v4, v1, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    add-float v3, p2, p3

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v3, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_8b
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto/16 :goto_e
.end method

.method private getNextColorIndex()I
    .registers 3

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 11

    const/high16 v5, 0x43b40000    # 360.0f

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartTrim:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v2, v0, v5

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mEndTrim:F

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v4

    mul-float v6, v0, v5

    sub-float v3, v6, v2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v4, 0xff

    if-lt v0, v4, :cond_36

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v4, v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_35
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getNextColor()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getStartTrim()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public resetOriginals()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingRotation:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setStartTrim(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setEndTrim(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mAlpha:I

    return-void
.end method

.method public setArrowDimensions(FF)V
    .registers 4

    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowWidth:I

    float-to-int v0, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method public setArrowScale(F)V
    .registers 3

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mArrowScale:F

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mBackgroundColor:I

    return-void
.end method

.method public setCenterRadius(D)V
    .registers 4

    iput-wide p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-void
.end method

.method public setColor(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setColorIndex(I)V
    .registers 4

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColorIndex:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColors([I)V
    .registers 3
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mColors:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setEndTrim(F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mEndTrim:F

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setInsets(II)V
    .registers 10

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v1, v2

    iget-wide v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_23

    const/4 v2, 0x1

    :goto_10
    if-nez v2, :cond_17

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_25

    :cond_17
    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    :goto_20
    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeInset:F

    return-void

    :cond_23
    const/4 v2, 0x0

    goto :goto_10

    :cond_25
    div-float v2, v1, v6

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_20
.end method

.method public setRotation(F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRotation:F

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setShowArrow(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mShowArrow:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mShowArrow:Z

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    goto :goto_4
.end method

.method public setStartTrim(F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartTrim:F

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStrokeWidth:F

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public storeOriginals()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method
