.class Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;
    }
.end annotation


# instance fields
.field mMutated:Z

.field mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    invoke-direct {v0, p2, p3}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_26

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t draw with translucent alpha and color filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->getConstantState()Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mMutated:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mMutated:Z

    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;-><init>(Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    :cond_10
    return-object p0
.end method

.method public setAlpha(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_17

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->invalidateSelf()V

    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->mState:Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->invalidateSelf()V

    return-void
.end method
