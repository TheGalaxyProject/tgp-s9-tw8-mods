.class public Lcom/android/systemui/wallpaper/theme/view/FrameImageView;
.super Landroid/widget/ImageView;
.source "FrameImageView.java"


# instance fields
.field public mApkContext:Landroid/content/Context;

.field public mImageSetIds:[I

.field public mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mUsed:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mUsed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setApkContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkContext:Landroid/content/Context;

    return-void
.end method

.method public setImageResource(I)V
    .registers 7

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_d} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :catch_13
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_d

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_d
.end method
