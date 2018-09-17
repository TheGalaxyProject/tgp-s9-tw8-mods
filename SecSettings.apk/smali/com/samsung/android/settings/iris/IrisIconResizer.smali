.class public Lcom/samsung/android/settings/iris/IrisIconResizer;
.super Ljava/lang/Object;
.source "IrisIconResizer.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mIconHeight:I

.field private mIconWidth:I

.field private final mOldBounds:Landroid/graphics/Rect;

.field private mScreenIsLarge:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    iput v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mScreenIsLarge:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mOldBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mCanvas:Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x2

    invoke-direct {v5, v7, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07049f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    const v4, 0x7f07049d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v4, 0xf

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4d

    if-ne v1, v7, :cond_6c

    :cond_4d
    :goto_4d
    iput-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mScreenIsLarge:Z

    const-string/jumbo v2, "IconResizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenIsLarge : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mScreenIsLarge:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6c
    move v2, v3

    goto :goto_4d
.end method


# virtual methods
.method public createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 16

    const/4 v13, 0x0

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    instance-of v11, p1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v11, :cond_1a

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1a
    if-lez v8, :cond_71

    if-lez v2, :cond_71

    if-lt v8, v4, :cond_22

    if-ge v2, v3, :cond_7b

    :cond_22
    int-to-float v11, v4

    int-to-float v12, v3

    div-float v6, v11, v12

    if-le v4, v3, :cond_72

    int-to-float v11, v8

    div-float/2addr v11, v6

    float-to-int v2, v11

    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_78

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_34
    iget v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    iget v12, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    sub-int/2addr v11, v8

    div-int/lit8 v9, v11, 0x2

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    sub-int/2addr v11, v2

    div-int/lit8 v10, v11, 0x2

    add-int v11, v9, v8

    add-int v12, v10, v2

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_71
    :goto_71
    return-object p1

    :cond_72
    if-le v3, v4, :cond_2b

    int-to-float v11, v2

    mul-float/2addr v11, v6

    float-to-int v8, v11

    goto :goto_2b

    :cond_78
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_34

    :cond_7b
    if-ge v4, v8, :cond_71

    if-ge v3, v2, :cond_71

    move v4, v8

    move v3, v2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    iget v12, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    invoke-static {v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int v11, v8, v8

    div-int/lit8 v9, v11, 0x2

    sub-int v11, v2, v2

    div-int/lit8 v10, v11, 0x2

    add-int v11, v9, v8

    add-int v12, v10, v2

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p1, v11, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_71
.end method

.method public setIconSize(II)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconWidth:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisIconResizer;->mIconHeight:I

    return-void
.end method