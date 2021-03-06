.class public Lcom/android/systemui/wallpaper/theme/view/LeafView;
.super Landroid/view/View;
.source "LeafView.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLeafImageId:[I

.field private mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

.field private mLeafSizeScale:[F

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x23

    sput v0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    const v1, 0x7f0803ba

    const v2, 0x7f0803bb

    const v3, 0x7f0803bc

    const v4, 0x7f0803bd

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/wallpaper/theme/view/LeafView;->MAX_POOL_SIZE:I

    new-array v1, v1, [Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    const/4 v0, 0x0

    :goto_37
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    array-length v1, v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_48
    return-void

    nop

    :array_4a
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/view/LeafView;->invalidate()V

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v2

    :goto_c
    if-ge v3, v5, :cond_62

    aget-object v1, v4, v3

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget v6, v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    iget v7, v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    iget v8, v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/view/LeafView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    iget v7, v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    iget v7, v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    invoke-static {v7, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->next()V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_62
    return-void
.end method

.method public screenTurnedOff()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/view/LeafView;->invalidate()V

    return-void
.end method
