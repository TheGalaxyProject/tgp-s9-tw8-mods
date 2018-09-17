.class public Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;
.super Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.source "OpenThemeSpriteView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mIsTop:Z

.field protected mSprites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/wallpaper/theme/particle/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/theme/OpenThemeUtil;->loadBackgroundBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mIsTop:Z

    if-eqz v2, :cond_24

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_b
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->onUpdate()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->draw(Landroid/graphics/Canvas;)V

    goto :goto_11

    :cond_24
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_2b
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->onDetachedFromWindow()V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_f
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->clear()V

    goto :goto_15

    :cond_25
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ondetach2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
