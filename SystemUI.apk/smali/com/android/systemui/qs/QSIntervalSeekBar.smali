.class public Lcom/android/systemui/qs/QSIntervalSeekBar;
.super Landroid/widget/SeekBar;
.source "QSIntervalSeekBar.java"


# instance fields
.field private activeColrFilter:Landroid/graphics/ColorFilter;

.field private mIntervalPaint:Landroid/graphics/Paint;

.field private mIntervalRect:Landroid/graphics/Rect;

.field private normalColrFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/QSIntervalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSIntervalSeekBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070493

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f070492

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x7f060160

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x7f060161

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->normalColrFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public isInScrollingContainer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    const/16 v10, 0xff

    const/16 v11, 0x42

    const/4 v13, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingTop:I

    sub-int v9, v0, v9

    iget v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingBottom:I

    sub-int/2addr v9, v12

    div-int/lit8 v9, v9, 0x2

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v9, v12

    iget v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingTop:I

    add-int v8, v9, v12

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getLayoutDirection()I

    move-result v9

    if-ne v9, v13, :cond_9d

    iget v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingRight:I

    sub-int v5, v1, v9

    :goto_32
    iget-object v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v5, v9

    int-to-float v9, v9

    int-to-float v12, v8

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a0

    move v9, v10

    :goto_51
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getMax()I

    move-result v4

    iget v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingLeft:I

    sub-int v9, v1, v9

    iget v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingRight:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    int-to-float v12, v4

    div-float v3, v9, v12

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getProgress()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->getLayoutDirection()I

    move-result v9

    if-ne v9, v13, :cond_77

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v3, v9

    :cond_77
    const/4 v2, 0x0

    :goto_78
    if-ge v2, v4, :cond_a7

    const/4 v9, 0x0

    invoke-virtual {p1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    if-ge v2, v6, :cond_a2

    iget-object v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->activeColrFilter:Landroid/graphics/ColorFilter;

    :goto_84
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIntervalSeekBar;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a5

    move v9, v10

    :goto_90
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalRect:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mIntervalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_9d
    iget v5, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->mPaddingLeft:I

    goto :goto_32

    :cond_a0
    move v9, v11

    goto :goto_51

    :cond_a2
    iget-object v9, p0, Lcom/android/systemui/qs/QSIntervalSeekBar;->normalColrFilter:Landroid/graphics/ColorFilter;

    goto :goto_84

    :cond_a5
    move v9, v11

    goto :goto_90

    :cond_a7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
