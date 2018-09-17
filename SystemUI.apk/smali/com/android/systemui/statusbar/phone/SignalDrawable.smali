.class public Lcom/android/systemui/statusbar/phone/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SignalDrawable$1;,
        Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

.field private mState:I

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SignalDrawable;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SignalDrawable;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-array v0, v4, [F

    fill-array-data v0, :array_82

    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    const/16 v0, 0xc

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_8c

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_94

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_9c

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_a4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_ac

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_b4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_bc

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_c4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_cc

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_d4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_dc

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_e4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sput v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    return-void

    :array_82
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    :array_8c
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    :array_94
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    :array_9c
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_a4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    :array_ac
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    :array_b4
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_bc
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_c4
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    :array_cc
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    :array_d4
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_dc
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    :array_e4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    const v0, 0x7f06004e

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    const v0, 0x7f06004f

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    const v0, 0x7f0600d2

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    const v0, 0x7f0600d3

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    return-void
.end method

.method private calcFit(F)F
    .registers 6

    const/4 v1, 0x0

    move v2, p1

    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    array-length v3, v3

    if-ge v0, v3, :cond_12

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    aget v3, v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    mul-float/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .registers 13

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    if-ne p6, v1, :cond_11

    move-object v0, p2

    :goto_5
    add-float v3, p3, p5

    add-float v4, p4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void

    :cond_11
    move-object v0, p1

    goto :goto_5
.end method

.method public static getAirplaneModeState(I)I
    .registers 3

    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    return v0
.end method

.method private getBackgroundColor(F)I
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .registers 7

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getFillColor(F)I
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getLevel(I)I
    .registers 2

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getNumLevels(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getState(I)I
    .registers 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getState(IIZ)I
    .registers 5

    if-eqz p2, :cond_a

    const/4 v0, 0x2

    :goto_3
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private setSignalState(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateAnimation()V
    .registers 4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    :goto_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_e

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_17
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1ee

    const/16 v22, 0x1

    :goto_9
    if-eqz v22, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x3daaaaab

    mul-float v1, v1, v25

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    move/from16 v0, v23

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v20, v23

    move/from16 v0, v23

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f2

    const v1, 0x3f155556

    mul-float v17, v1, v25

    const v1, 0x3e2aaaab

    mul-float v16, v1, v25

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float v6, v1, v20

    const v1, 0x3d2aaaab

    mul-float v18, v1, v20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move/from16 v0, v17

    neg-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v16

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v18

    add-float v19, v1, v6

    sub-float v1, v25, v23

    sub-float v4, v1, v6

    sub-float v1, v20, v23

    sub-float v5, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/4 v7, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v10, v4, v19

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v19

    sub-float v10, v4, v1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    :cond_11a
    :goto_11a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22d

    const v1, 0x3daaaaab

    mul-float v17, v1, v20

    sget v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    mul-float v15, v17, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    add-float v3, v23, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    add-float v2, v23, v15

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_186
    :goto_186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float v2, v2, v25

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v7, 0x0

    aget-object v3, v3, v7

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v3, v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v21, 0x1

    :goto_1cb
    sget-object v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    array-length v1, v1

    move/from16 v0, v21

    if-ge v0, v1, :cond_2aa

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float v2, v2, v25

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v3, v3, v21

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v3, v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_1cb

    :cond_1ee
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_1f2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11a

    const v1, 0x3ea88889

    mul-float v14, v1, v25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    neg-float v3, v14

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_11a

    :cond_22d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_25b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    move/from16 v0, v20

    float-to-int v2, v0

    move/from16 v0, v25

    float-to-int v3, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_186

    :cond_25b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_186

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->calcFit(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v23

    sub-float v2, v25, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move/from16 v0, v24

    int-to-float v1, v0

    add-float v10, v23, v1

    sub-float v11, v20, v23

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v8, v23

    move/from16 v9, v23

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_186

    :cond_2aa
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2b7
    if-eqz v22, :cond_2bc

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2bc
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 4

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getNumLevels(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setNumLevels(I)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setSignalState(I)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLevel(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    if-eq v0, v1, :cond_1b

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setIntrinsicSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return-void
.end method

.method public setNumLevels(I)V
    .registers 4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    return-void

    :cond_8
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
